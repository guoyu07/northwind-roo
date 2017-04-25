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
import roo.nw.model.Category;
import roo.nw.model.QCategory;
import roo.nw.repository.CategoryRepositoryCustom;
import roo.nw.repository.CategoryRepositoryImpl;

privileged aspect CategoryRepositoryImpl_Roo_Jpa_Repository_Impl {
    
    declare parents: CategoryRepositoryImpl implements CategoryRepositoryCustom;
    
    declare @type: CategoryRepositoryImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CategoryRepositoryImpl.NAME = "name";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CategoryRepositoryImpl.DESCRIPTION = "description";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CategoryRepositoryImpl.CREATED_DATE = "createdDate";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CategoryRepositoryImpl.CREATED_BY = "createdBy";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CategoryRepositoryImpl.MODIFIED_DATE = "modifiedDate";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String CategoryRepositoryImpl.MODIFIED_BY = "modifiedBy";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Category> CategoryRepositoryImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        
        QCategory category = QCategory.category;
        
        JPQLQuery<Category> query = from(category);
        
        Path<?>[] paths = new Path<?>[] {category.name,category.description,category.createdDate,category.createdBy,category.modifiedDate,category.modifiedBy};        
        applyGlobalSearch(globalSearch, query, paths);
        
        AttributeMappingBuilder mapping = buildMapper()
			.map(NAME, category.name)
			.map(DESCRIPTION, category.description)
			.map(CREATED_DATE, category.createdDate)
			.map(CREATED_BY, category.createdBy)
			.map(MODIFIED_DATE, category.modifiedDate)
			.map(MODIFIED_BY, category.modifiedBy);
        
        applyPagination(pageable, query, mapping);
        applyOrderById(query);
        
        return loadPage(query, pageable, category);
    }
    
}