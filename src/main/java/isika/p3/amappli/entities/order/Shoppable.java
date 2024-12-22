package isika.p3.amappli.entities.order;

import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Inheritance;
import jakarta.persistence.InheritanceType;
import jakarta.persistence.OneToMany;
import lombok.Getter;
import lombok.Setter;

@Entity
@Inheritance(strategy = InheritanceType.JOINED)
public abstract class Shoppable {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Getter @Setter
    private Long id;
	@Getter @Setter
	@OneToMany(mappedBy = "shoppable", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<ShoppingCartItem> shoppingCartItems = new ArrayList<ShoppingCartItem>();
	
	public abstract int getStock();
	public abstract double getPrice();
	public abstract String getInfo();
	public abstract String getImage();
	
}
