// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.application.web;

import roo.nw.application.web.SuppliersCollectionJsonController;
import roo.nw.service.api.SupplierService;

privileged aspect SuppliersCollectionJsonController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private SupplierService SuppliersCollectionJsonController.supplierService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return SupplierService
     */
    public SupplierService SuppliersCollectionJsonController.getSupplierService() {
        return supplierService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param supplierService
     */
    public void SuppliersCollectionJsonController.setSupplierService(SupplierService supplierService) {
        this.supplierService = supplierService;
    }
    
}
