-- �������� � ��� ������ ��������, �������� � 2018 ����
SELECT album_title, release_year_album FROM albums
   WHERE release_year_album = 2018

-- �������� � ����������������� ������ ����������� �����
SELECT track_name, duration FROM tracks
   ORDER BY duration DESC
   LIMIT 1

-- �������� ������, ����������������� ������� �� ����� 3,5 ������
SELECT track_name, duration FROM tracks
   WHERE duration >= '00:03:30'
   ORDER BY duration DESC

-- �������� ���������, �������� � ������ � 2018 �� 2020 ��� ������������
SELECT collection_name FROM collections
   WHERE release_year_collection BETWEEN 2018 AND 2020

-- �����������, ��� ��� ������� �� 1 �����
SELECT performer_name FROM performers
   WHERE performer_name NOT LIKE '% %'

-- �������� ������, ������� �������� ����� "���"/"my"
SELECT track_name FROM tracks
   WHERE lower(track_name) LIKE '%my%'