// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.application.web;

import roo.nw.application.web.ProductsItemPurchaseOrdersThymeleafController;
import roo.nw.service.api.ProductService;
import roo.nw.service.api.PurchaseOrderService;

privileged aspect ProductsItemPurchaseOrdersThymeleafController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ProductService ProductsItemPurchaseOrdersThymeleafController.productService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private PurchaseOrderService ProductsItemPurchaseOrdersThymeleafController.purchaseOrderService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ProductService
     */
    public ProductService ProductsItemPurchaseOrdersThymeleafController.getProductService() {
        return productService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param productService
     */
    public void ProductsItemPurchaseOrdersThymeleafController.setProductService(ProductService productService) {
        this.productService = productService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return PurchaseOrderService
     */
    public PurchaseOrderService ProductsItemPurchaseOrdersThymeleafController.getPurchaseOrderService() {
        return purchaseOrderService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param purchaseOrderService
     */
    public void ProductsItemPurchaseOrdersThymeleafController.setPurchaseOrderService(PurchaseOrderService purchaseOrderService) {
        this.purchaseOrderService = purchaseOrderService;
    }
    
}
