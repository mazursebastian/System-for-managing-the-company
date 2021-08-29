package com.example.projekt;

import com.example.projekt.entities.Role;
import com.example.projekt.entities.User;
import com.example.projekt.repository.RoleRepository;
import com.example.projekt.repository.UserRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.test.annotation.Rollback;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@DataJpaTest
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
@Rollback(value = false)
public class UserRepTests {
    @Autowired
    UserRepository userRepository;

    @Autowired
    private TestEntityManager testEntityManager;

    @Autowired
    private RoleRepository roleRepository;


    @Test
    public void AddUserTest() {
        User user = new User();
        user.setUsername("michalov");
        user.setPassword("michalov123");
        user.setPasswordConfirm("michalov123");
        User savedUser = userRepository.save(user);
        User existUser = testEntityManager.find(User.class, savedUser.getId());
        assertThat(user.getUsername()).isEqualTo(existUser.getUsername());
    }

    @Test
    public void testFindByUserName() {
        String username = "blejntypie";
        User user = userRepository.findByUsername(username);
        assertThat(user).isNotNull();
    }


    @Test
    public void testCreateRoles() {
        Role user = new Role("User");
        Role admin = new Role("Admin");

        roleRepository.saveAll(List.of(user, admin));

        List<Role> listRoles = roleRepository.findAll();

        assertThat(listRoles.size()).isEqualTo(2);
    }
    @Test
    public void testAddRoleToNewUser() {
        Role roleAdmin = roleRepository.findByName("User");

        User user = new User();
        user.setUsername("mikelijordan");
        user.setPassword("mikeli2020");
        user.setPasswordConfirm("mikeli2020");

        User savedUser = userRepository.save(user);

        assertThat(savedUser.getRoles().size()).isEqualTo(1);
    }

}
