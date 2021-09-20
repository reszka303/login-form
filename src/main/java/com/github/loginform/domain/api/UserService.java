package com.github.loginform.domain.api;

import com.github.loginform.domain.user.User;

public class UserService {
    public void register(UserRegistration userRegistration) {
        User toSave = UserMapper.map(userRegistration);
    }

    private static class UserMapper {
        static User map(UserRegistration userRegistration) {
            return new User(
                    userRegistration.getUsername(),
                    userRegistration.getPassword()
            );
        }
    }
}
