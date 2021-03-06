// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.repository;

import io.springlets.data.domain.GlobalSearch;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import roo.nw.model.Employee;
import roo.nw.model.Product;
import roo.nw.model.PurchaseOrder;
import roo.nw.repository.PurchaseOrderRepositoryCustom;

privileged aspect PurchaseOrderRepositoryCustom_Roo_Jpa_Repository_Custom {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param product
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<PurchaseOrder> PurchaseOrderRepositoryCustom.findByProduct(Product product, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param employee
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<PurchaseOrder> PurchaseOrderRepositoryCustom.findByEmployee(Employee employee, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<PurchaseOrder> PurchaseOrderRepositoryCustom.findAll(GlobalSearch globalSearch, Pageable pageable);
    
}
