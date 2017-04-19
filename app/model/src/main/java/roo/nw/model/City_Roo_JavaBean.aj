// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.model;

import java.util.Set;
import roo.nw.model.City;
import roo.nw.model.CustomerOrder;
import roo.nw.model.Party;
import roo.nw.model.Region;
import roo.nw.model.Store;
import roo.nw.model.Supplier;

privileged aspect City_Roo_JavaBean {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public Long City.getId() {
        return this.id;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public Long City.getVersion() {
        return this.version;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String City.getDescription() {
        return this.description;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<Party> City.getParties() {
        return this.parties;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<CustomerOrder> City.getCustomerOrders() {
        return this.customerOrders;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<Store> City.getStores() {
        return this.stores;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<Supplier> City.getSuppliers() {
        return this.suppliers;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Region
     */
    public Region City.getRegion() {
        return this.region;
    }
    
}
