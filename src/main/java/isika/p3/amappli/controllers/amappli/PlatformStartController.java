package isika.p3.amappli.controllers.amappli;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import isika.p3.amappli.dto.amap.NewUserDTO;
import isika.p3.amappli.dto.amappli.NewTenancyDTO;
import isika.p3.amappli.dto.amappli.ValueDTO;
import isika.p3.amappli.entities.tenancy.ColorPalette;
import isika.p3.amappli.entities.tenancy.ContentBlock;
import isika.p3.amappli.entities.tenancy.FontChoice;
import isika.p3.amappli.exceptions.EmailAlreadyExistsException;
import isika.p3.amappli.service.amap.ContentBlockService;
import isika.p3.amappli.service.amap.UserService;
import isika.p3.amappli.service.amappli.TenancyService;
import jakarta.validation.Valid;


@Controller
@RequestMapping("/start/")
public class PlatformStartController {

    private final UserService userService;
    private final TenancyService tenancyService;
    private final ContentBlockService contentBlockService;

    public PlatformStartController(UserService userService, TenancyService tenancyService, ContentBlockService contentBlockService) {
        this.userService = userService;
        this.tenancyService = tenancyService;
        this.contentBlockService = contentBlockService;
    }
    

    @GetMapping("/signup")    
    public String plateformUserSignUpForm(Model model){
        NewUserDTO newUserDTO = new NewUserDTO();
        model.addAttribute("newUserDTO",newUserDTO);
        return "amappli/front/platformstart/signup";
    }

    @PostMapping("/signup")
    public String plateformUserSignup(@Valid @ModelAttribute NewUserDTO newUserDTO, BindingResult result, Model model){
        if(result.hasErrors()){
            return "amappli/front/platformstart/signup";
        }
        
        // Write user in DB
        try {
            userService.addPlatformUser(newUserDTO);
        }
        catch (EmailAlreadyExistsException e)
        {
            model.addAttribute("emailError", e.getMessage());
            return "amappli/platformlogin/signup";
        }
        return "amappli/front/platformstart/signupdone";
    }

    @GetMapping("/creation")
    public String createTenancy(Model model) {
        NewTenancyDTO newTenancyDTO = new NewTenancyDTO();
        // Three possibles values
        List<ValueDTO> values = new ArrayList<ValueDTO>();
        values.add(new ValueDTO());
        values.add(new ValueDTO());
        values.add(new ValueDTO());
        newTenancyDTO.setValues(values);
        model.addAttribute("newTenancyDTO",newTenancyDTO);
        // Give the color palettes options for the form
        model.addAttribute("colorPalettes",ColorPalette.values());
        model.addAttribute("fontChoices", FontChoice.values());
        return "amappli/front/platformstart/createtenancy";
    }

    @PostMapping("/creation")
    public String tenancyCreation(@ModelAttribute("newTenancyDTO") NewTenancyDTO newTenancyDTO) {

        tenancyService.createTenancyFromWelcomeForm(newTenancyDTO);
        return "amappli/front/platformstart/signupdone";
    }

    @GetMapping("/showimg")
    public String tryToShowImg(Model model){
        ContentBlock cb = contentBlockService.findById(1L);
        String base64Image = "data:"+cb.getContentImgTypeMIME()+";base64," + cb.getContentImg();
        model.addAttribute("image", base64Image);
        return "amappli/front/platformstart/showimg";
    }
    
}
