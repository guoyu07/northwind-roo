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
import roo.nw.model.Country;
import roo.nw.model.QCountry;
import roo.nw.repository.CountryRepositoryCustom;
import roo.nw.repository.CountryRepositoryImpl;

privileged aspect CountryRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare parents: CountryRepositoryImpl implements CountryRepositoryCustom;
    
    declare @type: CountryRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CountryRepositoryImpl.DESCRIPTION = "description";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Country> CountryRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QCountry country = QCountry.country;
        
        JPQLQuery<Country> query = from(country);
        
        Path<?>[] paths = new Path<?>[] {country.description};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(DESCRIPTION, country.description);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, country);
    }
    
}