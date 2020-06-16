package com.grooming.dao;

import java.util.List;

import com.grooming.dto.BookMarkDTO;
import com.grooming.dto.RegistrationDTO;

public interface BookMarkDAO {
	public List<RegistrationDTO> selectBookMark(String mb_id);
	public void insertBookmark(BookMarkDTO BookMarkDTO);
	public void deleteBookMark(BookMarkDTO BookMarkDTO);
}
