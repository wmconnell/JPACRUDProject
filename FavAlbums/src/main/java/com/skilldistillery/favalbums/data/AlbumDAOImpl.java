package com.skilldistillery.favalbums.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.favalbums.entities.Album;

@Service
@Transactional
public class AlbumDAOImpl implements AlbumDAO {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Album findById(int id) {
		return em.find(Album.class, id);
	}

	@Override
	public List<Album> findAll() {
		String jpql = "SELECT a FROM Album a";
		List<Album> albums = em.createQuery(jpql, Album.class).getResultList();
		return albums;
	}

	@Override
	public Album addNewAlbum(Album album) {
		em.persist(album);
		
		em.flush();
		return album;
	}

	@Override
	public void deleteAlbum(int id) {
		Album album = em.find(Album.class, id);
		
		em.remove(album);
	}
}
