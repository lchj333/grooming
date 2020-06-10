package com.grooming.dao;

import java.util.List;

import com.grooming.dto.BookMarkDTO;

public interface BookMarkDAO {
	public List<BookMarkDTO> selectBookMark(BookMarkDTO BookMarkDTO);
	public void insertBookmark(BookMarkDTO BookMarkDTO);
	public void deleteBookMark(BookMarkDTO BookMarkDTO);
}
