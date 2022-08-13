package com.skilldistillery.favalbums.data;

import java.util.List;

import com.skilldistillery.favalbums.entities.Album;

public interface AlbumDAO {

	Album findById(Integer id);
	List<Album> findAll();
	Album addNewAlbum(Album album);
	void deleteAlbum(int id);
	Album updateAlbum(int id, Album album);
	
}
