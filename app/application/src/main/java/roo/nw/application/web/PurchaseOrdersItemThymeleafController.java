package roo.nw.application.web;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;
import roo.nw.model.PurchaseOrder;

/**
 * = PurchaseOrdersItemThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = PurchaseOrder.class, type = ControllerType.ITEM)
@RooThymeleaf
public class PurchaseOrdersItemThymeleafController {
}
