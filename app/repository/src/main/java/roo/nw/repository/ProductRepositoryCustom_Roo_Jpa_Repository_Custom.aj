// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.repository;

import io.springlets.data.domain.GlobalSearch;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import roo.nw.model.Category;
import roo.nw.model.Product;
import roo.nw.model.Supplier;
import roo.nw.repository.ProductRepositoryCustom;

privileged aspect ProductRepositoryCustom_Roo_Jpa_Repository_Custom {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param supplier
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Product> ProductRepositoryCustom.findBySupplier(Supplier supplier, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param category
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Product> ProductRepositoryCustom.findByCategory(Category category, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Product> ProductRepositoryCustom.findAll(GlobalSearch globalSearch, Pageable pageable);
    
}
