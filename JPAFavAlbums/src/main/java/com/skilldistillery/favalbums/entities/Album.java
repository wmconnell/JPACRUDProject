package com.skilldistillery.favalbums.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Album {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String name;
	
	private String band;
	
	private Integer length;
	
	@Column(name="album_cover_url")
	private String albumCoverUrl;
	
	private String genre;
	
	@Column(name="release_year")
	private Integer releaseYear;
	
	@Column(name="number_of_songs")
	private Integer numberOfSongs;
	
	@Column(name="favorite_song")
	private String favoriteSong;
	

	public String getBand() {
		return band;
	}

	public void setBand(String band) {
		this.band = band;
	}

	public Integer getLength() {
		return length;
	}

	public void setLength(Integer length) {
		this.length = length;
	}

	public String getAlbumCoverUrl() {
		return albumCoverUrl;
	}

	public void setAlbumCoverUrl(String albumCoverUrl) {
		this.albumCoverUrl = albumCoverUrl;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public Integer getReleaseYear() {
		return releaseYear;
	}

	public void setReleaseYear(Integer releaseYear) {
		this.releaseYear = releaseYear;
	}

	public Integer getNumberOfSongs() {
		return numberOfSongs;
	}

	public void setNumberOfSongs(Integer numberOfSongs) {
		this.numberOfSongs = numberOfSongs;
	}

	public String getFavoriteSong() {
		return favoriteSong;
	}

	public void setFavoriteSong(String favoriteSong) {
		this.favoriteSong = favoriteSong;
	}

	public Album() {
		super();
	}


	public Album(int id, String name, String band, Integer length, String albumCoverUrl, String genre,
			Integer releaseYear, Integer numberOfSongs, String favoriteSong) {
		super();
		this.id = id;
		this.name = name;
		this.band = band;
		this.length = length;
		this.albumCoverUrl = albumCoverUrl;
		this.genre = genre;
		this.releaseYear = releaseYear;
		this.numberOfSongs = numberOfSongs;
		this.favoriteSong = favoriteSong;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Album [id=" + id + ", name=" + name + ", band=" + band + ", length=" + length + ", albumCoverUrl="
				+ albumCoverUrl + ", genre=" + genre + ", releaseYear=" + releaseYear + ", numberOfSongs="
				+ numberOfSongs + ", favoriteSong=" + favoriteSong + "]";
	}

}
