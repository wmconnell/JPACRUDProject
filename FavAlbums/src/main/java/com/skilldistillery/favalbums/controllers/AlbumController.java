package com.skilldistillery.favalbums.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.skilldistillery.favalbums.data.AlbumDAO;
import com.skilldistillery.favalbums.entities.Album;

@Controller
public class AlbumController {
	
	@Autowired
	private AlbumDAO albumDao;
	
	
	@RequestMapping(path={"/","index.do"}, method = RequestMethod.GET)
	public String index(Model model) {
		
		return "index";
	}
	
	@RequestMapping(path="getAlbum.do")
	public String getFilm(Integer aid, Model model) {
		Album album = albumDao.findById(aid);
		model.addAttribute("album", album);
		return "album/show";
	}
}
