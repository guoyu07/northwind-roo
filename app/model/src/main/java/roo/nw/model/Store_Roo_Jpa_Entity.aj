// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.model;

import io.springlets.format.EntityFormat;
import javax.persistence.Entity;
import javax.persistence.Table;
import roo.nw.model.Store;

privileged aspect Store_Roo_Jpa_Entity {
    
    declare @type: Store: @Entity;
    
    declare @type: Store: @Table(name = "NW_STORES");
    
    declare @type: Store: @EntityFormat;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String Store.ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String Store.ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
}