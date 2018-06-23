<?php

class Sparx_Customreport_Adminhtml_CustomreportController extends Mage_Adminhtml_Controller_Action {

    protected function _initAction() {
        $this->loadLayout();
        return $this;
    }

    public function indexAction(){
        $this->_initAction()
            ->renderLayout();
    }

    /**
     * Export Sold Products report to CSV format action
     *
     */
    public function exportSoldCsvAction()
    {
        $fileName   = 'merchandising.csv';
        $content    = $this->getLayout()
            ->createBlock('customreport/adminhtml_customreport_grid')
            ->getCsv();

        $this->_prepareDownloadResponse($fileName, $content);
    }

    public function exportSoldExcelAction()
    {
        $fileName   = 'merchandising.xml';
        $content    = $this->getLayout()
            ->createBlock('customreport/adminhtml_customreport_grid')
            ->getExcel($fileName);

        $this->_prepareDownloadResponse($fileName, $content);
    }

}