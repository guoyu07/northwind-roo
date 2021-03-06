// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.model;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlID;
import javax.xml.bind.annotation.XmlIDREF;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;
import roo.nw.model.Employee;
import roo.nw.model.Product;
import roo.nw.model.PurchaseOrder;
import roo.nw.model.PurchaseOrder_Roo_Jaxb_Entity;

privileged aspect PurchaseOrder_Roo_Jaxb_Entity {
    
    /*
     * This Aspect takes the lower precedence
     */
    declare precedence: *, PurchaseOrder_Roo_Jaxb_Entity;
    
    declare @type: PurchaseOrder: @XmlRootElement(name = "purchaseorder", namespace = "http://ws.nw.roo/");
    
    declare @method: public Employee PurchaseOrder.getEmployee(): @XmlIDREF;
    
    declare @method: public Employee PurchaseOrder.getEmployee(): @XmlElement(name = "employee");
    
    declare @method: public Product PurchaseOrder.getProduct(): @XmlIDREF;
    
    declare @method: public Product PurchaseOrder.getProduct(): @XmlElement(name = "product");
    
    declare @method: public Long PurchaseOrder.getId(): @XmlTransient;
    
    /**
     * Must return an unique ID across all entities
     * 
     * @return String
     */
    @XmlID
    @XmlAttribute(name = "id")
    public String PurchaseOrder.getXmlIdentityInfo() {
        return getClass().getName() + ":" + getId();
    }
    
}
