// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.application.web;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import java.util.Set;
import roo.nw.application.web.CityDeserializer;
import roo.nw.application.web.CountryDeserializer;
import roo.nw.application.web.CustomerDeserializer;
import roo.nw.application.web.CustomerOrderJsonMixin;
import roo.nw.application.web.EmployeeDeserializer;
import roo.nw.application.web.RegionDeserializer;
import roo.nw.application.web.ShipperDeserializer;
import roo.nw.model.City;
import roo.nw.model.Country;
import roo.nw.model.Customer;
import roo.nw.model.Employee;
import roo.nw.model.OrderDetail;
import roo.nw.model.Region;
import roo.nw.model.Shipper;

privileged aspect CustomerOrderJsonMixin_Roo_JSONMixin {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<OrderDetail> CustomerOrderJsonMixin.orderDetails;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = CityDeserializer.class)
    private City CustomerOrderJsonMixin.city;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = CountryDeserializer.class)
    private Country CustomerOrderJsonMixin.country;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = CustomerDeserializer.class)
    private Customer CustomerOrderJsonMixin.customer;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = EmployeeDeserializer.class)
    private Employee CustomerOrderJsonMixin.employee;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = RegionDeserializer.class)
    private Region CustomerOrderJsonMixin.region;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonDeserialize(using = ShipperDeserializer.class)
    private Shipper CustomerOrderJsonMixin.shipper;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<OrderDetail> CustomerOrderJsonMixin.getOrderDetails() {
        return orderDetails;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param orderDetails
     */
    public void CustomerOrderJsonMixin.setOrderDetails(Set<OrderDetail> orderDetails) {
        this.orderDetails = orderDetails;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return City
     */
    public City CustomerOrderJsonMixin.getCity() {
        return city;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param city
     */
    public void CustomerOrderJsonMixin.setCity(City city) {
        this.city = city;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Country
     */
    public Country CustomerOrderJsonMixin.getCountry() {
        return country;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param country
     */
    public void CustomerOrderJsonMixin.setCountry(Country country) {
        this.country = country;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Customer
     */
    public Customer CustomerOrderJsonMixin.getCustomer() {
        return customer;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customer
     */
    public void CustomerOrderJsonMixin.setCustomer(Customer customer) {
        this.customer = customer;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Employee
     */
    public Employee CustomerOrderJsonMixin.getEmployee() {
        return employee;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param employee
     */
    public void CustomerOrderJsonMixin.setEmployee(Employee employee) {
        this.employee = employee;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Region
     */
    public Region CustomerOrderJsonMixin.getRegion() {
        return region;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     */
    public void CustomerOrderJsonMixin.setRegion(Region region) {
        this.region = region;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Shipper
     */
    public Shipper CustomerOrderJsonMixin.getShipper() {
        return shipper;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param shipper
     */
    public void CustomerOrderJsonMixin.setShipper(Shipper shipper) {
        this.shipper = shipper;
    }
    
}
