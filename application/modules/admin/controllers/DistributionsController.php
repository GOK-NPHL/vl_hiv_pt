<?php

class Admin_DistributionsController extends Zend_Controller_Action {

    public function init() {
        $ajaxContext = $this->_helper->getHelper('AjaxContext');
        $ajaxContext->addActionContext('index', 'html')
                ->addActionContext('view-shipment', 'html')
                ->addActionContext('ship-distribution', 'html')
                ->initContext();
        $this->_helper->layout()->pageName = 'manageMenu';
    }

    public function indexAction() {
        if ($this->getRequest()->isPost()) {
            $params = $this->_getAllParams();
            $distributionService = new Application_Service_Distribution();
            $distributionService->getAllDistributions($params);
        } else if ($this->_hasParam('searchString')) {
            $this->view->searchData = $this->_getParam('searchString');
        }
    }

    public function getAllDataManagers() {
        $sysAdmin = new Application_Model_DbTable_Participants();

        $systemAdmins = $sysAdmin->AllEnrolledParticipants();
        $emails = array();
        foreach ($systemAdmins as $key => $value) {
            array_push($emails, $value['email']);
        }
        return $emails;
    }

    public function getVlEidDataManagers(){
        $sysAdmin = new Application_Model_DbTable_Participants();

        $systemAdmins = $sysAdmin->AllVlEIdDataManagers();
        $emails = array();
        foreach ($systemAdmins as $key => $value) {
            array_push($emails, $value['email']);
        }
        return $emails;
    }

    public function addAction() {
        $distributionService = new Application_Service_Distribution();

        if ($this->getRequest()->isPost()) {
            $params = $this->_getAllParams();

            $distributionService->addDistribution($params, $this->getVlEidDataManagers());
            $this->_redirect("/admin/distributions");
        }

        $this->view->distributionDates = $distributionService->getDistributionDates();

        $checklists = [];

        $readinessChecklist = new Application_Model_DbTable_ReadinessChecklist();

        
        foreach ($readinessChecklist->getList() as $checklist) {
            // filter out deleted checklists
            if ($checklist['deleted_at'] != null) {
                continue;
            }
            $checklists[] = $readinessChecklist->getReadinessChecklistDetails($checklist['id']);
        }

        $this->view->readinessChecklists = $checklists;
    }

    public function readinessAction(){

        $roundID = (int) $this->_getParam('roundid');
        
        $distributionService = new Application_Service_Distribution();
        $this->view->round = $round = $distributionService->getDistribution($roundID);

        $checklistID = $round['readiness_checklist_id'];

        $readinessChecklistService = new Application_Service_ReadinessChecklist();
        $this->view->readinessChecklists = $readinessChecklistService->getReadinessChecklistDetails($checklistID);
    }

    public function viewShipmentAction() {
        $this->_helper->layout()->disableLayout();
        if ($this->_hasParam('id')) {

            $id = (int) $this->_getParam('id');
            $distributionService = new Application_Service_Distribution();
            $this->view->shipments = $distributionService->getShipments($id);
        } else {
            
        }
    }

    public function shipDistributionAction() {
        if ($this->_hasParam('did')) {
            $id = (int) base64_decode($this->_getParam('did'));
            $distributionService = new Application_Service_Distribution();
            $this->view->message = $distributionService->shipDistribution($id);
        } else {
            $this->view->message = "Unable to ship. Please try again later or contact system admin for help";
        }
    }

    public function finalizeDistributionAction() {
        if ($this->_hasParam('did')) {
            $id = (int) base64_decode($this->_getParam('did'));
            $distributionService = new Application_Service_Distribution();
            $this->view->message = $distributionService->updateDistributionStatus($id, 'finalized');
        } else {
            $this->view->message = "Unable to close PT Survey. Please contact your system admin for help.";
        }
    }

    public function editAction() {
        $checklists = [];

        $readinessChecklist = new Application_Model_DbTable_ReadinessChecklist();

        foreach ($readinessChecklist->getList() as $checklist) {
            $checklists[] = $readinessChecklist->getReadinessChecklistDetails($checklist['id']);
        }

        $this->view->readinessChecklists = $checklists;

        $distributionService = new Application_Service_Distribution();
        if ($this->getRequest()->isPost()) {
            $params = $this->_getAllParams();
            $distributionService->updateDistribution($params);
            $this->_redirect("/admin/distributions");
        } else if ($this->_hasParam('d8s5_8d')) {
            $id = (int) base64_decode($this->_getParam('d8s5_8d'));
            $this->view->result = $distributionService->getDistribution($id);
            $this->view->distributionDates = $distributionService->getDistributionDates();
            if ($this->_hasParam('5h8pp3t')) {

                $this->view->fromStatus = 'shipped';
            }
        } else {
            $this->_redirect('admin/distributions/index');
        }
    }

    public function testpartAction() {
        $distributionService = new Application_Service_Distribution();
        var_dump($distributionService->shipDistribution(1));
        exit;
    }

    public function cyclePerformanceSummaryAction(){

        $this->_helper->layout()->pageName = 'report';

        $parameters = $this->_getAllParams();
        $participantService = new Application_Service_Participants();
        
        $this->view->responses = $participantService->getParticipantCycleResponses($parameters);

        $platformService = new Application_Service_Platform();
        $this->view->platforms = $platformService->getPlatforms();

        $surveyService = new Application_Service_Distribution();
        $this->view->surveys = $surveyService->getDistributions();

        if ($this->_hasParam('d'))$this->view->chosenSurvey = $this->_getParam('d');
        if ($this->_hasParam('pf'))$this->view->chosenPlatform = $this->_getParam('pf');
    }

}
