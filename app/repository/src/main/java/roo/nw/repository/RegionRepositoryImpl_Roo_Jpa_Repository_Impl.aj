// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.repository;

import com.querydsl.core.types.Path;
import com.querydsl.jpa.JPQLQuery;
import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt.AttributeMappingBuilder;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;
import roo.nw.model.Country;
import roo.nw.model.QRegion;
import roo.nw.model.Region;
import roo.nw.repository.RegionRepositoryCustom;
import roo.nw.repository.RegionRepositoryImpl;

privileged aspect RegionRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare parents: RegionRepositoryImpl implements RegionRepositoryCustom;
    
    declare @type: RegionRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String RegionRepositoryImpl.COUNTRY = "country";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String RegionRepositoryImpl.DESCRIPTION = "description";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Region> RegionRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QRegion region = QRegion.region;
        
        JPQLQuery<Region> query = from(region);
        
        Path<?>[] paths = new Path<?>[] {region.country,region.description};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(COUNTRY, region.country)
			.map(DESCRIPTION, region.description);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, region);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param country
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Region> RegionRepositoryImpl.findByCountry(Country country, GlobalSearch globalSearch, Pageable pageable) {
        
        QRegion region = QRegion.region;
        
        JPQLQuery<Region> query = from(region);
        
        Assert.notNull(country, "country is required");
        
        query.where(region.country.eq(country));
        Path<?>[] paths = new Path<?>[] {region.country,region.description};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(COUNTRY, region.country)
			.map(DESCRIPTION, region.description);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, region);
    }
    
}
