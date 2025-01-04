package isika.p3.amappli.security;

import java.io.IOException;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.stereotype.Component;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Component
public class CustomAuthenticationEntryPoint implements AuthenticationEntryPoint {

    @Override
    public void commence(HttpServletRequest request, HttpServletResponse response,
            AuthenticationException authException) throws IOException, ServletException {

        // Get the tenancyAlias from the request
        String uri = request.getRequestURI();
        String loginPageAddress = determineLoginPageAddress(uri);

        response.sendRedirect(loginPageAddress);
    }

    private String determineLoginPageAddress(String uri){
        System.out.println("the uri :"+uri);
        // Check if  URI starts with /{tenancyAlias}/something (meaning we need to go the the appropriate tenancy login)
        int slashIndex = uri.indexOf("/",17); // check if there's a slash after the /amappli/sectest/
        System.out.println("the slash index :"+slashIndex);
        if(slashIndex > 17){ // there is a /part/ at the start of the url
            String potentialTenancyAlias = uri.substring(17, slashIndex);
            System.out.println("the potential tenancy alias :"+potentialTenancyAlias);
            if(!potentialTenancyAlias.equals("amappli")){ //if the potentialTenancyAlias is Amappli, that means that the uri is in fact a platform URI
                return "/Amappli/sectest/" + potentialTenancyAlias + "/login";
            }
        }

        return "/Amappli/sectest/login";
    }
    
}
