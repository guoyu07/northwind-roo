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
import roo.nw.model.Country;
import roo.nw.model.Region;
import roo.nw.repository.RegionRepository;
import roo.nw.service.api.CityService;
import roo.nw.service.api.CustomerOrderService;
import roo.nw.service.api.PartyService;
import roo.nw.service.api.StoreService;
import roo.nw.service.api.SupplierService;
import roo.nw.service.impl.RegionServiceImpl;

privileged aspect RegionServiceImpl_Roo_Service_Impl {
    
    declare @type: RegionServiceImpl: @Service;
    
    declare @type: RegionServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private RegionRepository RegionServiceImpl.regionRepository;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CityService RegionServiceImpl.cityService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CustomerOrderService RegionServiceImpl.customerOrderService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private PartyService RegionServiceImpl.partyService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private StoreService RegionServiceImpl.storeService;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private SupplierService RegionServiceImpl.supplierService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param regionRepository
     * @param cityService
     * @param customerOrderService
     * @param partyService
     * @param storeService
     * @param supplierService
     */
    @Autowired
    public RegionServiceImpl.new(RegionRepository regionRepository, @Lazy CityService cityService, @Lazy CustomerOrderService customerOrderService, @Lazy PartyService partyService, @Lazy StoreService storeService, @Lazy SupplierService supplierService) {
        setRegionRepository(regionRepository);
        setCityService(cityService);
        setCustomerOrderService(customerOrderService);
        setPartyService(partyService);
        setStoreService(storeService);
        setSupplierService(supplierService);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return RegionRepository
     */
    public RegionRepository RegionServiceImpl.getRegionRepository() {
        return regionRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param regionRepository
     */
    public void RegionServiceImpl.setRegionRepository(RegionRepository regionRepository) {
        this.regionRepository = regionRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CityService
     */
    public CityService RegionServiceImpl.getCityService() {
        return cityService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cityService
     */
    public void RegionServiceImpl.setCityService(CityService cityService) {
        this.cityService = cityService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return CustomerOrderService
     */
    public CustomerOrderService RegionServiceImpl.getCustomerOrderService() {
        return customerOrderService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrderService
     */
    public void RegionServiceImpl.setCustomerOrderService(CustomerOrderService customerOrderService) {
        this.customerOrderService = customerOrderService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return PartyService
     */
    public PartyService RegionServiceImpl.getPartyService() {
        return partyService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param partyService
     */
    public void RegionServiceImpl.setPartyService(PartyService partyService) {
        this.partyService = partyService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return StoreService
     */
    public StoreService RegionServiceImpl.getStoreService() {
        return storeService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param storeService
     */
    public void RegionServiceImpl.setStoreService(StoreService storeService) {
        this.storeService = storeService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return SupplierService
     */
    public SupplierService RegionServiceImpl.getSupplierService() {
        return supplierService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param supplierService
     */
    public void RegionServiceImpl.setSupplierService(SupplierService supplierService) {
        this.supplierService = supplierService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Region
     */
    public Region RegionServiceImpl.findOne(Long id) {
        return getRegionRepository().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<Region> RegionServiceImpl.findAll(Iterable<Long> ids) {
        return getRegionRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<Region> RegionServiceImpl.findAll() {
        return getRegionRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long RegionServiceImpl.count() {
        return getRegionRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Region> RegionServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getRegionRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param country
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Region> RegionServiceImpl.findByCountry(Country country, GlobalSearch globalSearch, Pageable pageable) {
        return getRegionRepository().findByCountry(country, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param country
     * @return Long
     */
    public long RegionServiceImpl.countByCountry(Country country) {
        return getRegionRepository().countByCountry(country);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param pageable
     * @return Page
     */
    public Page<Region> RegionServiceImpl.findByCountryIdOrderByDescriptionAsc(Long id, Pageable pageable) {
        return getRegionRepository().findByCountryIdOrderByDescriptionAsc(id, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Long
     */
    public long RegionServiceImpl.countByCountryIdOrderByDescriptionAsc(Long id) {
        return getRegionRepository().countByCountryIdOrderByDescriptionAsc(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Region> RegionServiceImpl.getEntityType() {
        return Region.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> RegionServiceImpl.getIdType() {
        return Long.class;
    }
    
}
