// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.repository;

import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.transaction.annotation.Transactional;
import roo.nw.model.City;
import roo.nw.model.Country;
import roo.nw.model.Customer;
import roo.nw.model.CustomerOrder;
import roo.nw.model.Employee;
import roo.nw.model.Region;
import roo.nw.model.Shipper;
import roo.nw.repository.CustomerOrderRepository;
import roo.nw.repository.CustomerOrderRepositoryCustom;

privileged aspect CustomerOrderRepository_Roo_Jpa_Repository {
    
    declare parents: CustomerOrderRepository extends DetachableJpaRepository<CustomerOrder, Long>;
    
    declare parents: CustomerOrderRepository extends CustomerOrderRepositoryCustom;
    
    declare @type: CustomerOrderRepository: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param country
     * @return Long
     */
    public abstract long CustomerOrderRepository.countByCountry(Country country);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param shipper
     * @return Long
     */
    public abstract long CustomerOrderRepository.countByShipper(Shipper shipper);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param city
     * @return Long
     */
    public abstract long CustomerOrderRepository.countByCity(City city);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param employee
     * @return Long
     */
    public abstract long CustomerOrderRepository.countByEmployee(Employee employee);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     * @return Long
     */
    public abstract long CustomerOrderRepository.countByRegion(Region region);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customer
     * @return Long
     */
    public abstract long CustomerOrderRepository.countByCustomer(Customer customer);
    
}
