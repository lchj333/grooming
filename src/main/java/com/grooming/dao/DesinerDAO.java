package com.grooming.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.grooming.dto.DesignerDTO;
import com.grooming.dto.PaylogDTO;

import sun.security.krb5.internal.PAData;

public interface DesinerDAO {
	//금액입력(결제테이블)
	public void insertMoney(DesignerDTO DesignerDTO);
	//금액입력(디자이너테이블)
	public void updateDes(DesignerDTO DesignerDTO);
	//금액 수정 (사용금액 마이너스, 디자이너테이블)
	public void updateDesMinus(DesignerDTO DesignerDTO);
	//전체 금액 출력 메소드
	public List<DesignerDTO> selectPointOne(DesignerDTO DesignerDTO);
	
	public List<DesignerDTO> selectAllDes();
}
