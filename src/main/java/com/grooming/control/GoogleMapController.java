package com.grooming.control;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grooming.dao.ShopListDAO;
import com.grooming.dto.ShopListDTO;

@Controller
public class GoogleMapController {

	@Inject
	ShopListDAO dao;
	
	@RequestMapping(value = "mapstart")
	public String mapstart() {
		return "searchMap";
	}
	
	@RequestMapping(value = "mapps")
	public String googleMaps(@RequestParam(value = "names")String name, Model m, ShopListDTO dto) {
		dto.setRef_shopname(name);
		List<ShopListDTO> slist = dao.searchInfo(dto);
		m.addAttribute("slist", slist);
			
		return "Map";
	}
	
	
}
