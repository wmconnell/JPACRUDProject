package com.skilldistillery.favalbums.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class AlbumTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Album album;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAFavAlbums");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		album = em.find(Album.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		album = null;
	}

	@Test
	void test_Album_entity_mapping() {
		assertNotNull(album);
		assertEquals("...And Justice for All", album.getName());
	}
	
	

	
	
}
