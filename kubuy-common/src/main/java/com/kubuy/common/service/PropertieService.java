package com.kubuy.common.service;

import org.springframework.stereotype.Service;

import com.kubuy.common.spring.extend.PropertyConfig;

@Service
public class PropertieService {

    @PropertyConfig
    public String REPOSITORY_PATH;
    
    @PropertyConfig
    public String IMAGE_BASE_URL;

}
