// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.application.ws.endpoint;

import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import javax.jws.WebService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import roo.nw.application.ws.endpoint.CategoryWebServiceEndpoint;
import roo.nw.model.Category;
import roo.nw.service.api.CategoryService;

privileged aspect CategoryWebServiceEndpoint_Roo_WS_Endpoint {
    
    declare @type: CategoryWebServiceEndpoint: @WebService(endpointInterface = "roo.nw.application.ws.api.CategoryWebService", portName = "CategoryWebServicePort", serviceName = "CategoryWebService", targetNamespace = "http://ws.nw.roo/");
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private CategoryService CategoryWebServiceEndpoint.categoryService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param categoryService
     */
    public CategoryWebServiceEndpoint.new(CategoryService categoryService) {
        setCategoryService(categoryService);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return CategoryService
     */
    public CategoryService CategoryWebServiceEndpoint.getCategoryService() {
        return categoryService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param categoryService
     */
    public void CategoryWebServiceEndpoint.setCategoryService(CategoryService categoryService) {
        this.categoryService = categoryService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param category
     * @param productsToAdd
     * @return Category
     */
    public Category CategoryWebServiceEndpoint.addToProductsByCategoryAndIterable(Category category, Iterable<Long> productsToAdd) {
        return getCategoryService().addToProducts(category, productsToAdd);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long CategoryWebServiceEndpoint.count() {
        return getCategoryService().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param category
     */
    public void CategoryWebServiceEndpoint.deleteByCategory(Category category) {
        getCategoryService().delete(category);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    public void CategoryWebServiceEndpoint.deleteByIterable(Iterable<Long> ids) {
        getCategoryService().delete(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<Category> CategoryWebServiceEndpoint.findAll() {
        return getCategoryService().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Category> CategoryWebServiceEndpoint.findAllByGlobalSearchAndPageable(GlobalSearch globalSearch, Pageable pageable) {
        return getCategoryService().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<Category> CategoryWebServiceEndpoint.findAllByIterable(Iterable<Long> ids) {
        return getCategoryService().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Category
     */
    public Category CategoryWebServiceEndpoint.findOneByLong(Long id) {
        return getCategoryService().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Category
     */
    public Category CategoryWebServiceEndpoint.findOneForUpdateByLong(Long id) {
        return getCategoryService().findOneForUpdate(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param category
     * @param productsToRemove
     * @return Category
     */
    public Category CategoryWebServiceEndpoint.removeFromProductsByCategoryAndIterable(Category category, Iterable<Long> productsToRemove) {
        return getCategoryService().removeFromProducts(category, productsToRemove);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Category
     */
    public Category CategoryWebServiceEndpoint.saveByCategory(Category entity) {
        return getCategoryService().save(entity);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    public List<Category> CategoryWebServiceEndpoint.saveByIterable(Iterable<Category> entities) {
        return getCategoryService().save(entities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param category
     * @param products
     * @return Category
     */
    public Category CategoryWebServiceEndpoint.setProductsByCategoryAndIterable(Category category, Iterable<Long> products) {
        return getCategoryService().setProducts(category, products);
    }
    
}
