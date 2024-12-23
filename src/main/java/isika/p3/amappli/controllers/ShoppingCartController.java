package isika.p3.amappli.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import isika.p3.amappli.entities.order.ShoppingCart;
import isika.p3.amappli.entities.user.Address;
import isika.p3.amappli.service.GraphismServiceImpl;
import isika.p3.amappli.service.ShoppingCartServiceImpl;

@Controller
@RequestMapping("/{tenancyId}/cart")
public class ShoppingCartController {

	@Autowired
	private ShoppingCartServiceImpl shoppingCartService;
	@Autowired
	private GraphismServiceImpl graphismService;
	
    @GetMapping("/{cartId}")
    public String viewCart(@PathVariable("cartId") Long cartId, @PathVariable("tenancyId") Long tenancyId, Model model) {
        ShoppingCart cart = shoppingCartService.getShoppingCartById(cartId);
        model.addAttribute("cart", cart);
        model.addAttribute("total", shoppingCartService.calculateTotal(cartId));
        
        //get map style depending on tenancy
        String mapStyle = graphismService.getMapboxStyleByTenancyId(tenancyId);
        model.addAttribute("mapStyle", mapStyle);
        //get address for footer
        Address address = graphismService.getAddressByTenancyId(tenancyId);
        model.addAttribute("address", address);
        //get color palette
        String cssStyle = graphismService.getColorPaletteByTenancyId(tenancyId);
        model.addAttribute("cssStyle", cssStyle);
        
        return "amap/shopping-cart";
    }

    @PostMapping("/{cartId}/add")
    public String addItem(@PathVariable("cartId") Long cartId, @PathVariable("tenancyId") Long tenancyId,
                          @RequestParam("shoppableId") Long shoppableId,
                          @RequestParam("quantity") int quantity) {
    	System.out.println("Received cartId: " + cartId + ", shoppableId: " + shoppableId + ", quantity: " + quantity);
        shoppingCartService.addItemToCart(cartId, shoppableId, quantity);
        return "redirect:/{tenancyId}/cart/" + cartId;
    }

    @PostMapping("/{cartId}/updateQuantity/{itemId}")
    public String updateItemQuantity(
            @PathVariable("cartId") Long cartId,  @PathVariable("tenancyId") Long tenancyId,
            @PathVariable("itemId") Long itemId, 
            @ModelAttribute("action") String action) {
        if ("increase".equals(action)) {
            shoppingCartService.increaseItemQuantity(cartId, itemId);
        } else if ("decrease".equals(action)) {
            shoppingCartService.decreaseItemQuantity(cartId, itemId);
        }
        return "redirect:/{tenancyId}/cart/" + cartId;
    }
    
    @GetMapping("/init")
    public String initializeCart(@PathVariable("cartId") Long cartId, @PathVariable("tenancyId") Long tenancyId) {
    	shoppingCartService.initShoppingCart();
    	return "redirect:/{tenancyId}/cart/{cartId}";
    }
    
    
	
}
