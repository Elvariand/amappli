package isika.p3.amappli.repo;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import isika.p3.amappli.entities.auth.Role;

@Repository
public interface RoleRepository extends CrudRepository<Role, Long>{

}
