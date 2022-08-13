package com.skilldistillery.favalbums.data;

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
}
