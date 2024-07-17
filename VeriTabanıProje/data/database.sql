CREATE TABLE Film(
    FýlmAdý VARCHAR(100),
    Yonetmen VARCHAR(100),
    Yazar VARCHAR(100) ,
    Yýldýzlar VARCHAR(100),
    Tur VARCHAR(20),
    Sure VARCHAR(100),
    YayýnYýlý INT,
    Dýl VARCHAR(20),
    Ulke VARCHAR(30),
    Imdb FLOAT
    
);

-- Veri ekleme iþlemi
INSERT INTO Film (FýlmAdý, Yonetmen, Yazar, Yýldýzlar, Tur, YayýnYýlý, Sure, Dýl, Ulke, Imdb)
VALUES
    ('Schindler s List', 'Steven Spielberg', 'homas Keneally- Steven Zaillian', 'Liam Neeson-Ralp Fiennes', 'Dram', '1993', '3 saat 5 dakika', 'Ýngilizce', 'ABD', '9.0'),
    ('Fight Club', 'David Fincher', 'David Fincher-Jim Uhis', 'Brad Bitt- Helena Bonham Carter','Gerilim', '1999', '2 saat 19 dakika','Ýngilizce', 'ABD', '8.8'),
    ('Piyanist', 'Roman Polanski', 'Ronald Harwood- Wladyslaw Szpilman','Adrien Brody- Frank Finlay', 'Dram', '2002','2 saat 30 dakika', 'Polonyaca-Almanca', 'Polonya', '8.5'),
	('Whiplash', 'Damien Chazelle', 'Damien Chazelle','Miles Teller- J.K.Simmons', 'Dram', '2014', '1 saat 47 dakika','Ýngilizce', 'ABD', '8.5'),
    ('Cinnet', 'Stanley Kubrick', 'Stephen King-Stanley Kubrick- Diane Johnson','Jack Nicholson- Shelley Duvall', 'Korku', '1980', '2 saat 26 dakika', 'Ýngilizce', 'ABD', '8.4'),
    ('Amerikan Güzeli', 'Sam Mendes', 'Alan Ball','Kevin Spacey-Annette Bening', 'Romantik Komedi', '1999', '2 saat 2 dakika', 'Ýngilizce', 'ABD', '8.3'),
	('One Day', 'Lone Scherfig', 'David Nicholls','Anne Hathaway- Jim Sturgess', 'Romantik', '2011','1 saat 47 dakika', 'Ýngilizce', 'Ýngiltere', '7.0'),
    ('Delibal', 'Ali Bilgin', 'Bilal Kývrak', 'Çaðatay Ulusoy-Leyla Lydia Tuðutlu', 'Romantik', '2015', '1 saat 57 dakika', 'Türkçe', 'Türkiye', '6.7'),
    ('Kýrmýzý', 'Domee Shi', 'Domee Shi- Julia Cho','Rosalie Çan- Sandra Ah', 'Animasyon', '2022', '1 saat 40 dakika', 'Ýngilizce', 'ABD', '7.0'),
	('Sevimli Canavarlar', 'Pete Doktor', 'Jill Culton','Billy Kristal- John Goodman', 'Animasyon', '2001', '1 saat 32 dakika', 'Ýngilizce', 'ABD', '8.1'),
    ('Karlar Ülkesi', 'Chris Buck- Jennifer Lee', 'Chris Buck','Kristen Bell- Idina Menzel', 'Animasyon', '2013', '1 saat 42 dakika', 'Ýngilizce', 'ABD', '7.4'),
    ('Romantik Komedi', 'Ketçe', 'Ceren Aslan- Aslý Zengin','Sinem Kobal- Cemal Hünal', 'Romantik Komedi', '2010', '1 saat 35 dakika', 'Türkçe', 'Türkiye', '5.3'),
    ('Truman Show', 'Peter Weir', 'Andrew Niccol', 'Jým Carrey- Ed Harris', 'Komedi', '1998','1 saat  43 dakika', 'Ýngilizce', 'ABD', '8.2'),
    ('Esaretin Bedeli', 'Frank Darabont', 'Stephen King','Tim Robbins-Morgan Freeman','Dram', '1994', '2 saat 22 dakika', 'Ýngilizce', 'ABD', '9.3'),
    ('Baþlangýç', 'Christopher Nolan', 'Christopher Nolan','Leonardo DiCaprio-Ellen Page', 'Bilim Kurgu', '2010', '2 saat 28 dakika', 'Ýngilizce', 'ABD', '8.8'),
	('Kara Þövalye', 'Christopher Nolan', 'Chriistopher Nolan- Jonathan Nolan', 'Christian Bale- Heath Ledger', 'Aksiyon', '2008', '2 saat 32 dakika', 'Ýngilizce', 'ABD', '9.0'),
    ('Yýldýzlararasý', 'Christopher Nolan', 'Jonathan Nolan-Christopher Nolan', 'Matthew McConaughey-Anne Hathaway','Bilim Kurgu', '2014', '2 saat 49 dakika','Ýngilizce', 'ABD,Ýngiltere, Kanada', '8.6'),
    ('Ex Machina', 'Alex Garland', 'Alex Garland','Alicia Vikander- Oscar Isaac', 'Bilim Kurgu', '2014','1 saat 48 dakika', 'Ýngilizce', 'Ýngiltere', '7.7'),
	('Se7en', 'David Fincher', 'Andrew Kevin Walker','Brad Pitt- Morgan Freeman', 'Gerilim', '1995', '2 saat 7 dakika','Ýngilizce', 'ABD', '8.6'),
    ('Zindan Adasý', ' Martin Scorsese', 'Dennis Lehane-Laeta Kalogridis','Leonardo DiCaprio-Mark Ruffalo', 'Gerilim', '2010', '2 saat 18 dakika', 'Ýngilizce-Almanca', 'ABD', '8.1'),
    ('Gone Girl', 'David Fincher', 'Gillian Flynn','Ben Affleck- Rosamund Pike', 'Gerilim', '2014', '2 saat 29 dakika', 'Ýngilizce', 'ABD', '8.1'),
	('Kapan', 'Jordan Peele', 'Jordan Peele','Daniel Kaluuya- Allison Williams', 'Korku', '2017','1 saat 44 dakika', 'Ýngilizce', 'ABD', '7.7'),
    ('Ayin', 'Ari Aster', 'Ari Aster', 'Toni Collette- Milly Shapiro', 'Korku', '2018', '2 saat 7 dakika', 'Ýngilizce', 'ABD', '7.3'),
    ('Korku Seansý', 'James Wan', 'Chad Hayes- Carey W. Hayes','Vera Farmiga- Patrick Wilson', 'Korku', '2013', '1 saat 52 dakika', 'Ýngilizce', 'ABD', '7.5'),
	('Senden Nefret Etmemin 10 Sebebi', 'Gil Junger', 'Karen McCullah- Kristen Smith','Heath Ledger- Julia Stiles', 'Romantik', '1999', '1 saat 37 dakika', 'Ýngilizce', 'ABD', '7.3'),
    ('Teklif', 'Anne Fletcher', 'Pete Chiarelli','Sandra Bullock-Ryan Reynolds', 'Romantik Komedi', '2009', '1 saat 48 dakika', 'Ýngilizce', 'ABD,Kanada', '6.7'),
    ('Aþk Engel Tanýmaz', 'Roger Michell', 'Richard Curtis','Hugh Grant-Julia Roberts', 'Romantik Komedi', '1999', '2 saat 4 dakika', 'Ýngilizce', 'Ýngiltere', '7.1'),
    ('Not Defteri', 'Nick Cassaveetes', 'Jeremy Leven-Jan Sardi', 'Ryan Gosling- Rachel McAdams', 'Romantik', '2004','2 saat  3 dakika', 'Ýngilizce', 'ABD', '7.8'),
    ('Ters Yüz', 'Pete Docter-Ronnie del Carmen', 'Pete Docter- Ronnie del Carmen','Amy Poehler-Bill Hader','Animasyon', '2015', '1 saat 35 dakika', 'Ýngilizce', 'ABD', '8.1'),
    ('Vizontele', 'Yýlmaz Erdoðan-Ömer Faruk Sorak', 'Yýlmaz Erdoðan-Ömer Faruk Sorak','Tolga Çevik- Cezmi Baskýn', 'Komedi', '2001', '1 saat 50 dakika', 'Türkçe', 'Türkiye', '7.9'),
    ('Vay Arkadaþ', 'Kemal Uzun', 'Kemal Uzun', 'Tolga Çevik- Murat Baþoðlu','Komedi', '2010', '1 saat 48 dakika','Türkçe', 'Türkiye', '7.1'),
    ('G.O.R.A', 'Ömer Faruk Sorak', 'Cem Yýlmaz','Cem Yýlmaz-Rasim Öztekin', 'Komedi', '2004','2 saat 7 dakika', 'Türkçe', 'Türkiye', '8.0'),
	('The Martian', 'Ridley Scott', 'Andy Weir-Drew Goddard','Matt Damon-Jessica Chastain', 'Bilim Kurgu', '2015', '2 saat 14 dakika','Ýngilizce', 'ABD,Macaristan', '8.0'),
    ('Zor Ölüm', ' John McTiernan', 'Roderick Thorp-Jeb Stuart','Bruce Willis-Alan Rickman', 'Aksiyon', '1988', '2 saat 12 dakika', 'Ýngilizce', 'ABD', '8.2'),
    ('Gladyatör', 'Ridley Scott', 'David Franzoni-John Logan','Russell Crowe-Connie Nielsen', 'Aksiyon', '2000', '2 saat 35 dakika', 'Ýngilizce', 'ABD,Ýngiltere', '8.5'),
	('Adalet', 'Antoine Fuqua', 'Richard Wenk-Marton Csokas','Denzel Washington-Marton Csokas', 'Aksiyon', '2014','2 saat 12 dakika', 'Ýngilizce-Türkçe', 'ABD', '7.2'),
    ('La La Land', 'Damien Chazelle', 'Damien Chazelle', 'Ryan Gosling-Emma Stone', 'Müzikal', '2016', '2 saat 8 dakika', 'Ýngilizce', 'ABD', '8.0'),
    ('Neþeli Günler', 'Robert Wise-Jerome Robbins', 'George Hurdalek-Howard Lindsay','Julie Andrews-Elenor Parker', 'Müzikal', '1965', '2 saat 52 dakika', 'Ýngilizce', 'ABD', '8.0'),
	('Yaðmur Altýnda', 'Stanley Donen-Gene Kelly', 'Betty Comden-Adolph Green','Gene Kelly-Debbie Reynolds', 'Müzikal', '1952', '1 saat 43 dakika', 'Ýngilizce', 'ABD', '8.3'),
    ('Bir Yýldýz Doðuyor', 'Bradley Cooper', 'Eric Roth-Will Fetters','Lady Gaga-Sam Elliott', 'Müzikal', '2018', '2 saat 16 dakika', 'Ýngilizce', 'ABD', '7.6'),
    ('Hababam Sýnýfý', 'Ertem Eðilmez', 'Umur Bugay','Münir Özkul-Tarýk Akan', 'Yeþilçam', '1975', '1 saat 27 dakika', 'Türkçe', 'Türkiye', '8.8'),
    ('Ýnek Þaban', 'Ertem Þaban', 'Sadýk Þendil', 'Þener Þen-Uður Yücel', 'Yeþilçam', '1978','1 saat  29 dakika', 'Türkçe', 'Türkiye', '7.1'),
    ('Düttürü Dünya', 'Halit Refið', 'Halit Refið','Sadri Alýþýk-Belgin Doruk','Yeþilçam', '1962', '1 saat 19 dakika', 'Türkçe', 'Türkiye', '7.0'),
    ('Selvi Boylum Al Yazmalým', 'Ertem Eðilmez', 'Sadýk Þendil','Ahmet Mekin-Müjde Ar', 'Romantik', '1978', '1 saat 35 dakika', 'Türkçe', 'Türkiye', '8.0'),
    
	
	('Ucuz Roman', 'Quentin Tarantino', 'Quentin Tarantino- Roger Avary', 'John Travolta- Uma Thurman', 'Dram', '1994','2 saat 34 dakika', 'Ýngilizce', 'ABD', '8.9');

SELECT * FROM Film;

CREATE TABLE Korku (
    FýlmAdý VARCHAR(100),
    Yonetmen VARCHAR(100),
    Yazar VARCHAR(100) ,
    Yýldýzlar VARCHAR(100),
    Tur VARCHAR(20),
    Sure VARCHAR(100),
    YayýnYýlý INT,
    Dýl VARCHAR(20),
    Ulke VARCHAR(30),
    Imdb FLOAT
    
);
INSERT INTO Korku (FýlmAdý, Yonetmen, Yazar, Yýldýzlar, Tur, YayýnYýlý, Sure, Dýl, Ulke, Imdb)
VALUES
    
    ('Cinnet', 'Stanley Kubrick', 'Stephen King-Stanley Kubrick- Diane Johnson','Jack Nicholson- Shelley Duvall', 'Korku', '1980', '2 saat 26 dakika', 'Ýngilizce', 'ABD', '8.4'),
	('Kapan', 'Jordan Peele', 'Jordan Peele','Daniel Kaluuya- Allison Williams', 'Korku', '2017','1 saat 44 dakika', 'Ýngilizce', 'ABD', '7.7'),
    ('Ayin', 'Ari Aster', 'Ari Aster', 'Toni Collette- Milly Shapiro', 'Korku', '2018', '2 saat 7 dakika', 'Ýngilizce', 'ABD', '7.3'),
    ('Korku Seansý', 'James Wan', 'Chad Hayes- Carey W. Hayes','Vera Farmiga- Patrick Wilson', 'Korku', '2013', '1 saat 52 dakika', 'Ýngilizce', 'ABD', '7.5');
	
SELECT * FROM Korku;

CREATE TABLE Dram (
    FýlmAdý VARCHAR(100),
    Yonetmen VARCHAR(100),
    Yazar VARCHAR(100) ,
    Yýldýzlar VARCHAR(100),
    Tur VARCHAR(20),
    Sure VARCHAR(100),
    YayýnYýlý INT,
    Dýl VARCHAR(20),
    Ulke VARCHAR(30),
    Imdb FLOAT
    
);

INSERT INTO Dram (FýlmAdý, Yonetmen, Yazar, Yýldýzlar, Tur, YayýnYýlý, Sure, Dýl, Ulke, Imdb)
VALUES
    ('Schindler s List', 'Steven Spielberg', 'homas Keneally- Steven Zaillian', 'Liam Neeson-Ralp Fiennes', 'Dram', '1993', '3 saat 5 dakika', 'Ýngilizce', 'ABD', '9.0'),
    ('Piyanist', 'Roman Polanski', 'Ronald Harwood- Wladyslaw Szpilman','Adrien Brody- Frank Finlay', 'Dram', '2002','2 saat 30 dakika', 'Polonyaca-Almanca', 'Polonya', '8.5'),
	('Whiplash', 'Damien Chazelle', 'Damien Chazelle','Miles Teller- J.K.Simmons', 'Dram', '2014', '1 saat 47 dakika','Ýngilizce', 'ABD', '8.5'),   
    ('Esaretin Bedeli', 'Frank Darabont', 'Stephen King','Tim Robbins-Morgan Freeman','Dram', '1994', '2 saat 22 dakika', 'Ýngilizce', 'ABD', '9.3'),
	('Ucuz Roman', 'Quentin Tarantino', 'Quentin Tarantino- Roger Avary', 'John Travolta- Uma Thurman', 'Dram', '1994','2 saat 34 dakika', 'Ýngilizce', 'ABD', '8.9');

SELECT * FROM Dram;

CREATE TABLE Romantik (
    FýlmAdý VARCHAR(100),
    Yonetmen VARCHAR(100),
    Yazar VARCHAR(100) ,
    Yýldýzlar VARCHAR(100),
    Tur VARCHAR(20),
    Sure VARCHAR(100),
    YayýnYýlý INT,
    Dýl VARCHAR(20),
    Ulke VARCHAR(30),
    Imdb FLOAT
    
);

INSERT INTO Romantik (FýlmAdý, Yonetmen, Yazar, Yýldýzlar, Tur, YayýnYýlý, Sure, Dýl, Ulke, Imdb)
VALUES
    
	('One Day', 'Lone Scherfig', 'David Nicholls','Anne Hathaway- Jim Sturgess', 'Romantik', '2011','1 saat 47 dakika', 'Ýngilizce', 'Ýngiltere', '7.0'),
    ('Delibal', 'Ali Bilgin', 'Bilal Kývrak', 'Çaðatay Ulusoy-Leyla Lydia Tuðutlu', 'Romantik', '2015', '1 saat 57 dakika', 'Türkçe', 'Türkiye', '6.7'),
	('Senden Nefret Etmemin 10 Sebebi', 'Gil Junger', 'Karen McCullah- Kristen Smith','Heath Ledger- Julia Stiles', 'Romantik', '1999', '1 saat 37 dakika', 'Ýngilizce', 'ABD', '7.3'),
    ('Not Defteri', 'Nick Cassaveetes', 'Jeremy Leven-Jan Sardi', 'Ryan Gosling- Rachel McAdams', 'Romantik', '2004','2 saat  3 dakika', 'Ýngilizce', 'ABD', '7.8'),
    ('Selvi Boylum Al Yazmalým', 'Ertem Eðilmez', 'Sadýk Þendil','Ahmet Mekin-Müjde Ar', 'Romantik', '1978', '1 saat 35 dakika', 'Türkçe', 'Türkiye', '8.0');
    


SELECT * FROM Romantik;

CREATE TABLE RomantikKomedi (
    FýlmAdý VARCHAR(100),
    Yonetmen VARCHAR(100),
    Yazar VARCHAR(100) ,
    Yýldýzlar VARCHAR(100),
    Tur VARCHAR(20),
    Sure VARCHAR(100),
    YayýnYýlý INT,
    Dýl VARCHAR(20),
    Ulke VARCHAR(30),
    Imdb FLOAT
    
);
INSERT INTO RomantikKomedi (FýlmAdý, Yonetmen, Yazar, Yýldýzlar, Tur, YayýnYýlý, Sure, Dýl, Ulke, Imdb)
VALUES
    
    ('Amerikan Güzeli', 'Sam Mendes', 'Alan Ball','Kevin Spacey-Annette Bening', 'Romantik Komedi', '1999', '2 saat 2 dakika', 'Ýngilizce', 'ABD', '8.3'),
    ('Romantik Komedi', 'Ketçe', 'Ceren Aslan- Aslý Zengin','Sinem Kobal- Cemal Hünal', 'Romantik Komedi', '2010', '1 saat 35 dakika', 'Türkçe', 'Türkiye', '5.3'),
    ('Teklif', 'Anne Fletcher', 'Pete Chiarelli','Sandra Bullock-Ryan Reynolds', 'Romantik Komedi', '2009', '1 saat 48 dakika', 'Ýngilizce', 'ABD,Kanada', '6.7'),
    ('Aþk Engel Tanýmaz', 'Roger Michell', 'Richard Curtis','Hugh Grant-Julia Roberts', 'Romantik Komedi', '1999', '2 saat 4 dakika', 'Ýngilizce', 'Ýngiltere', '7.1');
    

SELECT * FROM RomantikKomedi;


CREATE TABLE Animasyon (
    FýlmAdý VARCHAR(100),
    Yonetmen VARCHAR(100),
    Yazar VARCHAR(100) ,
    Yýldýzlar VARCHAR(100),
    Tur VARCHAR(20),
    Sure VARCHAR(100),
    YayýnYýlý INT,
    Dýl VARCHAR(20),
    Ulke VARCHAR(30),
    Imdb FLOAT
    
);

INSERT INTO Animasyon (FýlmAdý, Yonetmen, Yazar, Yýldýzlar, Tur, YayýnYýlý, Sure, Dýl, Ulke, Imdb)
VALUES
    
    ('Kýrmýzý', 'Domee Shi', 'Domee Shi- Julia Cho','Rosalie Çan- Sandra Ah', 'Animasyon', '2022', '1 saat 40 dakika', 'Ýngilizce', 'ABD', '7.0'),
	('Sevimli Canavarlar', 'Pete Doktor', 'Jill Culton','Billy Kristal- John Goodman', 'Animasyon', '2001', '1 saat 32 dakika', 'Ýngilizce', 'ABD', '8.1'),
    ('Karlar Ülkesi', 'Chris Buck- Jennifer Lee', 'Chris Buck','Kristen Bell- Idina Menzel', 'Animasyon', '2013', '1 saat 42 dakika', 'Ýngilizce', 'ABD', '7.4'),
    ('Ters Yüz', 'Pete Docter-Ronnie del Carmen', 'Pete Docter- Ronnie del Carmen','Amy Poehler-Bill Hader','Animasyon', '2015', '1 saat 35 dakika', 'Ýngilizce', 'ABD', '8.1');
    

SELECT * FROM Animasyon;


CREATE TABLE Komedi (
    FýlmAdý VARCHAR(100),
    Yonetmen VARCHAR(100),
    Yazar VARCHAR(100) ,
    Yýldýzlar VARCHAR(100),
    Tur VARCHAR(20),
    Sure VARCHAR(100),
    YayýnYýlý INT,
    Dýl VARCHAR(20),
    Ulke VARCHAR(30),
    Imdb FLOAT
    
);
INSERT INTO Komedi (FýlmAdý, Yonetmen, Yazar, Yýldýzlar, Tur, YayýnYýlý, Sure, Dýl, Ulke, Imdb)
VALUES
    
    ('Truman Show', 'Peter Weir', 'Andrew Niccol', 'Jým Carrey- Ed Harris', 'Komedi', '1998','1 saat  43 dakika', 'Ýngilizce', 'ABD', '8.2'),
    ('Vizontele', 'Yýlmaz Erdoðan-Ömer Faruk Sorak', 'Yýlmaz Erdoðan-Ömer Faruk Sorak','Tolga Çevik- Cezmi Baskýn', 'Komedi', '2001', '1 saat 50 dakika', 'Türkçe', 'Türkiye', '7.9'),
    ('Vay Arkadaþ', 'Kemal Uzun', 'Kemal Uzun', 'Tolga Çevik- Murat Baþoðlu','Komedi', '2010', '1 saat 48 dakika','Türkçe', 'Türkiye', '7.1'),
    ('G.O.R.A', 'Ömer Faruk Sorak', 'Cem Yýlmaz','Cem Yýlmaz-Rasim Öztekin', 'Komedi', '2004','2 saat 7 dakika', 'Türkçe', 'Türkiye', '8.0');
	
SELECT * FROM Komedi;

CREATE TABLE BilimKurgu (
    FýlmAdý VARCHAR(100),
    Yonetmen VARCHAR(100),
    Yazar VARCHAR(100) ,
    Yýldýzlar VARCHAR(100),
    Tur VARCHAR(20),
    Sure VARCHAR(100),
    YayýnYýlý INT,
    Dýl VARCHAR(20),
    Ulke VARCHAR(30),
    Imdb FLOAT
    
);
INSERT INTO BilimKurgu (FýlmAdý, Yonetmen, Yazar, Yýldýzlar, Tur, YayýnYýlý, Sure, Dýl, Ulke, Imdb)
VALUES
    
    ('Baþlangýç', 'Christopher Nolan', 'Christopher Nolan','Leonardo DiCaprio-Ellen Page', 'Bilim Kurgu', '2010', '2 saat 28 dakika', 'Ýngilizce', 'ABD', '8.8'),
    ('Yýldýzlararasý', 'Christopher Nolan', 'Jonathan Nolan-Christopher Nolan', 'Matthew McConaughey-Anne Hathaway','Bilim Kurgu', '2014', '2 saat 49 dakika','Ýngilizce', 'ABD,Ýngiltere, Kanada', '8.6'),
    ('Ex Machina', 'Alex Garland', 'Alex Garland','Alicia Vikander- Oscar Isaac', 'Bilim Kurgu', '2014','1 saat 48 dakika', 'Ýngilizce', 'Ýngiltere', '7.7'),
	('The Martian', 'Ridley Scott', 'Andy Weir-Drew Goddard','Matt Damon-Jessica Chastain', 'Bilim Kurgu', '2015', '2 saat 14 dakika','Ýngilizce', 'ABD,Macaristan', '8.0'),
	('Ucuz Roman', 'Quentin Tarantino', 'Quentin Tarantino- Roger Avary', 'John Travolta- Uma Thurman', 'Dram', '1994','2 saat 34 dakika', 'Ýngilizce', 'ABD', '8.9');

SELECT * FROM BilimKurgu;

CREATE TABLE Gerilim (
    FýlmAdý VARCHAR(100),
    Yonetmen VARCHAR(100),
    Yazar VARCHAR(100) ,
    Yýldýzlar VARCHAR(100),
    Tur VARCHAR(20),
    Sure VARCHAR(100),
    YayýnYýlý INT,
    Dýl VARCHAR(20),
    Ulke VARCHAR(30),
    Imdb FLOAT
    
);
INSERT INTO Gerilim (FýlmAdý, Yonetmen, Yazar, Yýldýzlar, Tur, YayýnYýlý, Sure, Dýl, Ulke, Imdb)
VALUES
    
    ('Fight Club', 'David Fincher', 'David Fincher-Jim Uhis', 'Brad Bitt- Helena Bonham Carter','Gerilim', '1999', '2 saat 19 dakika','Ýngilizce', 'ABD', '8.8'),
	('Se7en', 'David Fincher', 'Andrew Kevin Walker','Brad Pitt- Morgan Freeman', 'Gerilim', '1995', '2 saat 7 dakika','Ýngilizce', 'ABD', '8.6'),
    ('Zindan Adasý', ' Martin Scorsese', 'Dennis Lehane-Laeta Kalogridis','Leonardo DiCaprio-Mark Ruffalo', 'Gerilim', '2010', '2 saat 18 dakika', 'Ýngilizce-Almanca', 'ABD', '8.1'),
    ('Gone Girl', 'David Fincher', 'Gillian Flynn','Ben Affleck- Rosamund Pike', 'Gerilim', '2014', '2 saat 29 dakika', 'Ýngilizce', 'ABD', '8.1');
	
    

SELECT * FROM Gerilim;

CREATE TABLE Aksiyon (
    FýlmAdý VARCHAR(100),
    Yonetmen VARCHAR(100),
    Yazar VARCHAR(100) ,
    Yýldýzlar VARCHAR(100),
    Tur VARCHAR(20),
    Sure VARCHAR(100),
    YayýnYýlý INT,
    Dýl VARCHAR(20),
    Ulke VARCHAR(30),
    Imdb FLOAT
    
);

INSERT INTO Aksiyon (FýlmAdý, Yonetmen, Yazar, Yýldýzlar, Tur, YayýnYýlý, Sure, Dýl, Ulke, Imdb)
VALUES
    
	('Kara Þövalye', 'Christopher Nolan', 'Chriistopher Nolan- Jonathan Nolan', 'Christian Bale- Heath Ledger', 'Aksiyon', '2008', '2 saat 32 dakika', 'Ýngilizce', 'ABD', '9.0'),
    ('Zor Ölüm', ' John McTiernan', 'Roderick Thorp-Jeb Stuart','Bruce Willis-Alan Rickman', 'Aksiyon', '1988', '2 saat 12 dakika', 'Ýngilizce', 'ABD', '8.2'),
    ('Gladyatör', 'Ridley Scott', 'David Franzoni-John Logan','Russell Crowe-Connie Nielsen', 'Aksiyon', '2000', '2 saat 35 dakika', 'Ýngilizce', 'ABD,Ýngiltere', '8.5'),
	('Adalet', 'Antoine Fuqua', 'Richard Wenk-Marton Csokas','Denzel Washington-Marton Csokas', 'Aksiyon', '2014','2 saat 12 dakika', 'Ýngilizce-Türkçe', 'ABD', '7.2');
    

SELECT * FROM Aksiyon;

CREATE TABLE Müzikal (
    FýlmAdý VARCHAR(100),
    Yonetmen VARCHAR(100),
    Yazar VARCHAR(100) ,
    Yýldýzlar VARCHAR(100),
    Tur VARCHAR(20),
    Sure VARCHAR(100),
    YayýnYýlý INT,
    Dýl VARCHAR(20),
    Ulke VARCHAR(30),
    Imdb FLOAT
    
);

INSERT INTO Müzikal (FýlmAdý, Yonetmen, Yazar, Yýldýzlar, Tur, YayýnYýlý, Sure, Dýl, Ulke, Imdb)
VALUES
    
    
    ('La La Land', 'Damien Chazelle', 'Damien Chazelle', 'Ryan Gosling-Emma Stone', 'Müzikal', '2016', '2 saat 8 dakika', 'Ýngilizce', 'ABD', '8.0'),
    ('Neþeli Günler', 'Robert Wise-Jerome Robbins', 'George Hurdalek-Howard Lindsay','Julie Andrews-Elenor Parker', 'Müzikal', '1965', '2 saat 52 dakika', 'Ýngilizce', 'ABD', '8.0'),
	('Yaðmur Altýnda', 'Stanley Donen-Gene Kelly', 'Betty Comden-Adolph Green','Gene Kelly-Debbie Reynolds', 'Müzikal', '1952', '1 saat 43 dakika', 'Ýngilizce', 'ABD', '8.3'),
    ('Bir Yýldýz Doðuyor', 'Bradley Cooper', 'Eric Roth-Will Fetters','Lady Gaga-Sam Elliott', 'Müzikal', '2018', '2 saat 16 dakika', 'Ýngilizce', 'ABD', '7.6');
    

SELECT * FROM Müzikal;

CREATE TABLE Yeþilçam (
    FýlmAdý VARCHAR(100),
    Yonetmen VARCHAR(100),
    Yazar VARCHAR(100) ,
    Yýldýzlar VARCHAR(100),
    Tur VARCHAR(20),
    Sure VARCHAR(100),
    YayýnYýlý INT,
    Dýl VARCHAR(20),
    Ulke VARCHAR(30),
    Imdb FLOAT
    
);
INSERT INTO Yeþilçam (FýlmAdý, Yonetmen, Yazar, Yýldýzlar, Tur, YayýnYýlý, Sure, Dýl, Ulke, Imdb)
VALUES
   
    ('Hababam Sýnýfý', 'Ertem Eðilmez', 'Umur Bugay','Münir Özkul-Tarýk Akan', 'Yeþilçam', '1975', '1 saat 27 dakika', 'Türkçe', 'Türkiye', '8.8'),
    ('Ýnek Þaban', 'Ertem Þaban', 'Sadýk Þendil', 'Þener Þen-Uður Yücel', 'Yeþilçam', '1978','1 saat  29 dakika', 'Türkçe', 'Türkiye', '7.1'),
    ('Düttürü Dünya', 'Halit Refið', 'Halit Refið','Sadri Alýþýk-Belgin Doruk','Yeþilçam', '1962', '1 saat 19 dakika', 'Türkçe', 'Türkiye', '7.0');

SELECT * FROM Yeþilçam;
