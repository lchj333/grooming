package com.grooming.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.grooming.dto.PaylogDTO;


public interface PaylogDAO {
	public void insertPay(PaylogDTO PaylogDTO);
	public List<PaylogDTO> selectAllPay();

}
