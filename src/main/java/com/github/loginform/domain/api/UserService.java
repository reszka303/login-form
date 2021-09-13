package com.github.loginform.domain.api;

import java.util.ArrayList;
import java.util.List;

public class UserService {
    private List<UserRegistration> userRegistrations = new ArrayList<>();

    public void register(UserRegistration userRegistration) {
        UserRegistration userToSave = GetUserRegistration.get(userRegistration);
        userRegistrations.add(userToSave);
    }

    private static class GetUserRegistration {
        static UserRegistration get(UserRegistration userRegistration) {
            return new UserRegistration(
                    userRegistration.getUsername(),
                    userRegistration.getEmail(),
                    userRegistration.getPassword()
            );
        }
    }
}
