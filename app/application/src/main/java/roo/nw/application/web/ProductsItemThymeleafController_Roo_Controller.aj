// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.application.web;

import roo.nw.application.web.ProductsItemThymeleafController;
import roo.nw.service.api.ProductService;

privileged aspect ProductsItemThymeleafController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ProductService ProductsItemThymeleafController.productService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ProductService
     */
    public ProductService ProductsItemThymeleafController.getProductService() {
        return productService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param productService
     */
    public void ProductsItemThymeleafController.setProductService(ProductService productService) {
        this.productService = productService;
    }
    
}
