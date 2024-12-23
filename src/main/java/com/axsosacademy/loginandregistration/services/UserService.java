package com.axsosacademy.loginandregistration.services;


import com.axsosacademy.loginandregistration.models.LoginUser;
import com.axsosacademy.loginandregistration.models.User;
import com.axsosacademy.loginandregistration.repositories.UserRepository;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import java.util.Optional;

@Service
public class UserService {
    private final UserRepository userRepository;
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public User register(User newUser, BindingResult bindingResult) {
        // Check if email is already taken
        Optional<User> potentialUser = userRepository.findByEmail(newUser.getEmail());
        if (potentialUser.isPresent()) {
            bindingResult.rejectValue("email", "email.exists", "Email already in use!");
        }

        // Check if passwords match
        if (!newUser.getPassword().equals(newUser.getConfirm())) {
            bindingResult.rejectValue("confirm", "Matches", "The Confirm Password must match Password!");
        }

        // Return null if result has errors
        if (bindingResult.hasErrors()) {
            return null;
        }

        // Hash and set password, save user to database
        String hashedPassword = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
        newUser.setPassword(hashedPassword);
        return userRepository.save(newUser);
    }

    public User login(LoginUser newLoginObject, BindingResult bindingResult) {
        // Find user in the DB by email
        Optional<User> potentialUser = userRepository.findByEmail(newLoginObject.getEmail());
        if (potentialUser.isEmpty()) {
            bindingResult.rejectValue("email", "NotFound", "Email not found!");
            return null;
        }

        // Get the user object
        User user = potentialUser.get();

        // Reject if BCrypt password match fails
        if (!BCrypt.checkpw(newLoginObject.getPassword(), user.getPassword())) {
            bindingResult.rejectValue("password", "Invalid", "Invalid Password!");
        }

        // Return null if result has errors
        if (bindingResult.hasErrors()) {
            return null;
        }
        else {
            return user;
        }

    }

}
