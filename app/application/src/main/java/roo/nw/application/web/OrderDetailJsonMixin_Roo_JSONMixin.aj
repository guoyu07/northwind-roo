// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.application.web;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import roo.nw.application.web.CustomerOrderDeserializer;
import roo.nw.application.web.OrderDetailJsonMixin;
import roo.nw.application.web.ProductDeserializer;
import roo.nw.model.CustomerOrder;
import roo.nw.model.Product;

privileged aspect OrderDetailJsonMixin_Roo_JSONMixin {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = CustomerOrderDeserializer.class)
    private CustomerOrder OrderDetailJsonMixin.customerOrder;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = ProductDeserializer.class)
    private Product OrderDetailJsonMixin.product;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CustomerOrder
     */
    public CustomerOrder OrderDetailJsonMixin.getCustomerOrder() {
        return customerOrder;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrder
     */
    public void OrderDetailJsonMixin.setCustomerOrder(CustomerOrder customerOrder) {
        this.customerOrder = customerOrder;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Product
     */
    public Product OrderDetailJsonMixin.getProduct() {
        return product;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     */
    public void OrderDetailJsonMixin.setProduct(Product product) {
        this.product = product;
    }
    
}