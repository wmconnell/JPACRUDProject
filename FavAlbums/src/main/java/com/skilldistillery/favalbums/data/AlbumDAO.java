package com.skilldistillery.favalbums.data;

import com.skilldistillery.favalbums.entities.Album;

public interface AlbumDAO {

	Album findById(int id);
}
