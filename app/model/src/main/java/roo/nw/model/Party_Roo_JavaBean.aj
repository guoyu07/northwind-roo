// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.model;

import roo.nw.model.City;
import roo.nw.model.Country;
import roo.nw.model.Party;
import roo.nw.model.Region;

privileged aspect Party_Roo_JavaBean {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public Long Party.getId() {
        return this.id;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     */
    public void Party.setId(Long id) {
        this.id = id;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public Long Party.getVersion() {
        return this.version;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param version
     */
    public void Party.setVersion(Long version) {
        this.version = version;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return City
     */
    public City Party.getCity() {
        return this.city;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param city
     */
    public void Party.setCity(City city) {
        this.city = city;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Country
     */
    public Country Party.getCountry() {
        return this.country;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param country
     */
    public void Party.setCountry(Country country) {
        this.country = country;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Party.getAddress() {
        return this.address;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param address
     */
    public void Party.setAddress(String address) {
        this.address = address;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Party.getPostalCode() {
        return this.postalCode;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param postalCode
     */
    public void Party.setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Party.getPhone() {
        return this.phone;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param phone
     */
    public void Party.setPhone(String phone) {
        this.phone = phone;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Region
     */
    public Region Party.getRegion() {
        return this.region;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     */
    public void Party.setRegion(Region region) {
        this.region = region;
    }
    
}