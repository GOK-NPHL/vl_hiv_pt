<?php

class Application_Model_DbTable_PlatformCategories extends Zend_Db_Table_Abstract
{

    protected $_name = 'platformcategories';

    // protected $_dependentTables = array('Application_Model_DbTable_Platforms');

    public function getAllPlatformCategories()
    {
        $sql = $this->select();
        return $this->fetchAll($sql);
    }


    public function fetchAllPlatformCategoryAdmin($parameters)
    {
        /* Array of database columns which should be read and sent back to DataTables. Use a space where
         * you want to insert a non-database field (for example a counter or static image)
         */

        $aColumns = array('CategoryName', 'status');
        $orderColumns = array('CategoryName', 'sort_order', 'status');

        /* Indexed column (used for fast and accurate table cardinality) */
        $sIndexColumn = $this->_primary;


        /*
         * Paging
         */
        $sLimit = "";
        if (isset($parameters['iDisplayStart']) && $parameters['iDisplayLength'] != '-1') {
            $sOffset = $parameters['iDisplayStart'];
            $sLimit = $parameters['iDisplayLength'];
        }

        /*
         * Ordering
         */
        $sOrder = "";
        if (isset($parameters['iSortCol_0'])) {
            $sOrder = "";
            for ($i = 0; $i < intval($parameters['iSortingCols']); $i++) {
                if ($parameters['bSortable_' . intval($parameters['iSortCol_' . $i])] == "true") {
                    $sOrder .= $orderColumns[intval($parameters['iSortCol_' . $i])] . "
				 	" . ($parameters['sSortDir_' . $i]) . ", ";
                }
            }

            $sOrder = substr_replace($sOrder, "", -2);
        }

        /*
         * Filtering
         * NOTE this does not match the built-in DataTables filtering which does it
         * word by word on any field. It's possible to do here, but concerned about efficiency
         * on very large tables, and MySQL's regex functionality is very limited
         */
        $sWhere = "";
        if (isset($parameters['sSearch']) && $parameters['sSearch'] != "") {
            $searchArray = explode(" ", $parameters['sSearch']);
            $sWhereSub = "";
            foreach ($searchArray as $search) {
                if ($sWhereSub == "") {
                    $sWhereSub .= "(";
                } else {
                    $sWhereSub .= " AND (";
                }
                $colSize = count($aColumns);

                for ($i = 0; $i < $colSize; $i++) {
                    if ($i < $colSize - 1) {
                        $sWhereSub .= $aColumns[$i] . " LIKE '%" . ($search) . "%' OR ";
                    } else {
                        $sWhereSub .= $aColumns[$i] . " LIKE '%" . ($search) . "%' ";
                    }
                }
                $sWhereSub .= ")";
            }
            $sWhere .= $sWhereSub;
        }

        /* Individual column filtering */
        for ($i = 0; $i < count($aColumns); $i++) {
            if (isset($parameters['bSearchable_' . $i]) && $parameters['bSearchable_' . $i] == "true" && $parameters['sSearch_' . $i] != '') {
                if ($sWhere == "") {
                    $sWhere .= $aColumns[$i] . " LIKE '%" . ($parameters['sSearch_' . $i]) . "%' ";
                } else {
                    $sWhere .= " AND " . $aColumns[$i] . " LIKE '%" . ($parameters['sSearch_' . $i]) . "%' ";
                }
            }
        }


        /*
         * SQL queries
         * Get data to display
         */

        $sQuery = $this->getAdapter()->select()->from(array('pt' => $this->_name));

        if (isset($sWhere) && $sWhere != "") {
            $sQuery = $sQuery->where($sWhere);
        }

        if (isset($sOrder) && $sOrder != "") {
            $sQuery = $sQuery->order($sOrder);
        }

        if (isset($sLimit) && isset($sOffset)) {
            $sQuery = $sQuery->limit($sLimit, $sOffset);
        }

        //error_log($sQuery);

        $rResult = $this->getAdapter()->fetchAll($sQuery);


        /* Data set length after filtering */
        $sQuery = $sQuery->reset(Zend_Db_Select::LIMIT_COUNT);
        $sQuery = $sQuery->reset(Zend_Db_Select::LIMIT_OFFSET);
        $aResultFilterTotal = $this->getAdapter()->fetchAll($sQuery);
        $iFilteredTotal = count($aResultFilterTotal);

        /* Total data set length */
        $sQuery = $this->getAdapter()->select()->from($this->_name, new Zend_Db_Expr("COUNT('" . $sIndexColumn . "')"));
        $aResultTotal = $this->getAdapter()->fetchCol($sQuery);
        $iTotal = $aResultTotal[0];

        /*
         * Output
         */
        $output = array(
            "sEcho" => intval($parameters['sEcho']),
            "iTotalRecords" => $iTotal,
            "iTotalDisplayRecords" => $iFilteredTotal,
            "aaData" => array()
        );

        $general = new Pt_Commons_General();
        foreach ($rResult as $aRow) {

            $row = array();
            $row[] = ucwords($aRow['CategoryName']);

            // $row[] = $aRow['status'] == 1 ? "Active" : "Inactive";
            $row[] = $aRow['status'] == 1 ? "Active" : "Inactive";
            $url = '<a href="/admin/platformcategories/edit/id/' . $aRow['ID'] . '" class="btn btn-warning btn-xs" style="margin-right: 2px;"><i class="icon-pencil"></i> Edit</a>';
            $url .= '<a href="/admin/platformcategories/delete/id/' . $aRow['ID'] . '" class="btn btn-danger btn-xs" style="margin-right: 2px;"><i class="icon-remove"></i> delete</a>';
            $row[] = $url;
            $output['aaData'][] = $row;
        }

        echo json_encode($output);
    }


    public function addPlatformCategories($params)
    {
        $authNameSpace = new Zend_Session_Namespace('administrators');
        $data = array(
            'CategoryName' => $params['CategoryName'],
            'status' => $params['status']);
        return $this->insert($data);
    }

    public function updatePlatformCategories($params)
    {
        $authNameSpace = new Zend_Session_Namespace('administrators');
        $data = array(
            'CategoryName' => $params['CategoryName'],
            'status' => $params['status']
        );
        $platform_category = $this->update($data, "ID=" . $params['ID']);
        // $this->getAdapter()->delete("assay_platform_category", "platform_category_id = {$params['ID']}");
        // foreach ($params['assays'] as $assayID) {
        //     $this->getAdapter()->insert("assay_platform_category", ["platform_category_id" => $params['ID'], "assay_id" => $assayID]);
        // }

        return $platform_category;
    }

    public function getPlatformCategoryDetails($adminId)
    {
        return $this->fetchRow($this->select()->where("ID = ? ", $adminId));
    }
    public function deletePlatformCategoryDetails($adminId)
    {
        return $this->delete("ID =  ".$adminId);
    }
}

