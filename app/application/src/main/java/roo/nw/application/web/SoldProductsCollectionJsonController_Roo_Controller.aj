// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.application.web;

import roo.nw.application.web.SoldProductsCollectionJsonController;
import roo.nw.service.api.SoldProductService;

privileged aspect SoldProductsCollectionJsonController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private SoldProductService SoldProductsCollectionJsonController.soldProductService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return SoldProductService
     */
    public SoldProductService SoldProductsCollectionJsonController.getSoldProductService() {
        return soldProductService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param soldProductService
     */
    public void SoldProductsCollectionJsonController.setSoldProductService(SoldProductService soldProductService) {
        this.soldProductService = soldProductService;
    }
    
}