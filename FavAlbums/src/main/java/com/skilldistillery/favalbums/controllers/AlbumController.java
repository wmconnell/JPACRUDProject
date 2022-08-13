package com.skilldistillery.favalbums.controllers;

import java.util.List;

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

	@RequestMapping(path = { "/", "index.do" }, method = RequestMethod.GET)
	public String index(Model model) {

		return "index";
	}

	@RequestMapping(path = "getAlbum.do")
	public String getFilm(Integer aid, Model model) {
		Album album = albumDao.findById(aid);
		model.addAttribute("album", album);
		return "album/show";
	}

	@RequestMapping(path = "getAllAlbums.do")
	public String getFavoriteAlbums(Integer aid, Model model) {
		List<Album> albums = albumDao.findAll();
		model.addAttribute("albums", albums);
		return "album/showall";
	}

	@RequestMapping(path = "goToAddNewAlbum.do", method = RequestMethod.GET)
	public String goToAddNewAlbum() {
		return "album/newalbum";
	}

	@RequestMapping(path = "addNewAlbum.do", method = RequestMethod.POST)
	public String addNewAlbum(Album album, Model model) {
		model.addAttribute("album", album);
		album = albumDao.addNewAlbum(album);
		return "getAllAlbums.do";
	}
}
