// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.application.web;

import io.springlets.boot.test.autoconfigure.web.servlet.SpringletsWebMvcTest;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import roo.nw.application.web.PurchaseOrdersItemJsonController;
import roo.nw.application.web.PurchaseOrdersItemJsonControllerIT;
import roo.nw.model.dod.PurchaseOrderFactory;
import roo.nw.service.api.PurchaseOrderService;

privileged aspect PurchaseOrdersItemJsonControllerIT_Roo_JsonControllerIntegrationTest {
    
    declare @type: PurchaseOrdersItemJsonControllerIT: @RunWith(SpringRunner.class);
    
    declare @type: PurchaseOrdersItemJsonControllerIT: @SpringletsWebMvcTest(controllers = PurchaseOrdersItemJsonController.class, secure = false);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @Autowired
    private MockMvc PurchaseOrdersItemJsonControllerIT.mvc;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @MockBean
    private PurchaseOrderService PurchaseOrdersItemJsonControllerIT.purchaseOrderService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private PurchaseOrderFactory PurchaseOrdersItemJsonControllerIT.factory = new PurchaseOrderFactory();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MockMvc
     */
    public MockMvc PurchaseOrdersItemJsonControllerIT.getMvc() {
        return mvc;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return PurchaseOrderService
     */
    public PurchaseOrderService PurchaseOrdersItemJsonControllerIT.getPurchaseOrderService() {
        return purchaseOrderService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param purchaseOrderService
     */
    public void PurchaseOrdersItemJsonControllerIT.setPurchaseOrderService(PurchaseOrderService purchaseOrderService) {
        this.purchaseOrderService = purchaseOrderService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return PurchaseOrderFactory
     */
    public PurchaseOrderFactory PurchaseOrdersItemJsonControllerIT.getFactory() {
        return factory;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param factory
     */
    public void PurchaseOrdersItemJsonControllerIT.setFactory(PurchaseOrderFactory factory) {
        this.factory = factory;
    }
    
    /**
     * Test method example. To be implemented by developer.
     * 
     */
    @Test
    public void PurchaseOrdersItemJsonControllerIT.testMethodExample() {
        // Setup
        // Previous tasks
        
        // Exercise
        // Execute method to test
        
        // Verify
        // Check results with assertions
    }
    
}
