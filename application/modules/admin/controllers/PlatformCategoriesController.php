<?php

class Admin_PlatformCategoriesController extends Zend_Controller_Action
{

    public function init()
    {
        $ajaxContext = $this->_helper->getHelper('AjaxContext');
        $ajaxContext->addActionContext('index', 'html')
                    ->initContext();
        $this->_helper->layout()->pageName = 'configMenu';
    }

    public function indexAction(){
        if ($this->getRequest()->isPost()) {
            $parameters = $this->_getAllParams();
            $platformService = new Application_Service_PlatformCategory();
            $platformService->getAllPlatformCategory($parameters);
        }
    }
    
    public function addAction(){
        if ($this->getRequest()->isPost()) {
            $params = $this->getRequest()->getPost();
            $platformService = new Application_Service_PlatformCategory();
            $platformService->addPlatformCategory($params);
            $this->_redirect("/admin/platformcategories");
        }
        $assaysModel = new Application_Model_DbTable_Assay();
        $this->view->assays = $assaysModel->getAssays();
    }
    
    public function editAction(){
        $platformService = new Application_Service_PlatformCategory();
        if ($this->getRequest()->isPost()) {
            $params = $this->getRequest()->getPost();
            $platformService->updatePlatformCategory($params);
            $this->_redirect("/admin/platformcategories");
        }
        if($this->_hasParam('id')){
            $platformId = (int)$this->_getParam('id');
            $platform = $platformService->getPlatformCategory($platformId);
            $this->view->platform = $platform;
            $assaysModel = new Application_Model_DbTable_Assay();
            $this->view->assays = $assaysModel->getAssays();
            // $this->view->myAssays = $platform->findManyToManyRowset('Application_Model_DbTable_Assay', 'Application_Model_DbTable_AssayPlatform')->toArray();
        }else{
            $this->_redirect("/admin/platformcategories");
        }
    }

    public function deleteAction(){
        $platformService = new Application_Service_PlatformCategory();

        if($this->_hasParam('id')){
            $platformId = (int)$this->_getParam('id');
            $platformService->deletePlatformCategory($platformId);
            $this->_redirect("/admin/platformcategories");
        }else{
            $this->_redirect("/admin/platformcategories");
        }
        exit;
    }
}