package com.grooming.dao;

import java.util.List;

import com.grooming.dto.PaylogDTO;

public interface PaylogDAO {
	public List<PaylogDTO> selectAllIPayed(PaylogDTO paylogDTO);

}
