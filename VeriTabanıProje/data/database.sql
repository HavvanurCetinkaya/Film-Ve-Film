CREATE TABLE Film(
    F�lmAd� VARCHAR(100),
    Yonetmen VARCHAR(100),
    Yazar VARCHAR(100) ,
    Y�ld�zlar VARCHAR(100),
    Tur VARCHAR(20),
    Sure VARCHAR(100),
    Yay�nY�l� INT,
    D�l VARCHAR(20),
    Ulke VARCHAR(30),
    Imdb FLOAT
    
);

-- Veri ekleme i�lemi
INSERT INTO Film (F�lmAd�, Yonetmen, Yazar, Y�ld�zlar, Tur, Yay�nY�l�, Sure, D�l, Ulke, Imdb)
VALUES
    ('Schindler s List', 'Steven Spielberg', 'homas Keneally- Steven Zaillian', 'Liam Neeson-Ralp Fiennes', 'Dram', '1993', '3 saat 5 dakika', '�ngilizce', 'ABD', '9.0'),
    ('Fight Club', 'David Fincher', 'David Fincher-Jim Uhis', 'Brad Bitt- Helena Bonham Carter','Gerilim', '1999', '2 saat 19 dakika','�ngilizce', 'ABD', '8.8'),
    ('Piyanist', 'Roman Polanski', 'Ronald Harwood- Wladyslaw Szpilman','Adrien Brody- Frank Finlay', 'Dram', '2002','2 saat 30 dakika', 'Polonyaca-Almanca', 'Polonya', '8.5'),
	('Whiplash', 'Damien Chazelle', 'Damien Chazelle','Miles Teller- J.K.Simmons', 'Dram', '2014', '1 saat 47 dakika','�ngilizce', 'ABD', '8.5'),
    ('Cinnet', 'Stanley Kubrick', 'Stephen King-Stanley Kubrick- Diane Johnson','Jack Nicholson- Shelley Duvall', 'Korku', '1980', '2 saat 26 dakika', '�ngilizce', 'ABD', '8.4'),
    ('Amerikan G�zeli', 'Sam Mendes', 'Alan Ball','Kevin Spacey-Annette Bening', 'Romantik Komedi', '1999', '2 saat 2 dakika', '�ngilizce', 'ABD', '8.3'),
	('One Day', 'Lone Scherfig', 'David Nicholls','Anne Hathaway- Jim Sturgess', 'Romantik', '2011','1 saat 47 dakika', '�ngilizce', '�ngiltere', '7.0'),
    ('Delibal', 'Ali Bilgin', 'Bilal K�vrak', '�a�atay Ulusoy-Leyla Lydia Tu�utlu', 'Romantik', '2015', '1 saat 57 dakika', 'T�rk�e', 'T�rkiye', '6.7'),
    ('K�rm�z�', 'Domee Shi', 'Domee Shi- Julia Cho','Rosalie �an- Sandra Ah', 'Animasyon', '2022', '1 saat 40 dakika', '�ngilizce', 'ABD', '7.0'),
	('Sevimli Canavarlar', 'Pete Doktor', 'Jill Culton','Billy Kristal- John Goodman', 'Animasyon', '2001', '1 saat 32 dakika', '�ngilizce', 'ABD', '8.1'),
    ('Karlar �lkesi', 'Chris Buck- Jennifer Lee', 'Chris Buck','Kristen Bell- Idina Menzel', 'Animasyon', '2013', '1 saat 42 dakika', '�ngilizce', 'ABD', '7.4'),
    ('Romantik Komedi', 'Ket�e', 'Ceren Aslan- Asl� Zengin','Sinem Kobal- Cemal H�nal', 'Romantik Komedi', '2010', '1 saat 35 dakika', 'T�rk�e', 'T�rkiye', '5.3'),
    ('Truman Show', 'Peter Weir', 'Andrew Niccol', 'J�m Carrey- Ed Harris', 'Komedi', '1998','1 saat  43 dakika', '�ngilizce', 'ABD', '8.2'),
    ('Esaretin Bedeli', 'Frank Darabont', 'Stephen King','Tim Robbins-Morgan Freeman','Dram', '1994', '2 saat 22 dakika', '�ngilizce', 'ABD', '9.3'),
    ('Ba�lang��', 'Christopher Nolan', 'Christopher Nolan','Leonardo DiCaprio-Ellen Page', 'Bilim Kurgu', '2010', '2 saat 28 dakika', '�ngilizce', 'ABD', '8.8'),
	('Kara ��valye', 'Christopher Nolan', 'Chriistopher Nolan- Jonathan Nolan', 'Christian Bale- Heath Ledger', 'Aksiyon', '2008', '2 saat 32 dakika', '�ngilizce', 'ABD', '9.0'),
    ('Y�ld�zlararas�', 'Christopher Nolan', 'Jonathan Nolan-Christopher Nolan', 'Matthew McConaughey-Anne Hathaway','Bilim Kurgu', '2014', '2 saat 49 dakika','�ngilizce', 'ABD,�ngiltere, Kanada', '8.6'),
    ('Ex Machina', 'Alex Garland', 'Alex Garland','Alicia Vikander- Oscar Isaac', 'Bilim Kurgu', '2014','1 saat 48 dakika', '�ngilizce', '�ngiltere', '7.7'),
	('Se7en', 'David Fincher', 'Andrew Kevin Walker','Brad Pitt- Morgan Freeman', 'Gerilim', '1995', '2 saat 7 dakika','�ngilizce', 'ABD', '8.6'),
    ('Zindan Adas�', ' Martin Scorsese', 'Dennis Lehane-Laeta Kalogridis','Leonardo DiCaprio-Mark Ruffalo', 'Gerilim', '2010', '2 saat 18 dakika', '�ngilizce-Almanca', 'ABD', '8.1'),
    ('Gone Girl', 'David Fincher', 'Gillian Flynn','Ben Affleck- Rosamund Pike', 'Gerilim', '2014', '2 saat 29 dakika', '�ngilizce', 'ABD', '8.1'),
	('Kapan', 'Jordan Peele', 'Jordan Peele','Daniel Kaluuya- Allison Williams', 'Korku', '2017','1 saat 44 dakika', '�ngilizce', 'ABD', '7.7'),
    ('Ayin', 'Ari Aster', 'Ari Aster', 'Toni Collette- Milly Shapiro', 'Korku', '2018', '2 saat 7 dakika', '�ngilizce', 'ABD', '7.3'),
    ('Korku Seans�', 'James Wan', 'Chad Hayes- Carey W. Hayes','Vera Farmiga- Patrick Wilson', 'Korku', '2013', '1 saat 52 dakika', '�ngilizce', 'ABD', '7.5'),
	('Senden Nefret Etmemin 10 Sebebi', 'Gil Junger', 'Karen McCullah- Kristen Smith','Heath Ledger- Julia Stiles', 'Romantik', '1999', '1 saat 37 dakika', '�ngilizce', 'ABD', '7.3'),
    ('Teklif', 'Anne Fletcher', 'Pete Chiarelli','Sandra Bullock-Ryan Reynolds', 'Romantik Komedi', '2009', '1 saat 48 dakika', '�ngilizce', 'ABD,Kanada', '6.7'),
    ('A�k Engel Tan�maz', 'Roger Michell', 'Richard Curtis','Hugh Grant-Julia Roberts', 'Romantik Komedi', '1999', '2 saat 4 dakika', '�ngilizce', '�ngiltere', '7.1'),
    ('Not Defteri', 'Nick Cassaveetes', 'Jeremy Leven-Jan Sardi', 'Ryan Gosling- Rachel McAdams', 'Romantik', '2004','2 saat  3 dakika', '�ngilizce', 'ABD', '7.8'),
    ('Ters Y�z', 'Pete Docter-Ronnie del Carmen', 'Pete Docter- Ronnie del Carmen','Amy Poehler-Bill Hader','Animasyon', '2015', '1 saat 35 dakika', '�ngilizce', 'ABD', '8.1'),
    ('Vizontele', 'Y�lmaz Erdo�an-�mer Faruk Sorak', 'Y�lmaz Erdo�an-�mer Faruk Sorak','Tolga �evik- Cezmi Bask�n', 'Komedi', '2001', '1 saat 50 dakika', 'T�rk�e', 'T�rkiye', '7.9'),
    ('Vay Arkada�', 'Kemal Uzun', 'Kemal Uzun', 'Tolga �evik- Murat Ba�o�lu','Komedi', '2010', '1 saat 48 dakika','T�rk�e', 'T�rkiye', '7.1'),
    ('G.O.R.A', '�mer Faruk Sorak', 'Cem Y�lmaz','Cem Y�lmaz-Rasim �ztekin', 'Komedi', '2004','2 saat 7 dakika', 'T�rk�e', 'T�rkiye', '8.0'),
	('The Martian', 'Ridley Scott', 'Andy Weir-Drew Goddard','Matt Damon-Jessica Chastain', 'Bilim Kurgu', '2015', '2 saat 14 dakika','�ngilizce', 'ABD,Macaristan', '8.0'),
    ('Zor �l�m', ' John McTiernan', 'Roderick Thorp-Jeb Stuart','Bruce Willis-Alan Rickman', 'Aksiyon', '1988', '2 saat 12 dakika', '�ngilizce', 'ABD', '8.2'),
    ('Gladyat�r', 'Ridley Scott', 'David Franzoni-John Logan','Russell Crowe-Connie Nielsen', 'Aksiyon', '2000', '2 saat 35 dakika', '�ngilizce', 'ABD,�ngiltere', '8.5'),
	('Adalet', 'Antoine Fuqua', 'Richard Wenk-Marton Csokas','Denzel Washington-Marton Csokas', 'Aksiyon', '2014','2 saat 12 dakika', '�ngilizce-T�rk�e', 'ABD', '7.2'),
    ('La La Land', 'Damien Chazelle', 'Damien Chazelle', 'Ryan Gosling-Emma Stone', 'M�zikal', '2016', '2 saat 8 dakika', '�ngilizce', 'ABD', '8.0'),
    ('Ne�eli G�nler', 'Robert Wise-Jerome Robbins', 'George Hurdalek-Howard Lindsay','Julie Andrews-Elenor Parker', 'M�zikal', '1965', '2 saat 52 dakika', '�ngilizce', 'ABD', '8.0'),
	('Ya�mur Alt�nda', 'Stanley Donen-Gene Kelly', 'Betty Comden-Adolph Green','Gene Kelly-Debbie Reynolds', 'M�zikal', '1952', '1 saat 43 dakika', '�ngilizce', 'ABD', '8.3'),
    ('Bir Y�ld�z Do�uyor', 'Bradley Cooper', 'Eric Roth-Will Fetters','Lady Gaga-Sam Elliott', 'M�zikal', '2018', '2 saat 16 dakika', '�ngilizce', 'ABD', '7.6'),
    ('Hababam S�n�f�', 'Ertem E�ilmez', 'Umur Bugay','M�nir �zkul-Tar�k Akan', 'Ye�il�am', '1975', '1 saat 27 dakika', 'T�rk�e', 'T�rkiye', '8.8'),
    ('�nek �aban', 'Ertem �aban', 'Sad�k �endil', '�ener �en-U�ur Y�cel', 'Ye�il�am', '1978','1 saat  29 dakika', 'T�rk�e', 'T�rkiye', '7.1'),
    ('D�tt�r� D�nya', 'Halit Refi�', 'Halit Refi�','Sadri Al���k-Belgin Doruk','Ye�il�am', '1962', '1 saat 19 dakika', 'T�rk�e', 'T�rkiye', '7.0'),
    ('Selvi Boylum Al Yazmal�m', 'Ertem E�ilmez', 'Sad�k �endil','Ahmet Mekin-M�jde Ar', 'Romantik', '1978', '1 saat 35 dakika', 'T�rk�e', 'T�rkiye', '8.0'),
    
	
	('Ucuz Roman', 'Quentin Tarantino', 'Quentin Tarantino- Roger Avary', 'John Travolta- Uma Thurman', 'Dram', '1994','2 saat 34 dakika', '�ngilizce', 'ABD', '8.9');

SELECT * FROM Film;

CREATE TABLE Korku (
    F�lmAd� VARCHAR(100),
    Yonetmen VARCHAR(100),
    Yazar VARCHAR(100) ,
    Y�ld�zlar VARCHAR(100),
    Tur VARCHAR(20),
    Sure VARCHAR(100),
    Yay�nY�l� INT,
    D�l VARCHAR(20),
    Ulke VARCHAR(30),
    Imdb FLOAT
    
);
INSERT INTO Korku (F�lmAd�, Yonetmen, Yazar, Y�ld�zlar, Tur, Yay�nY�l�, Sure, D�l, Ulke, Imdb)
VALUES
    
    ('Cinnet', 'Stanley Kubrick', 'Stephen King-Stanley Kubrick- Diane Johnson','Jack Nicholson- Shelley Duvall', 'Korku', '1980', '2 saat 26 dakika', '�ngilizce', 'ABD', '8.4'),
	('Kapan', 'Jordan Peele', 'Jordan Peele','Daniel Kaluuya- Allison Williams', 'Korku', '2017','1 saat 44 dakika', '�ngilizce', 'ABD', '7.7'),
    ('Ayin', 'Ari Aster', 'Ari Aster', 'Toni Collette- Milly Shapiro', 'Korku', '2018', '2 saat 7 dakika', '�ngilizce', 'ABD', '7.3'),
    ('Korku Seans�', 'James Wan', 'Chad Hayes- Carey W. Hayes','Vera Farmiga- Patrick Wilson', 'Korku', '2013', '1 saat 52 dakika', '�ngilizce', 'ABD', '7.5');
	
SELECT * FROM Korku;

CREATE TABLE Dram (
    F�lmAd� VARCHAR(100),
    Yonetmen VARCHAR(100),
    Yazar VARCHAR(100) ,
    Y�ld�zlar VARCHAR(100),
    Tur VARCHAR(20),
    Sure VARCHAR(100),
    Yay�nY�l� INT,
    D�l VARCHAR(20),
    Ulke VARCHAR(30),
    Imdb FLOAT
    
);

INSERT INTO Dram (F�lmAd�, Yonetmen, Yazar, Y�ld�zlar, Tur, Yay�nY�l�, Sure, D�l, Ulke, Imdb)
VALUES
    ('Schindler s List', 'Steven Spielberg', 'homas Keneally- Steven Zaillian', 'Liam Neeson-Ralp Fiennes', 'Dram', '1993', '3 saat 5 dakika', '�ngilizce', 'ABD', '9.0'),
    ('Piyanist', 'Roman Polanski', 'Ronald Harwood- Wladyslaw Szpilman','Adrien Brody- Frank Finlay', 'Dram', '2002','2 saat 30 dakika', 'Polonyaca-Almanca', 'Polonya', '8.5'),
	('Whiplash', 'Damien Chazelle', 'Damien Chazelle','Miles Teller- J.K.Simmons', 'Dram', '2014', '1 saat 47 dakika','�ngilizce', 'ABD', '8.5'),   
    ('Esaretin Bedeli', 'Frank Darabont', 'Stephen King','Tim Robbins-Morgan Freeman','Dram', '1994', '2 saat 22 dakika', '�ngilizce', 'ABD', '9.3'),
	('Ucuz Roman', 'Quentin Tarantino', 'Quentin Tarantino- Roger Avary', 'John Travolta- Uma Thurman', 'Dram', '1994','2 saat 34 dakika', '�ngilizce', 'ABD', '8.9');

SELECT * FROM Dram;

CREATE TABLE Romantik (
    F�lmAd� VARCHAR(100),
    Yonetmen VARCHAR(100),
    Yazar VARCHAR(100) ,
    Y�ld�zlar VARCHAR(100),
    Tur VARCHAR(20),
    Sure VARCHAR(100),
    Yay�nY�l� INT,
    D�l VARCHAR(20),
    Ulke VARCHAR(30),
    Imdb FLOAT
    
);

INSERT INTO Romantik (F�lmAd�, Yonetmen, Yazar, Y�ld�zlar, Tur, Yay�nY�l�, Sure, D�l, Ulke, Imdb)
VALUES
    
	('One Day', 'Lone Scherfig', 'David Nicholls','Anne Hathaway- Jim Sturgess', 'Romantik', '2011','1 saat 47 dakika', '�ngilizce', '�ngiltere', '7.0'),
    ('Delibal', 'Ali Bilgin', 'Bilal K�vrak', '�a�atay Ulusoy-Leyla Lydia Tu�utlu', 'Romantik', '2015', '1 saat 57 dakika', 'T�rk�e', 'T�rkiye', '6.7'),
	('Senden Nefret Etmemin 10 Sebebi', 'Gil Junger', 'Karen McCullah- Kristen Smith','Heath Ledger- Julia Stiles', 'Romantik', '1999', '1 saat 37 dakika', '�ngilizce', 'ABD', '7.3'),
    ('Not Defteri', 'Nick Cassaveetes', 'Jeremy Leven-Jan Sardi', 'Ryan Gosling- Rachel McAdams', 'Romantik', '2004','2 saat  3 dakika', '�ngilizce', 'ABD', '7.8'),
    ('Selvi Boylum Al Yazmal�m', 'Ertem E�ilmez', 'Sad�k �endil','Ahmet Mekin-M�jde Ar', 'Romantik', '1978', '1 saat 35 dakika', 'T�rk�e', 'T�rkiye', '8.0');
    


SELECT * FROM Romantik;

CREATE TABLE RomantikKomedi (
    F�lmAd� VARCHAR(100),
    Yonetmen VARCHAR(100),
    Yazar VARCHAR(100) ,
    Y�ld�zlar VARCHAR(100),
    Tur VARCHAR(20),
    Sure VARCHAR(100),
    Yay�nY�l� INT,
    D�l VARCHAR(20),
    Ulke VARCHAR(30),
    Imdb FLOAT
    
);
INSERT INTO RomantikKomedi (F�lmAd�, Yonetmen, Yazar, Y�ld�zlar, Tur, Yay�nY�l�, Sure, D�l, Ulke, Imdb)
VALUES
    
    ('Amerikan G�zeli', 'Sam Mendes', 'Alan Ball','Kevin Spacey-Annette Bening', 'Romantik Komedi', '1999', '2 saat 2 dakika', '�ngilizce', 'ABD', '8.3'),
    ('Romantik Komedi', 'Ket�e', 'Ceren Aslan- Asl� Zengin','Sinem Kobal- Cemal H�nal', 'Romantik Komedi', '2010', '1 saat 35 dakika', 'T�rk�e', 'T�rkiye', '5.3'),
    ('Teklif', 'Anne Fletcher', 'Pete Chiarelli','Sandra Bullock-Ryan Reynolds', 'Romantik Komedi', '2009', '1 saat 48 dakika', '�ngilizce', 'ABD,Kanada', '6.7'),
    ('A�k Engel Tan�maz', 'Roger Michell', 'Richard Curtis','Hugh Grant-Julia Roberts', 'Romantik Komedi', '1999', '2 saat 4 dakika', '�ngilizce', '�ngiltere', '7.1');
    

SELECT * FROM RomantikKomedi;


CREATE TABLE Animasyon (
    F�lmAd� VARCHAR(100),
    Yonetmen VARCHAR(100),
    Yazar VARCHAR(100) ,
    Y�ld�zlar VARCHAR(100),
    Tur VARCHAR(20),
    Sure VARCHAR(100),
    Yay�nY�l� INT,
    D�l VARCHAR(20),
    Ulke VARCHAR(30),
    Imdb FLOAT
    
);

INSERT INTO Animasyon (F�lmAd�, Yonetmen, Yazar, Y�ld�zlar, Tur, Yay�nY�l�, Sure, D�l, Ulke, Imdb)
VALUES
    
    ('K�rm�z�', 'Domee Shi', 'Domee Shi- Julia Cho','Rosalie �an- Sandra Ah', 'Animasyon', '2022', '1 saat 40 dakika', '�ngilizce', 'ABD', '7.0'),
	('Sevimli Canavarlar', 'Pete Doktor', 'Jill Culton','Billy Kristal- John Goodman', 'Animasyon', '2001', '1 saat 32 dakika', '�ngilizce', 'ABD', '8.1'),
    ('Karlar �lkesi', 'Chris Buck- Jennifer Lee', 'Chris Buck','Kristen Bell- Idina Menzel', 'Animasyon', '2013', '1 saat 42 dakika', '�ngilizce', 'ABD', '7.4'),
    ('Ters Y�z', 'Pete Docter-Ronnie del Carmen', 'Pete Docter- Ronnie del Carmen','Amy Poehler-Bill Hader','Animasyon', '2015', '1 saat 35 dakika', '�ngilizce', 'ABD', '8.1');
    

SELECT * FROM Animasyon;


CREATE TABLE Komedi (
    F�lmAd� VARCHAR(100),
    Yonetmen VARCHAR(100),
    Yazar VARCHAR(100) ,
    Y�ld�zlar VARCHAR(100),
    Tur VARCHAR(20),
    Sure VARCHAR(100),
    Yay�nY�l� INT,
    D�l VARCHAR(20),
    Ulke VARCHAR(30),
    Imdb FLOAT
    
);
INSERT INTO Komedi (F�lmAd�, Yonetmen, Yazar, Y�ld�zlar, Tur, Yay�nY�l�, Sure, D�l, Ulke, Imdb)
VALUES
    
    ('Truman Show', 'Peter Weir', 'Andrew Niccol', 'J�m Carrey- Ed Harris', 'Komedi', '1998','1 saat  43 dakika', '�ngilizce', 'ABD', '8.2'),
    ('Vizontele', 'Y�lmaz Erdo�an-�mer Faruk Sorak', 'Y�lmaz Erdo�an-�mer Faruk Sorak','Tolga �evik- Cezmi Bask�n', 'Komedi', '2001', '1 saat 50 dakika', 'T�rk�e', 'T�rkiye', '7.9'),
    ('Vay Arkada�', 'Kemal Uzun', 'Kemal Uzun', 'Tolga �evik- Murat Ba�o�lu','Komedi', '2010', '1 saat 48 dakika','T�rk�e', 'T�rkiye', '7.1'),
    ('G.O.R.A', '�mer Faruk Sorak', 'Cem Y�lmaz','Cem Y�lmaz-Rasim �ztekin', 'Komedi', '2004','2 saat 7 dakika', 'T�rk�e', 'T�rkiye', '8.0');
	
SELECT * FROM Komedi;

CREATE TABLE BilimKurgu (
    F�lmAd� VARCHAR(100),
    Yonetmen VARCHAR(100),
    Yazar VARCHAR(100) ,
    Y�ld�zlar VARCHAR(100),
    Tur VARCHAR(20),
    Sure VARCHAR(100),
    Yay�nY�l� INT,
    D�l VARCHAR(20),
    Ulke VARCHAR(30),
    Imdb FLOAT
    
);
INSERT INTO BilimKurgu (F�lmAd�, Yonetmen, Yazar, Y�ld�zlar, Tur, Yay�nY�l�, Sure, D�l, Ulke, Imdb)
VALUES
    
    ('Ba�lang��', 'Christopher Nolan', 'Christopher Nolan','Leonardo DiCaprio-Ellen Page', 'Bilim Kurgu', '2010', '2 saat 28 dakika', '�ngilizce', 'ABD', '8.8'),
    ('Y�ld�zlararas�', 'Christopher Nolan', 'Jonathan Nolan-Christopher Nolan', 'Matthew McConaughey-Anne Hathaway','Bilim Kurgu', '2014', '2 saat 49 dakika','�ngilizce', 'ABD,�ngiltere, Kanada', '8.6'),
    ('Ex Machina', 'Alex Garland', 'Alex Garland','Alicia Vikander- Oscar Isaac', 'Bilim Kurgu', '2014','1 saat 48 dakika', '�ngilizce', '�ngiltere', '7.7'),
	('The Martian', 'Ridley Scott', 'Andy Weir-Drew Goddard','Matt Damon-Jessica Chastain', 'Bilim Kurgu', '2015', '2 saat 14 dakika','�ngilizce', 'ABD,Macaristan', '8.0'),
	('Ucuz Roman', 'Quentin Tarantino', 'Quentin Tarantino- Roger Avary', 'John Travolta- Uma Thurman', 'Dram', '1994','2 saat 34 dakika', '�ngilizce', 'ABD', '8.9');

SELECT * FROM BilimKurgu;

CREATE TABLE Gerilim (
    F�lmAd� VARCHAR(100),
    Yonetmen VARCHAR(100),
    Yazar VARCHAR(100) ,
    Y�ld�zlar VARCHAR(100),
    Tur VARCHAR(20),
    Sure VARCHAR(100),
    Yay�nY�l� INT,
    D�l VARCHAR(20),
    Ulke VARCHAR(30),
    Imdb FLOAT
    
);
INSERT INTO Gerilim (F�lmAd�, Yonetmen, Yazar, Y�ld�zlar, Tur, Yay�nY�l�, Sure, D�l, Ulke, Imdb)
VALUES
    
    ('Fight Club', 'David Fincher', 'David Fincher-Jim Uhis', 'Brad Bitt- Helena Bonham Carter','Gerilim', '1999', '2 saat 19 dakika','�ngilizce', 'ABD', '8.8'),
	('Se7en', 'David Fincher', 'Andrew Kevin Walker','Brad Pitt- Morgan Freeman', 'Gerilim', '1995', '2 saat 7 dakika','�ngilizce', 'ABD', '8.6'),
    ('Zindan Adas�', ' Martin Scorsese', 'Dennis Lehane-Laeta Kalogridis','Leonardo DiCaprio-Mark Ruffalo', 'Gerilim', '2010', '2 saat 18 dakika', '�ngilizce-Almanca', 'ABD', '8.1'),
    ('Gone Girl', 'David Fincher', 'Gillian Flynn','Ben Affleck- Rosamund Pike', 'Gerilim', '2014', '2 saat 29 dakika', '�ngilizce', 'ABD', '8.1');
	
    

SELECT * FROM Gerilim;

CREATE TABLE Aksiyon (
    F�lmAd� VARCHAR(100),
    Yonetmen VARCHAR(100),
    Yazar VARCHAR(100) ,
    Y�ld�zlar VARCHAR(100),
    Tur VARCHAR(20),
    Sure VARCHAR(100),
    Yay�nY�l� INT,
    D�l VARCHAR(20),
    Ulke VARCHAR(30),
    Imdb FLOAT
    
);

INSERT INTO Aksiyon (F�lmAd�, Yonetmen, Yazar, Y�ld�zlar, Tur, Yay�nY�l�, Sure, D�l, Ulke, Imdb)
VALUES
    
	('Kara ��valye', 'Christopher Nolan', 'Chriistopher Nolan- Jonathan Nolan', 'Christian Bale- Heath Ledger', 'Aksiyon', '2008', '2 saat 32 dakika', '�ngilizce', 'ABD', '9.0'),
    ('Zor �l�m', ' John McTiernan', 'Roderick Thorp-Jeb Stuart','Bruce Willis-Alan Rickman', 'Aksiyon', '1988', '2 saat 12 dakika', '�ngilizce', 'ABD', '8.2'),
    ('Gladyat�r', 'Ridley Scott', 'David Franzoni-John Logan','Russell Crowe-Connie Nielsen', 'Aksiyon', '2000', '2 saat 35 dakika', '�ngilizce', 'ABD,�ngiltere', '8.5'),
	('Adalet', 'Antoine Fuqua', 'Richard Wenk-Marton Csokas','Denzel Washington-Marton Csokas', 'Aksiyon', '2014','2 saat 12 dakika', '�ngilizce-T�rk�e', 'ABD', '7.2');
    

SELECT * FROM Aksiyon;

CREATE TABLE M�zikal (
    F�lmAd� VARCHAR(100),
    Yonetmen VARCHAR(100),
    Yazar VARCHAR(100) ,
    Y�ld�zlar VARCHAR(100),
    Tur VARCHAR(20),
    Sure VARCHAR(100),
    Yay�nY�l� INT,
    D�l VARCHAR(20),
    Ulke VARCHAR(30),
    Imdb FLOAT
    
);

INSERT INTO M�zikal (F�lmAd�, Yonetmen, Yazar, Y�ld�zlar, Tur, Yay�nY�l�, Sure, D�l, Ulke, Imdb)
VALUES
    
    
    ('La La Land', 'Damien Chazelle', 'Damien Chazelle', 'Ryan Gosling-Emma Stone', 'M�zikal', '2016', '2 saat 8 dakika', '�ngilizce', 'ABD', '8.0'),
    ('Ne�eli G�nler', 'Robert Wise-Jerome Robbins', 'George Hurdalek-Howard Lindsay','Julie Andrews-Elenor Parker', 'M�zikal', '1965', '2 saat 52 dakika', '�ngilizce', 'ABD', '8.0'),
	('Ya�mur Alt�nda', 'Stanley Donen-Gene Kelly', 'Betty Comden-Adolph Green','Gene Kelly-Debbie Reynolds', 'M�zikal', '1952', '1 saat 43 dakika', '�ngilizce', 'ABD', '8.3'),
    ('Bir Y�ld�z Do�uyor', 'Bradley Cooper', 'Eric Roth-Will Fetters','Lady Gaga-Sam Elliott', 'M�zikal', '2018', '2 saat 16 dakika', '�ngilizce', 'ABD', '7.6');
    

SELECT * FROM M�zikal;

CREATE TABLE Ye�il�am (
    F�lmAd� VARCHAR(100),
    Yonetmen VARCHAR(100),
    Yazar VARCHAR(100) ,
    Y�ld�zlar VARCHAR(100),
    Tur VARCHAR(20),
    Sure VARCHAR(100),
    Yay�nY�l� INT,
    D�l VARCHAR(20),
    Ulke VARCHAR(30),
    Imdb FLOAT
    
);
INSERT INTO Ye�il�am (F�lmAd�, Yonetmen, Yazar, Y�ld�zlar, Tur, Yay�nY�l�, Sure, D�l, Ulke, Imdb)
VALUES
   
    ('Hababam S�n�f�', 'Ertem E�ilmez', 'Umur Bugay','M�nir �zkul-Tar�k Akan', 'Ye�il�am', '1975', '1 saat 27 dakika', 'T�rk�e', 'T�rkiye', '8.8'),
    ('�nek �aban', 'Ertem �aban', 'Sad�k �endil', '�ener �en-U�ur Y�cel', 'Ye�il�am', '1978','1 saat  29 dakika', 'T�rk�e', 'T�rkiye', '7.1'),
    ('D�tt�r� D�nya', 'Halit Refi�', 'Halit Refi�','Sadri Al���k-Belgin Doruk','Ye�il�am', '1962', '1 saat 19 dakika', 'T�rk�e', 'T�rkiye', '7.0');

SELECT * FROM Ye�il�am;
