// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.model.dod;

import roo.nw.model.City;
import roo.nw.model.Country;
import roo.nw.model.Party;
import roo.nw.model.Region;
import roo.nw.model.dod.PartyFactory;

privileged aspect PartyFactory_Roo_JpaEntityFactory {
    
    /**
     * Creates a new {@link Party} with the given index.
     * 
     * @param index position of the Party
     * @return a new transient Party
     */
    public Party PartyFactory.create(int index) {
        Party obj = new Party();
        setAddress(obj, index);
        setCity(obj, index);
        setCountry(obj, index);
        setPhone(obj, index);
        setPostalCode(obj, index);
        setRegion(obj, index);
        return obj;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void PartyFactory.setAddress(Party obj, int index) {
        String address = "address_" + index;
        obj.setAddress(address);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void PartyFactory.setCity(Party obj, int index) {
        City city = null;
        obj.setCity(city);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void PartyFactory.setCountry(Party obj, int index) {
        Country country = null;
        obj.setCountry(country);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void PartyFactory.setPhone(Party obj, int index) {
        String phone = "phone_" + index;
        obj.setPhone(phone);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void PartyFactory.setPostalCode(Party obj, int index) {
        String postalCode = "postalCode_" + index;
        obj.setPostalCode(postalCode);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void PartyFactory.setRegion(Party obj, int index) {
        Region region = null;
        obj.setRegion(region);
    }
    
}
