package com.example.jwtsecurity.service;

import com.example.jwtsecurity.domain.Role;
import com.example.jwtsecurity.repository.RoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class RoleService {

    @Autowired
    private RoleRepository repository;

    public Role addRole(Role role) {
       return  repository.save(role);
    }
}
