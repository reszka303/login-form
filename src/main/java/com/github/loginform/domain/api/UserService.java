package com.github.loginform.domain.api;

public class UserService {
    public UserRegistration register(UserRegistration userRegistration) {
       return GetUserRegistration.get(userRegistration);
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
