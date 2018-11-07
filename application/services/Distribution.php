<?php

class Application_Service_Distribution {

    public function getAllDistributions($params) {
        $distributionDb = new Application_Model_DbTable_Distribution();
        return $distributionDb->getAllDistributions($params);
    }

    public function addDistribution($params, $labEmail = null) {
        $distributionDb = new Application_Model_DbTable_Distribution();
        return $distributionDb->addDistribution($params, $labEmail);
    }

    public function getDistribution($did) {
        $distributionDb = new Application_Model_DbTable_Distribution();
        return $distributionDb->getDistribution($did);
    }

    public function updateDistribution($params) {
        $distributionDb = new Application_Model_DbTable_Distribution();
        return $distributionDb->updateDistribution($params);
    }

    public function getDistributionDates() {
        $distributionDb = new Application_Model_DbTable_Distribution();
        return $distributionDb->getDistributionDates();
    }

    public function getShipments($distroId) {
        $db = Zend_Db_Table_Abstract::getDefaultAdapter();
        $sql = $db->select()->from(array('s' => 'shipment'))
                ->where("distribution_id = ?", $distroId);

        return $db->fetchAll($sql);
    }

    public function getUnshippedDistributions() {
        $distributionDb = new Application_Model_DbTable_Distribution();
        return $distributionDb->getUnshippedDistributions();
    }

    public function updateDistributionStatus($distributionId, $status) {
        $distributionDb = new Application_Model_DbTable_Distribution();
        return $distributionDb->updateDistributionStatus($distributionId, $status);
    }

    public function returnshippingMessage($shipmentName) {
        $common = new Application_Service_Common();
                
               $config = new Zend_Config_Ini($common->configFileUrl(), APPLICATION_ENV);
        $message = ""
                . "This to notify you that your flow cytometry EQA panel (".$shipmentName.") from the NHRL proficiency testing programme is en route to your facility.".
                " Please expect delivery within 1-2 working days.<br>".
                
                
                
                "Kindly acknowledge receipt and the condition of the panel immediately it is delivered using the link below:".
                "<br><a href='".$common->baseUrl().'/participant/current-schemes'."' style='padding:14px;width:auto;".
                       "text-decoration:none;display:block;background-color:purple;margin:8px;color:white;border-radius:10px;'>".
                      "NHRL Proficiency Testing Programme:<br> Viral Load/EID receipt</a><br>"
                ."";

        
        
        return $message;
    }

    public function getShippedLabList($shipmentId) {
        try {
            $shipmentDb = new Application_Model_DbTable_Shipments();
            $participantData = $shipmentDb->returnEnrolledLabsForMail($shipmentId);
            $email = array();
            $shippingCode = '';
            if (count($participantData) > 0) {
                foreach ($participantData as $key => $value) {
                    array_push($email, $value['email']);
                    $shippingCode = $value['shipment_code'];
                }

                return array('sendTo' => $email, 'shipment_code' => $shippingCode);
            }
            return false;
        } catch (Exception $e) {
            error_log($e->getMessage());
            error_log($e->getTraceAsString());
            return "Unable to ship. Please try again later or contact system admin for help";
        }
    }

    public function sendEmailToParticipantsForShipmentDispatch($shipmentId) {
        $shipmentDb = new Application_Model_DbTable_Shipments();

        $sendInfo = $this->getShippedLabList($shipmentId);
        if ($sendInfo === false){
            return;
        }
        $message = $this->returnshippingMessage($sendInfo['shipment_code']);
        $common = new Application_Service_Common();

        $common->sendGeneralEmail($sendInfo['sendTo'], $message);
    }

    public function shipDistribution($distributionId) {
        $authNameSpace = new Zend_Session_Namespace('administrators');
        $db = Zend_Db_Table_Abstract::getDefaultAdapter();
        $db->beginTransaction();

        try {
            $shipmentParticipantsDb = new Application_Model_DbTable_ShipmentParticipantMap();

            $query = $db->select()->from(array('s' => 'shipment'))
                        ->join(array('d' => 'distributions'), 's.distribution_id = d.distribution_id')
                        ->join(array('rcp' => 'readiness_checklist_participants'), 'd.readiness_checklist_survey_id = rcp.readiness_checklist_survey_id', array('participant_id'))
                        ->join(array('rcpp' => 'readiness_checklist_participant_platforms'), 'rcp.id = rcpp.readiness_checklist_participant_id', array('platform_id'))
                        ->where('d.distribution_id='.$distributionId)
                        ->where('rcpp.assay_id<=2') //Hack to get VL & EID only
                        ->where('rcp.status=2');//APPROVED

            $results = $db->fetchAll($query);

            foreach ($results as $result) {

                $data = array('shipment_id' => $result['shipment_id'],
                    'participant_id' => $result['participant_id'],
                    'platform_id' => $result['platform_id'],
                    'evaluation_status' => '19901190',
                    'created_by_admin' => $authNameSpace->admin_id,
                    "created_on_admin" => new Zend_Db_Expr('now()'));

                $shipmentParticipantsDb->insert($data);
            }

            $shipmentDb = new Application_Model_DbTable_Shipments();
            $shipmentDb->updateShipmentStatusByDistribution($distributionId, "shipped");

            $distributionDb = new Application_Model_DbTable_Distribution();
            $distributionDb->updateDistributionStatus($distributionId, "shipped");
            $this->sendEmailToParticipantsForShipmentDispatch($distributionId);
            $db->commit();

            return "PT Event shipped!";
        } catch (Exception $e) {
            $db->rollBack();
            error_log($e->getMessage());
            error_log($e->getTraceAsString());
            return "Unable to ship. Please try again later or contact system admin for help";
        }
    }

    public function getAllDistributionReports($parameters) {
        $distributionDb = new Application_Model_DbTable_Distribution();
        return $distributionDb->getAllDistributionReports($parameters);
    }

    public function getAllDistributionStatus() {
        $distributionDb = new Application_Model_DbTable_Distribution();
        return $distributionDb->getAllDistributionStatusDetails();
    }

}
