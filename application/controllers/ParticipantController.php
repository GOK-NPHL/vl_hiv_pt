<?php

class ParticipantController extends Zend_Controller_Action {

    private $noOfItems = 10;

    public function init() {
        $ajaxContext = $this->_helper->getHelper('AjaxContext');
        $ajaxContext->addActionContext('index', 'html')
                ->addActionContext('defaulted-schemes', 'html')
                ->addActionContext('current-schemes', 'html')
                ->addActionContext('all-schemes', 'html')
                ->addActionContext('report', 'html')
                ->addActionContext('summary-report', 'html')
                ->addActionContext('shipment-report', 'html')
                ->addActionContext('add-qc', 'html')
                ->addActionContext('scheme', 'html')
                ->initContext();
    }

    public function indexAction() {
        if ($this->getRequest()->isPost()) {
            //SHIPMENT_OVERVIEW
            $params = $this->_getAllParams();
            $shipmentService = new Application_Service_Shipments();
            $shipmentService->getShipmentOverview($params);
        } else {
            $this->_redirect("/participant/dashboard");
        }
    }

    public function dashboardAction() {
        $this->_helper->layout()->activeMenu = 'dashboard';
        $authNameSpace = new Zend_Session_Namespace('datamanagers');
        $scheme = new Application_Service_Schemes();
        $this->view->schemes = $scheme->getAllSchemes();
        $this->view->authNameSpace = $authNameSpace;
    }

    public function reportAction() {
        $this->_helper->layout()->activeMenu = 'view-reports';
        $this->_helper->layout()->activeSubMenu = 'individual-reports';
        if ($this->getRequest()->isPost()) {
            $params = $this->_getAllParams();
            $shipmentService = new Application_Service_Shipments();
            $shipmentService->getindividualReport($params);
        }
        $scheme = new Application_Service_Schemes();
        $this->view->schemes = $scheme->getAllSchemes();

        $platformService = new Application_Service_Platform();
        $this->view->platforms = $platformService->getPlatforms();

        $surveyService = new Application_Service_Distribution();
        $this->view->surveys = $surveyService->getDistributions();

        if ($this->_hasParam('pt_survey'))$this->view->chosenSurvey = $this->_getParam('pt_survey');
        if ($this->_hasParam('pt_platform'))$this->view->chosenPlatform = $this->_getParam('pt_platform');
        if ($this->_hasParam('pt_assay'))$this->view->chosenAssay = $this->_getParam('pt_assay');
    }

    public function userInfoAction() {
        $this->_helper->layout()->activeMenu = 'my-account';
        $this->_helper->layout()->activeSubMenu = 'user-info';
        $userService = new Application_Service_DataManagers();
        if ($this->_request->isPost()) {
            $params = $this->_request->getPost();
            $userService->updateUser($params);
        }
        // whether it is a GET or POST request, we always show the user info
        $this->view->rsUser = $userService->getUserInfo();
    }

    public function testersAction() {
        $this->_helper->layout()->activeMenu = 'my-account';
        $this->_helper->layout()->activeSubMenu = 'testers';
        $dbUsersProfile = new Application_Service_Participants();
        $this->view->rsUsersProfile = $dbUsersProfile->getUsersParticipants();
        $authNameSpace = new Zend_Session_Namespace('datamanagers');
        if ($authNameSpace->view_only_access == 'yes') {
            $this->view->isEditable = false;
        } else {
            $this->view->isEditable = true;
        }
    }
    
    public function schemeAction() {
        $authNameSpace = new Zend_Session_Namespace('datamanagers');
        $dbUsersProfile = new Application_Service_Participants();
        if ($this->getRequest()->isPost()) {
            $parameters = $this->_getAllParams();
            $dbUsersProfile->getParticipantSchemesBySchemeId($parameters);
        } else {
            $this->_helper->layout()->activeMenu = 'my-account';
            $this->_helper->layout()->activeSubMenu = 'scheme';
            $this->view->participantSchemes = $dbUsersProfile->getParticipantSchemes($authNameSpace->dm_id);
        }
    }

    public function passwordAction() {
        $this->_helper->layout()->activeMenu = 'my-account';
        $this->_helper->layout()->activeSubMenu = 'change-password';
        if ($this->getRequest()->isPost()) {
            $user = new Application_Service_DataManagers();
            $newPassword = $this->getRequest()->getPost('newpassword');
            $oldPassword = $this->getRequest()->getPost('oldpassword');
            $response = $user->changePassword($oldPassword, $newPassword);

            if ($response) {
                $this->_redirect('/participant/current-schemes');
            }
        }
    }

    public function addAction() {
        $this->_helper->layout()->activeMenu = 'my-account';
        $this->_helper->layout()->activeSubMenu = 'testers';
        $authNameSpace = new Zend_Session_Namespace('datamanagers');
        $participantService = new Application_Service_Participants();
        $commonService = new Application_Service_Common();
        if ($this->getRequest()->isPost()) {
            $data = $this->getRequest()->getPost();
            $participantService->addParticipantForDataManager($data);
            $this->_redirect('/participant/testers');
        }

        $this->view->affiliates = $participantService->getAffiliateList();
        $this->view->networks = $participantService->getNetworkTierList();
        $scheme = new Application_Service_VlAssay();
        $this->view->assay = $scheme->getAllVlAssays();
        $this->view->countriesList = $commonService->getcountriesList();
        $this->view->siteType = $participantService->getSiteTypeList();
        $this->view->uniqueid = $commonService->generate_id();
        $this->view->institute = $authNameSpace->institute;
        $this->view->schemeList = $commonService->getSchemesList();
        if ($authNameSpace->view_only_access == 'yes') {
            $this->view->isEditable = false;
        } else {
            $this->view->isEditable = true;
        }
    }

    public function defaultedSchemesAction() {
        $this->_helper->layout()->activeMenu = 'defaulted-schemes';
        if ($this->getRequest()->isPost()) {
            //SHIPMENT_DEFAULTED
            $params = $this->_getAllParams();
            $shipmentService = new Application_Service_Shipments();
            $shipmentService->getShipmentDefault($params);
        }
    }

    public function currentSchemesAction() {
        $this->_helper->layout()->activeMenu = 'current-schemes';
        if ($this->getRequest()->isPost()) {
            //SHIPMENT_CURRENT
            $params = $this->_getAllParams();
            $shipmentService = new Application_Service_Shipments();
            $shipmentService->getShipmentCurrent($params);
        }
    }

    public function allSchemesAction() {
        $this->_helper->layout()->activeMenu = 'all-schemes';
        if ($this->getRequest()->isPost()) {
            //SHIPMENT_ALL
            $params = $this->_getAllParams();
            $shipmentService = new Application_Service_Shipments();
            $shipmentService->getShipmentAll($params);
        }
        $commonService = new Application_Service_Common();
        $this->view->globalQcAccess = $commonService->getConfig('qc_access');
    }

    public function downloadAction() {
        $this->_helper->layout()->disableLayout();
        if ($this->_hasParam('d92nl9d8d')) {
            $id = (int) base64_decode($this->_getParam('d92nl9d8d'));
            $db = Zend_Db_Table_Abstract::getDefaultAdapter();
            $this->view->result = $db->fetchRow($db->select()->from(array('spm' => 'shipment_participant_map'), array('spm.map_id'))
                            ->join(array('s' => 'shipment'), 's.shipment_id=spm.shipment_id', array('s.shipment_code'))
                            ->join(array('p' => 'participant'), 'p.participant_id=spm.participant_id', array('p.first_name', 'p.last_name'))
                            ->where("spm.map_id = ?", $id));
        } else {
            $this->_redirect("/participant/dashboard");
        }
    }

    public function shipmentReportAction() {
        if ($this->getRequest()->isPost()) {
            //SHIPMENT_ALL
            $params = $this->_getAllParams();
            $shipmentService = new Application_Service_Shipments();
            $shipmentService->getShipmentReport($params);
        }
    }

    public function summaryReportAction() {
        $this->_helper->layout()->activeMenu = 'view-reports';
        $this->_helper->layout()->activeSubMenu = 'summary-reports';
        if ($this->getRequest()->isPost()) {
            $params = $this->_getAllParams();
            $shipmentService = new Application_Service_Shipments();
            $shipmentService->getSummaryReport($params);
        }
        $scheme = new Application_Service_Schemes();
        $this->view->schemes = $scheme->getAllSchemes();
    }

    public function addQcAction() {
        if ($this->getRequest()->isPost()) {
            $params = $this->_getAllParams();
            $shipmentService = new Application_Service_Shipments();
            $this->view->result = $shipmentService->addQcDetails($params);
        }
    }

    public function uploadsAction() {
        $this->_helper->layout()->activeMenu = 'view-reports';
        $this->_helper->layout()->activeSubMenu = 'uploads';

        $participantService = new Application_Service_Participants();
        $this->view->responses = $participantService->getUploadedReports($this->_getAllParams());
    }

    public function readinessAction() {
        $authNameSpace = new Zend_Session_Namespace('datamanagers');
        $pID = $authNameSpace->UserID;
        $participantService = new Application_Service_Participants();
        $t = $participantService->getParticipantDetail($pID);
        $commonService = new Application_Service_Common();
        foreach ($t as $k) {
            $id = $k["participant_id"];
        }
        $this->view->roundsList = $commonService->getUnshippedDistributions();
        $this->view->participantId = $id;
    }

    public function addReadinessAction() {
        if ($this->getRequest()->isPost()) {
            $params = $this->getRequest()->getPost();
            $partnerService = new Application_Model_DbTable_Readiness();
            $partnerService->addReadiness($params);
            $this->_redirect("/participant/readinesslist");
        }
    }

    public function readinesslistAction() {
        if ($this->getRequest()->isPost()) {
            $params = $this->_getAllParams();
            $shipmentService = new Application_Model_DbTable_Readiness();
            $shipmentService->fetchAllReadiness($params);
        }
    }

    public function individualPerformanceAction(){

        $this->_helper->layout()->pageName = 'view-reports';
  
        $parameters = $this->_getAllParams();
        $mapID= $this->getRequest()->getParam('mid');
        $platformID =$this->getRequest()->getParam('pfid');
        $assayID =$this->getRequest()->getParam('aid');

        $shipmentParticipantMapDb = new Application_Model_DbTable_ShipmentParticipantMap();
        $spm = $shipmentParticipantMapDb->fetchRow($shipmentParticipantMapDb->select()->from('shipment_participant_map')->where("map_id=$mapID"));
        $participantID = $spm['participant_id'];
        $shipmentID = $spm['shipment_id'];

        $platformService = new Application_Service_Platform();
        $platform = $platformService->getPlatform($platformID);
        $this->view->platform = $platform;
        $platform_nm = $platform['PlatformName'];

        $participantService = new Application_Service_Participants();
        $this->view->participant = $participantService->getParticipantDetails($participantID);

        $schemeService = new Application_Service_Schemes();
        $allSamples = $schemeService->getVlSamples($shipmentID, $participantID, $platformID, $assayID);
        
        $this->view->allSamples = $allSamples;
        $this->view->mid = $mapID;
        $distributionDb = new Application_Model_DbTable_Distribution();
        $performanceStats = $distributionDb->getPerformanceStats($shipmentID, $platformID);
        $this->view->performanceStats = $performanceStats;
        // < calculate overall score
        $overallScore = 0;
        foreach ($allSamples as $sample) {
            //
            $zscore2 = 0.00;
            $entry = $sample['reported_viral_load'];
            $sdev = $performanceStats[$sample['sample_id']]['sdev_rvl'];
            $mean = $performanceStats[$sample['sample_id']]['average_rvl'];
            if ($performanceStats[$sample['sample_id']]['sdev_rvl'] > 0) {
                $zscore2 = ($entry - $mean) / $sdev;
            }
            if (strpos($sample['reported_viral_load'], '#') !== false){
                $overallScore+= 0;
            } else {
                if ($zscore2 < 2) {
                    $overallScore += 100;
                }
                if ($zscore2 >= 2 && $zscore2 < 3) {
                    $overallScore+= 80;
                }
                if ($zscore2 >= 3) {
                    $overallScore+= 0;
                }
            }
            //
        }
        $this->view->overallScore = ($overallScore/count($allSamples))??0;
        // calculate overall score />

        ///////// ----------------------------
        ///////// ----------------------------
        $distributionResponseSummary = $distributionDb->getDistributionResponseSummary([
            'shipment_id' => $shipmentID,
        ]);
        $this->view->distributionResponseSummary = $distributionResponseSummary;

        // summary
        $summary_stats = [
            'enrolled' => 0,
            'participated' => 0,
            'satisfactory' => 0,
            'unsatisfactory' => 0,
        ];
        if (isset($distributionResponseSummary['aaData']) && !empty($distributionResponseSummary['aaData']) && $shipmentID) {

            $shipment_summary = array_filter($distributionResponseSummary['aaData'], function ($item) use ($shipmentID, $platform_nm) {
                return ($item['shipment_id'] == $shipmentID && $item['platform_name'] == $platform_nm);
            });
            // //enrolled
            $summary_enrolled = array_unique(
                array_column($shipment_summary, 'lab_code')
            );
            $summary_stats['enrolled'] = count($summary_enrolled);

            // participated
            $summary_participated = array_unique(
                array_column(
                    array_filter($shipment_summary, function ($item) {
                        return $item['evaluated'] == 'yes';
                    }),
                    'lab_code'
                )
            );
            $summary_stats['participated'] = count($summary_participated);


            // for each item in the summary, aggregate the stats for each lab
            foreach ($summary_participated as $lab_code) {
                $lab_summary = array_filter($shipment_summary, function ($item) use ($lab_code) {
                    return $item['lab_code'] == $lab_code;
                });
                $array_score = array_column($lab_summary, 'score');

                // if the count of 'Acceptable' is equal to the count of the lab summary, then the lab is satisfactory
                if (count(array_filter($array_score, function ($item) {
                    return $item == 'Acceptable';
                })) == count($lab_summary)) {
                    $summary_stats['satisfactory']++;
                } else {
                    $summary_stats['unsatisfactory']++;
                }
            }
        }
        $this->view->summaryStats = $summary_stats ?? [];
        ///////// ----------------------------
        ///////// ----------------------------
        
        $this->view->allNotTestedReason =$schemeService->getVlNotTestedReasons();

        $shipment = $schemeService->getShipmentData($shipmentID, $participantID, $platformID, $assayID);
        $shipment['attributes'] = json_decode($shipment['attributes'],true);
        $this->view->shipment = $shipment;

        $distributionService = new Application_Service_Distribution();
        $this->view->distribution = $distributionService->getDistribution($shipment['distribution_id']);

        $platformService = new Application_Service_Platform();
        $this->view->platform = $platformService->getPlatform($platformID);

        $this->view->shipmentID = $shipmentID;
        $this->view->participantId = $participantID;
        $this->view->assayID = $assayID;
        $this->view->platformID = $platformID;
    
    }
    

    public function individualPerformanceReportAction()
    {

        $this->_helper->layout()->pageName = 'report';

        $mapID = $this->getRequest()->getParam('mid');

        $shipmentParticipantMapDb = new Application_Model_DbTable_ShipmentParticipantMap();
        $spm = $shipmentParticipantMapDb->fetchRow($shipmentParticipantMapDb->select()->from('shipment_participant_map')->where("map_id=$mapID"));

        $participantID = $spm['participant_id'];
        $shipmentID = $spm['shipment_id'];
        $assayID = $spm['assay_id'];
        $platformID = $spm['platform_id'];

        $participantService = new Application_Service_Participants();
        $this->view->participant = $participantService->getParticipantDetails($participantID);

        // append lab phone number
        $this->view->participant['lab_phone'] = $participantService->getLabPhoneNumber($participantID);

        $schemeService = new Application_Service_Schemes();
        $allSamples = $schemeService->getSamples($mapID);
        $this->view->allSamples = $allSamples;

        $this->view->allNotTestedReason = $schemeService->getVlNotTestedReasons();

        $shipment = $schemeService->getShipmentData($shipmentID, $participantID, $platformID, $assayID);
        $shipment['attributes'] = json_decode($shipment['attributes'], true);
        $this->view->shipment = $shipment;


        $platformService = new Application_Service_Platform();
        $this->view->platform = $platformService->getPlatform($platformID);

        $distributionDb = new Application_Model_DbTable_Distribution();
        $performanceStats = $distributionDb->getPerformanceStats($shipmentID, $platformID);
        $this->view->performanceStats = $performanceStats;

        $this->view->distributionResponseSummary = $distributionDb->getDistributionResponseSummary($shipment['distribution_id']);

        // < calculate overall score
        $overallScore = 0;
        foreach ($allSamples as $sample) {
            //
            $zscore2 = 0.00;
            $entry = $sample['reported_viral_load'];
            $sdev = $performanceStats[$sample['sample_id']]['sdev_rvl'];
            $mean = $performanceStats[$sample['sample_id']]['average_rvl'];
            if ($performanceStats[$sample['sample_id']]['sdev_rvl'] > 0) {
                $zscore2 = ($entry - $mean) / $sdev;
            }
            if (strpos($sample['reported_viral_load'], '#') !== false){
                $overallScore += 0;
            } else {
                if ($zscore2 < 2) {
                    $overallScore += 100;
                }
                if ($zscore2 >= 2 && $zscore2 < 3) {
                    $overallScore+= 80;
                }
                if ($zscore2 >= 3) {
                    $overallScore+= 0;
                }
            }
            //
        }
        $this->view->overallScore = ($overallScore/count($allSamples))??0;
        // calculate overall score />

        // get performance summary for the shipment
        // $this->view->performanceSummary = $distributionDb->getPerformanceSummary($shipmentID);

        $this->view->mid = $mapID;
        $this->view->shipmentID = $shipmentID;
        $this->view->participantId = $participantID;
        $this->view->platformID = $platformID;
    }

    public function reportDownloadAction(){

        $reportUploadModel = new Application_Model_DbTable_ReportUpload();

        if($this->_hasParam('file')){
            $reportUploadModel->downloadReport($this->_getParam('file'));
        }
    }

}
