package isika.p3.amappli.entities.user;

import jakarta.persistence.Embeddable;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Embeddable
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ContactInfo {
    
    private String name;
    private String firstName;
    private String phoneNumber;

}
