-- Запросы для тестирования

--Домашнее задание к лекции «Продвинутая выборка данных»

-- Задание 1


insert into public.Zhanr(zhanrID, zhanrName) values (1, 'pop') ON CONFLICT (zhanrID) DO NOTHING;
insert into public.Zhanr(zhanrID, zhanrName) values (2, 'rock') ON CONFLICT (zhanrID) DO NOTHING;
insert into public.Zhanr(zhanrID, zhanrName) values (3, 'grang') ON CONFLICT (zhanrID) DO NOTHING;



insert into public.Artist(artistID, artistName) values (1, 'Malikov') ON CONFLICT (artistID) DO NOTHING;
insert into public.Artist(artistID, artistName) values (2, 'Nirvana') ON CONFLICT (artistID) DO NOTHING;
insert into public.Artist(artistID, artistName) values (3, 'Kirkorov') ON CONFLICT (artistID) DO NOTHING;
insert into public.Artist(artistID, artistName) values (4, 'Metallica') ON CONFLICT (artistID) DO NOTHING;
insert into public.Artist(artistID, artistName) values (5, 'Aerosmith') ON CONFLICT (artistID) DO NOTHING;





insert into public.Album(albumID, albumName, albumYear) values (1, 'popka moya', 2002) ON CONFLICT (albumID) DO NOTHING;
insert into public.Album(albumID, albumName, albumYear) values (2, 'vesna', 2003) ON CONFLICT (albumID) DO NOTHING;
insert into public.Album(albumID, albumName, albumYear) values (3, 'nevermind', 1998) ON CONFLICT (albumID) DO NOTHING;
insert into public.Album(albumID, albumName, albumYear) values (4, 'ballads', 1996) ON CONFLICT (albumID) DO NOTHING;
insert into public.Album(albumID, albumName, albumYear) values (5, 'best', 1999) ON CONFLICT (albumID) DO NOTHING;
insert into public.Album(albumID, albumName,albumYear) values (6, 'zaika moya', 2005) ON CONFLICT (albumID) DO NOTHING;




insert into public.Tracks(trackID, trackName, trackDuration, trackAlbumId ) values (1, 'crying', 251, 5) ON CONFLICT (trackID) DO NOTHING;
insert into public.Tracks(trackID, trackName, trackDuration, trackAlbumId ) values (2, 'entersadman', 302, 4) ON CONFLICT (trackID) DO NOTHING;
insert into public.Tracks(trackID, trackName, trackDuration, trackAlbumId ) values (3, 'TraLaLa', 203, 1) ON CONFLICT (trackID) DO NOTHING;
insert into public.Tracks(trackID, trackName, trackDuration, trackAlbumId ) values (4, 'sunnyday', 343, 2) ON CONFLICT (trackID) DO NOTHING;
insert into public.Tracks(trackID, trackName, trackDuration, trackAlbumId ) values (5, 'spirit', 224, 3) ON CONFLICT (trackID) DO NOTHING;
insert into public.Tracks(trackID, trackName, trackDuration, trackAlbumId ) values (6, 'whiskey', 295, 4) ON CONFLICT (trackID) DO NOTHING;



insert into public.Compilation(compilationID, compilationName, compilationYear) values (1, 'Heavy', 1999) ON CONFLICT (compilationID) DO NOTHING;
insert into public.Compilation(compilationID, compilationName, compilationYear) values (2, 'SweetRock', 2002) ON CONFLICT (compilationID) DO NOTHING;
insert into public.Compilation(compilationID, compilationName, compilationYear) values (3, 'sheep songs', 2004) ON CONFLICT (compilationID) DO NOTHING;
insert into public.Compilation(compilationID, compilationName, compilationYear) values (4, 'mixed', 2011) ON CONFLICT (compilationID) DO NOTHING;



insert into public.ArtistsGenres(zhanrID, artistID) values (1, 1) ON CONFLICT (zhanrID, artistID) DO NOTHING;
insert into public.ArtistsGenres(zhanrID, artistID) values (1, 3) ON CONFLICT (zhanrID, artistID) DO NOTHING;
insert into public.ArtistsGenres(zhanrID, artistID) values (2, 4) ON CONFLICT (zhanrID, artistID) DO NOTHING;
insert into public.ArtistsGenres(zhanrID, artistID) values (2, 5) ON CONFLICT (zhanrID, artistID) DO NOTHING;
insert into public.ArtistsGenres(zhanrID, artistID) values (3, 2) ON CONFLICT (zhanrID, artistID) DO NOTHING;



insert into public.ArtistAlbums(albumID, artistID) values (1, 3) ON CONFLICT (albumID, artistID) DO NOTHING;
insert into public.ArtistAlbums(albumID, artistID) values (2, 1) ON CONFLICT (albumID, artistID) DO NOTHING;
insert into public.ArtistAlbums(albumID, artistID) values (3, 2) ON CONFLICT (albumID, artistID) DO NOTHING;
insert into public.ArtistAlbums(albumID, artistID) values (4, 4) ON CONFLICT (albumID, artistID) DO NOTHING;
insert into public.ArtistAlbums(albumID, artistID) values (5, 4) ON CONFLICT (albumID, artistID) DO NOTHING;
insert into public.ArtistAlbums(albumID, artistID) values (5, 5) ON CONFLICT (albumID, artistID) DO NOTHING;
insert into public.ArtistAlbums(albumID, artistID) values (6, 3) ON CONFLICT (albumID, artistID) DO NOTHING;


insert into public.CompilationTracks(compilationID, trackID) values (1, 2) ON CONFLICT (compilationID, trackID) DO NOTHING;
insert into public.CompilationTracks(compilationID, trackID) values (1, 6) ON CONFLICT (compilationID, trackID) DO NOTHING;
insert into public.CompilationTracks(compilationID, trackID) values (2, 1) ON CONFLICT (compilationID, trackID) DO NOTHING;
insert into public.CompilationTracks(compilationID, trackID) values (2, 5) ON CONFLICT (compilationID, trackID) DO NOTHING;
insert into public.CompilationTracks(compilationID, trackID) values (2, 6) ON CONFLICT (compilationID, trackID) DO NOTHING;
insert into public.CompilationTracks(compilationID, trackID) values (3, 3) ON CONFLICT (compilationID, trackID) DO NOTHING;
insert into public.CompilationTracks(compilationID, trackID) values (3, 4) ON CONFLICT (compilationID, trackID) DO NOTHING;