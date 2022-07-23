-- Название и год выхода альбомов, вышедших в 2018 году
SELECT album_title, release_year_album FROM albums
   WHERE release_year_album = 2018

-- Название и продолжительность самого длительного трека
SELECT track_name, duration FROM tracks
   ORDER BY duration DESC
   LIMIT 1

-- Название треков, продолжительность которых не менее 3,5 минуты
SELECT track_name, duration FROM tracks
   WHERE duration >= '00:03:30'
   ORDER BY duration DESC

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT collection_name FROM collections
   WHERE release_year_collection BETWEEN 2018 AND 2020

-- Исполнители, чье имя состоит из 1 слова
SELECT performer_name FROM performers
   WHERE performer_name NOT LIKE '% %'

-- Название треков, которые содержат слово "мой"/"my"
SELECT track_name FROM tracks
   WHERE lower(track_name) LIKE '%my%'