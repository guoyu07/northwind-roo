// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.repository;

import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.transaction.annotation.Transactional;
import roo.nw.model.City;
import roo.nw.model.Country;
import roo.nw.model.Region;
import roo.nw.model.Supplier;
import roo.nw.repository.SupplierRepository;
import roo.nw.repository.SupplierRepositoryCustom;

privileged aspect SupplierRepository_Roo_Jpa_Repository {
    
    declare parents: SupplierRepository extends DetachableJpaRepository<Supplier, Long>;
    
    declare parents: SupplierRepository extends SupplierRepositoryCustom;
    
    declare @type: SupplierRepository: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param country
     * @return Long
     */
    public abstract long SupplierRepository.countByCountry(Country country);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param city
     * @return Long
     */
    public abstract long SupplierRepository.countByCity(City city);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     * @return Long
     */
    public abstract long SupplierRepository.countByRegion(Region region);
    
}
