package com.example.jwtsecurity.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Builder
public class BookRequest {

    private Integer id;
    private String author;
    private String isbn;
}
