<?php

class Application_Model_DbTable_ResponseVl extends Zend_Db_Table_Abstract
{

    protected $_name = 'response_result_vl';
    protected $_primary = array('shipment_map_id','sample_id');

    public function updateResults($params){
        $sampleIds = $params['sampleId'];
        error_log(json_encode($params));
        foreach($sampleIds as $key => $sampleId){
            $res = $this->fetchRow("shipment_map_id = ".$params['smid'] . " and sample_id = ".$sampleId );
            $authNameSpace = new Zend_Session_Namespace('datamanagers');
            //Set tnd value if Yes
            $tnd = NULL;
            if(isset($params['isPtTestNotPerformed']) && $params['isPtTestNotPerformed']== 'yes'){
                $params['vlResult'][$key] = '';
            }else if(isset($params['tndReference'][$key]) && $params['tndReference'][$key]== 'yes'){
                $tnd = 'yes';
                $params['vlResult'][$key] = '0.00'; 
            }
            if($res == null || count($res) == 0){
                $this->insert(array(
                                    'shipment_map_id'=>$params['smid'],
                                    'sample_id'=>$sampleId,
                                    'reported_viral_load'=>$params['vlResult'][$key],
                                    'is_tnd'=>$tnd,
                                    'created_by' => $authNameSpace->dm_id,
                                    'created_on' => new Zend_Db_Expr('now()')
                                   ));                
            }else{
                $this->update(array(
                                    'shipment_map_id'=>$params['smid'],
                                    'sample_id'=>$sampleId,
                                    'reported_viral_load'=>$params['vlResult'][$key],
                                    'is_tnd'=>$tnd,
                                    'updated_by' => $authNameSpace->UserID,
                                    'updated_on' => new Zend_Db_Expr('now()')
                                   ), "shipment_map_id = ".$params['smid'] . " and sample_id = ".$sampleId );
                
            }

        }
    }

    public function updateEvaluation($params){
        $authNameSpace = new Zend_Session_Namespace('administrators');

        $sampleIds = $params['samples'];
        $res = $this->fetchAll("shipment_map_id = ".$params['mid']);

        Pt_Commons_General::log2File("Updating Evaluation (Expert) by USERID [".$authNameSpace->admin_id."]\nFROM: ".json_encode($res)."\nTO: ".json_encode($params));

        $shipmentScore = 0;
        foreach($sampleIds as $key => $sampleId){
            $shipmentScore += intval($params['expertScore_'.$sampleId]);
            $this->update(
                array(
                    'calculated_score'=>round(intval($params['expertScore_'.$sampleId])/100,1),
                   ), 
                "shipment_map_id = ".$params['mid'] . " AND sample_id = $sampleId"
                );
        }

        Pt_Commons_General::log2File("Updating Evaluation (Expert) by USERID [".$authNameSpace->admin_id."]\n New Shipment Score = ".round($shipmentScore/count($sampleIds)));

        $shipmentPartipantMap = new Application_Model_DbTable_ShipmentParticipantMap();
        $shipmentPartipantMap->update(array('shipment_score' => round($shipmentScore/count($sampleIds))), "map_id = ".$params['mid']);

    }
}
