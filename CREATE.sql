CREATE TABLE IF NOT EXISTS public.Zhanr
(
zhanrID int primary key,
zhanrName VARCHAR(128) not null UNIQUE
);



CREATE TABLE IF NOT EXISTS public.Artist
(
artistID int primary key,
artistName VARCHAR(128) not null UNIQUE
);




CREATE TABLE IF NOT EXISTS public.Album
(
albumID int primary key,
albumName VARCHAR(128) not null UNIQUE,
albumYear int not null CHECK (albumYear >= 1980 AND albumYear <= 2023)
);




CREATE TABLE IF NOT EXISTS public.Tracks

(
trackID int primary key,
trackName VARCHAR(128) not null UNIQUE,
trackDuration integer not null,
trackAlbumId int references public.Album(albumID)
);




CREATE TABLE IF NOT EXISTS public.Compilation
(
compilationID int primary key,
compilationName VARCHAR(128) not null UNIQUE,
compilationYear int not null CHECK (compilationYear >= 1980 AND compilationYear <= 2023)

);





CREATE TABLE IF NOT EXISTS public.ArtistsGenres
(
zhanrID int references public.Zhanr(zhanrID),
artistID int references public.Artist(artistID),
primary key(zhanrID, artistID)

);




CREATE TABLE IF NOT EXISTS public.ArtistAlbums
(
albumID int references public.Album(albumID),
artistID int references public.Artist(artistID),
primary key(albumID, artistID)

);






CREATE TABLE IF NOT EXISTS public.CompilationTracks
(
compilationID int references public.Compilation(CompilationID),
trackID int references public.Tracks(trackID),
primary key(compilationID, trackID)

);


