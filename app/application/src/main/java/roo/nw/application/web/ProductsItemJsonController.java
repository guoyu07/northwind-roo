package roo.nw.application.web;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;
import roo.nw.model.Product;

/**
 * = ProductsItemJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Product.class, pathPrefix = "/api", type = ControllerType.ITEM)
@RooJSON
public class ProductsItemJsonController {
}
