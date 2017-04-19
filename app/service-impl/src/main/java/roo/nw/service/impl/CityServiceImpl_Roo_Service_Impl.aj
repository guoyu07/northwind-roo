// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.service.impl;

import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import roo.nw.model.City;
import roo.nw.model.Region;
import roo.nw.repository.CityRepository;
import roo.nw.service.api.CustomerOrderService;
import roo.nw.service.api.PartyService;
import roo.nw.service.api.StoreService;
import roo.nw.service.api.SupplierService;
import roo.nw.service.impl.CityServiceImpl;

privileged aspect CityServiceImpl_Roo_Service_Impl {
    
    declare @type: CityServiceImpl: @Service;
    
    declare @type: CityServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CityRepository CityServiceImpl.cityRepository;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CustomerOrderService CityServiceImpl.customerOrderService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private PartyService CityServiceImpl.partyService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private StoreService CityServiceImpl.storeService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private SupplierService CityServiceImpl.supplierService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param cityRepository
     * @param customerOrderService
     * @param partyService
     * @param storeService
     * @param supplierService
     */
    @Autowired
    public CityServiceImpl.new(CityRepository cityRepository, @Lazy CustomerOrderService customerOrderService, @Lazy PartyService partyService, @Lazy StoreService storeService, @Lazy SupplierService supplierService) {
        setCityRepository(cityRepository);
        setCustomerOrderService(customerOrderService);
        setPartyService(partyService);
        setStoreService(storeService);
        setSupplierService(supplierService);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return CityRepository
     */
    public CityRepository CityServiceImpl.getCityRepository() {
        return cityRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cityRepository
     */
    public void CityServiceImpl.setCityRepository(CityRepository cityRepository) {
        this.cityRepository = cityRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CustomerOrderService
     */
    public CustomerOrderService CityServiceImpl.getCustomerOrderService() {
        return customerOrderService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrderService
     */
    public void CityServiceImpl.setCustomerOrderService(CustomerOrderService customerOrderService) {
        this.customerOrderService = customerOrderService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return PartyService
     */
    public PartyService CityServiceImpl.getPartyService() {
        return partyService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param partyService
     */
    public void CityServiceImpl.setPartyService(PartyService partyService) {
        this.partyService = partyService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return StoreService
     */
    public StoreService CityServiceImpl.getStoreService() {
        return storeService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storeService
     */
    public void CityServiceImpl.setStoreService(StoreService storeService) {
        this.storeService = storeService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return SupplierService
     */
    public SupplierService CityServiceImpl.getSupplierService() {
        return supplierService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param supplierService
     */
    public void CityServiceImpl.setSupplierService(SupplierService supplierService) {
        this.supplierService = supplierService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return City
     */
    public City CityServiceImpl.findOne(Long id) {
        return getCityRepository().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<City> CityServiceImpl.findAll(Iterable<Long> ids) {
        return getCityRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<City> CityServiceImpl.findAll() {
        return getCityRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long CityServiceImpl.count() {
        return getCityRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<City> CityServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getCityRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<City> CityServiceImpl.findByRegion(Region region, GlobalSearch globalSearch, Pageable pageable) {
        return getCityRepository().findByRegion(region, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param region
     * @return Long
     */
    public long CityServiceImpl.countByRegion(Region region) {
        return getCityRepository().countByRegion(region);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param pageable
     * @return Page
     */
    public Page<City> CityServiceImpl.findByRegionIdOrderByDescriptionAsc(Long id, Pageable pageable) {
        return getCityRepository().findByRegionIdOrderByDescriptionAsc(id, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Long
     */
    public long CityServiceImpl.countByRegionIdOrderByDescriptionAsc(Long id) {
        return getCityRepository().countByRegionIdOrderByDescriptionAsc(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<City> CityServiceImpl.getEntityType() {
        return City.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> CityServiceImpl.getIdType() {
        return Long.class;
    }
    
}
