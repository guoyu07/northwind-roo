// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.model.dod;

import java.util.Calendar;
import java.util.GregorianCalendar;
import roo.nw.model.City;
import roo.nw.model.Country;
import roo.nw.model.Employee;
import roo.nw.model.Region;
import roo.nw.model.dod.EmployeeFactory;

privileged aspect EmployeeFactory_Roo_JpaEntityFactory {
    
    /**
     * Creates a new {@link Employee} with the given index.
     * 
     * @param index position of the Employee
     * @return a new transient Employee
     */
    public Employee EmployeeFactory.create(int index) {
        Employee obj = new Employee();
        setAddress(obj, index);
        setBirthDate(obj, index);
        setCity(obj, index);
        setCountry(obj, index);
        setExtension(obj, index);
        setFirstName(obj, index);
        setHireDate(obj, index);
        setLastName(obj, index);
        setNotes(obj, index);
        setPhone(obj, index);
        setPhoto(obj, index);
        setPostalCode(obj, index);
        setRegion(obj, index);
        setTitle(obj, index);
        return obj;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void EmployeeFactory.setAddress(Employee obj, int index) {
        String address = "address_" + index;
        obj.setAddress(address);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void EmployeeFactory.setBirthDate(Employee obj, int index) {
        Calendar birthDate = Calendar.getInstance();
        obj.setBirthDate(birthDate);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void EmployeeFactory.setCity(Employee obj, int index) {
        City city = null;
        obj.setCity(city);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void EmployeeFactory.setCountry(Employee obj, int index) {
        Country country = null;
        obj.setCountry(country);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void EmployeeFactory.setExtension(Employee obj, int index) {
        String extension = "extension_" + index;
        obj.setExtension(extension);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void EmployeeFactory.setFirstName(Employee obj, int index) {
        String firstName = "firstName_" + index;
        obj.setFirstName(firstName);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void EmployeeFactory.setHireDate(Employee obj, int index) {
        Calendar hireDate = Calendar.getInstance();
        obj.setHireDate(hireDate);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void EmployeeFactory.setLastName(Employee obj, int index) {
        String lastName = "lastName_" + index;
        obj.setLastName(lastName);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void EmployeeFactory.setNotes(Employee obj, int index) {
        String notes = "notes_" + index;
        obj.setNotes(notes);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void EmployeeFactory.setPhone(Employee obj, int index) {
        String phone = "phone_" + index;
        obj.setPhone(phone);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void EmployeeFactory.setPhoto(Employee obj, int index) {
        String photo = "photo_" + index;
        obj.setPhoto(photo);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void EmployeeFactory.setPostalCode(Employee obj, int index) {
        String postalCode = "postalCode_" + index;
        obj.setPostalCode(postalCode);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void EmployeeFactory.setRegion(Employee obj, int index) {
        Region region = null;
        obj.setRegion(region);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void EmployeeFactory.setTitle(Employee obj, int index) {
        String title = "title_" + index;
        obj.setTitle(title);
    }
    
}
