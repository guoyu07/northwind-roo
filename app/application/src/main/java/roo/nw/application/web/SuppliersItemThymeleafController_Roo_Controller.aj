// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.application.web;

import roo.nw.application.web.SuppliersItemThymeleafController;
import roo.nw.service.api.SupplierService;

privileged aspect SuppliersItemThymeleafController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private SupplierService SuppliersItemThymeleafController.supplierService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return SupplierService
     */
    public SupplierService SuppliersItemThymeleafController.getSupplierService() {
        return supplierService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param supplierService
     */
    public void SuppliersItemThymeleafController.setSupplierService(SupplierService supplierService) {
        this.supplierService = supplierService;
    }
    
}
