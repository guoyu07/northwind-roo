// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.application.web;

import roo.nw.application.web.OrderDetailsCollectionJsonController;
import roo.nw.service.api.OrderDetailService;

privileged aspect OrderDetailsCollectionJsonController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private OrderDetailService OrderDetailsCollectionJsonController.orderDetailService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return OrderDetailService
     */
    public OrderDetailService OrderDetailsCollectionJsonController.getOrderDetailService() {
        return orderDetailService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param orderDetailService
     */
    public void OrderDetailsCollectionJsonController.setOrderDetailService(OrderDetailService orderDetailService) {
        this.orderDetailService = orderDetailService;
    }
    
}
