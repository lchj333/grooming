package com.grooming.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.grooming.dto.DesignerDTO;
import com.grooming.dto.PaylogDTO;

import sun.security.krb5.internal.PAData;

public interface DesinerDAO {
	public void insertMoney(DesignerDTO DesignerDTO);
	public void updateDes(DesignerDTO DesignerDTO);
	public List<DesignerDTO> selectAllDes();
}
