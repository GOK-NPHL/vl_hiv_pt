<?php

class Application_Service_PlatformCategory {
    
    public function addPlatformCategory($params){
        $platform_categoryModel = new Application_Model_DbTable_PlatformCategories();
    	return $platform_categoryModel->addPlatformCategories($params);
    }
    
    public function getAllPlatformCategory($parameters){
        $platform_categoryModel = new Application_Model_DbTable_PlatformCategories();
    	return $platform_categoryModel->fetchAllPlatformCategoryAdmin($parameters);
    }
    
    public function getPlatformCategory($platform_categoryId){
        $platform_categoryModel = new Application_Model_DbTable_PlatformCategories();
    	return $platform_categoryModel->getPlatformCategoryDetails($platform_categoryId);
    }

    public function deletePlatformCategory($platform_categoryId){
        $platform_categoryModel = new Application_Model_DbTable_PlatformCategories();
        return $platform_categoryModel->deletePlatformCategoryDetails($platform_categoryId);
    }
    
    public function updatePlatformCategory($params){
        $platform_categoryModel = new Application_Model_DbTable_PlatformCategories();
    	return $platform_categoryModel->updatePlatformCategories($params);
    }
    
    public function getPlatformCategories(){
        $platform_categoryModel = new Application_Model_DbTable_PlatformCategories();
    	return $platform_categoryModel->fetchAll($platform_categoryModel->select()->where("status = ? ", 1));
    }
}