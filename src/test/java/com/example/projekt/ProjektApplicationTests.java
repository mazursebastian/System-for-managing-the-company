package com.example.projekt;

import com.example.projekt.entities.Employee;
import com.example.projekt.entities.User;
import com.example.projekt.repository.UserRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.boot.test.context.SpringBootTest;

import static org.assertj.core.api.Assertions.assertThat;

@DataJpaTest
@SpringBootTest
class ProjektApplicationTests {
    @Autowired
    UserRepository userRepository;

    @Autowired
    private TestEntityManager testEntityManager;


    @Test
    void contextLoads() {
        User user = new User();
        user.setUsername("michalov");
        user.setPassword("michalov123");
        user.setPasswordConfirm("michalov123");

        User savedUser = userRepository.save(user);
        User existUser = testEntityManager.find(User.class, savedUser.getId());
        assertThat(user.getUsername()).isEqualTo(existUser.getUsername());



    }


}
