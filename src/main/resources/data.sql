-- utenti --
INSERT INTO utente (nome, cognome, ruolo, username) VALUES
('Luca', 'Rossi', 'CLIENTE', 'lucarossi'),
('Giulia', 'Bianchi', 'OPERATORE', 'fsdg'),
('Marco', 'Verdi', 'CLIENTE', 'hgfds'),
('Elena', 'Neri', 'CLIENTE', 'hgfdsdf'),
('Sara', 'Romano', 'OPERATORE', 'hgfdgfs'),
('Davide', 'Greco', 'CLIENTE', 'hgfdshgfd'),
('Chiara', 'Fontana', 'CLIENTE', 'mnbvcxz'),
('Alessandro', 'Ferrari', 'OPERATORE', 'mnbvcxzfgh'),
('Martina', 'Conti', 'CLIENTE', 'mnbvcxzer'),
('Francesco', 'Gallo', 'CLIENTE', 'mngsdfbvcxz');


INSERT INTO fidelity_card (utente_id) VALUES
(2);
-- autori --
INSERT INTO autore (nome, cognome, data_nascita) VALUES
('Isaac', 'Asimov', '1920-01-02 00:00:00'),
('Philip', 'Dick', '1928-12-16 00:00:00'),
('Arthur', 'Clarke', '1917-12-16 00:00:00'),
('Ursula', 'Le Guin', '1929-10-21 00:00:00'),
('Ray', 'Bradbury', '1920-08-22 00:00:00'),
('Frank', 'Herbert', '1920-10-08 00:00:00'),
('William', 'Gibson', '1948-03-17 00:00:00'),
('H.G.', 'Wells', '1866-09-21 00:00:00'),
('Jules', 'Verne', '1828-02-08 00:00:00'),
('Neal', 'Stephenson', '1959-10-31 00:00:00'),
('Mary', 'Shelley', '1797-08-30 00:00:00'),
('Douglas', 'Adams', '1952-03-11 00:00:00'),
('Kurt', 'Vonnegut', '1922-11-11 00:00:00'),
('Aldous', 'Huxley', '1894-07-26 00:00:00'),
('George', 'Orwell', '1903-06-25 00:00:00'),
('Stanislaw', 'Lem', '1921-09-12 00:00:00'),
('Octavia', 'Butler', '1947-06-22 00:00:00'),
('Robert', 'Heinlein', '1907-07-07 00:00:00'),
('Margaret', 'Atwood', '1939-11-18 00:00:00'),
('Michael', 'Crichton', '1942-10-23 00:00:00'),
('Terry', 'Pratchett', '1948-04-28 00:00:00'),
('Anne', 'McCaffrey', '1926-04-01 00:00:00'),
('Cixin', 'Liu', '1963-06-23 00:00:00'),
('Ted', 'Chiang', '1967-07-20 00:00:00'),
('James', 'Corey', '1970-01-01 00:00:00'),
('Kim', 'Robinson', '1952-03-23 00:00:00'),
('Peter', 'Hamilton', '1960-03-02 00:00:00'),
('Alastair', 'Reynolds', '1966-03-13 00:00:00'),
('Dan', 'Simmons', '1948-04-04 00:00:00'),
('John', 'Scalzi', '1969-05-10 00:00:00');

-- fornitori --
INSERT INTO fornitore (nome) VALUES
('Mondadori'),
('Feltrinelli'),
('Giunti Editore'),
('Rizzoli'),
('Einaudi'),
('Sellerio'),
('HarperCollins'),
('Penguin Random House'),
('Newton Compton Editori'),
('BAO Publishing');

-- libri --
INSERT INTO libro (isbn, titolo, anno_pubblicazione, prezzo, genere, descrizione) VALUES
('978-917-5676-001', 'Ombre su Asimov', 1952, 11.95, 'ROMANZO', 'Un libro romanzo scritto da Isaac Asimov che esplora nuovi mondi e idee originali.'),
('978-698-2870-002', 'Cronache di Simmons', 1953, 16.11, 'FANTASCIENZA', 'Un libro fantascienza scritto da Dan Simmons che esplora nuovi mondi e idee originali.'),
('978-173-3174-003', 'L’ascesa di Heinlein', 1951, 26.77, 'AVVENTURA', 'Un libro avventura scritto da Robert Heinlein che esplora nuovi mondi e idee originali.'),
('978-123-7949-004', 'Ombre su Orwell', 2023, 19.83, 'THRILLER', 'Un libro thriller scritto da George Orwell che esplora nuovi mondi e idee originali.'),
('978-509-7928-005', 'Il segreto di Chiang', 1975, 15.42, 'HORROR', 'Un libro horror scritto da Ted Chiang che esplora nuovi mondi e idee originali.'),
('978-102-4983-006', 'Cronache di Clarke', 1993, 12.78, 'SAGGIO', 'Un libro saggio scritto da Arthur Clarke che esplora nuovi mondi e idee originali.'),
('978-842-2947-007', 'Viaggio verso Huxley', 1978, 21.00, 'STORICO', 'Un libro storico scritto da Aldous Huxley che esplora nuovi mondi e idee originali.'),
('978-643-8842-008', 'L’ascesa di Vonnegut', 1984, 27.19, 'GIALLO', 'Un libro giallo scritto da Kurt Vonnegut che esplora nuovi mondi e idee originali.'),
('978-339-4901-009', 'Il segreto di Bradbury', 2002, 13.99, 'FANTASY', 'Un libro fantasy scritto da Ray Bradbury che esplora nuovi mondi e idee originali.'),
('978-210-8472-010', 'Viaggio verso Atwood', 1965, 14.20, 'BIOGRAFIA', 'Un libro biografia scritto da Margaret Atwood che esplora nuovi mondi e idee originali.'),
('978-217-8473-011', 'Cronache di Le Guin', 2004, 17.30, 'FANTASCIENZA', 'Un libro fantascienza scritto da Ursula Le Guin che esplora nuovi mondi e idee originali.'),
('978-612-3372-012', 'L’ascesa di Shelley', 1981, 22.45, 'HORROR', 'Un libro horror scritto da Mary Shelley che esplora nuovi mondi e idee originali.'),
('978-348-5599-013', 'Il segreto di Wells', 1977, 12.90, 'STORICO', 'Un libro storico scritto da H.G. Wells che esplora nuovi mondi e idee originali.'),
('978-921-4578-014', 'Viaggio verso Atwood', 1995, 14.80, 'ROMANZO', 'Un libro romanzo scritto da Margaret Atwood che esplora nuovi mondi e idee originali.'),
('978-175-3497-015', 'Ombre su McCaffrey', 1969, 13.60, 'FANTASY', 'Un libro fantasy scritto da Anne McCaffrey che esplora nuovi mondi e idee originali.'),
('978-449-6591-016', 'Cronache di Adams', 1990, 19.25, 'FANTASCIENZA', 'Un libro fantascienza scritto da Douglas Adams che esplora nuovi mondi e idee originali.'),
('978-325-9874-017', 'Viaggio verso Crichton', 2005, 16.40, 'THRILLER', 'Un libro thriller scritto da Michael Crichton che esplora nuovi mondi e idee originali.'),
('978-542-1389-018', 'Ombre su Verne', 1987, 20.00, 'AVVENTURA', 'Un libro avventura scritto da Jules Verne che esplora nuovi mondi e idee originali.'),
('978-908-2264-019', 'L’ascesa di Dick', 1999, 24.15, 'ROMANZO', 'Un libro romanzo scritto da Philip Dick che esplora nuovi mondi e idee originali.'),
('978-467-9403-020', 'Il segreto di Heinlein', 1973, 13.50, 'GIALLO', 'Un libro giallo scritto da Robert Heinlein che esplora nuovi mondi e idee originali.'),
('978-719-1845-021', 'Cronache di Pratchett', 1991, 18.70, 'FANTASY', 'Un libro fantasy scritto da Terry Pratchett che esplora nuovi mondi e idee originali.'),
('978-904-8421-022', 'L’ascesa di Lem', 1980, 15.90, 'SAGGIO', 'Un libro saggio scritto da Stanislaw Lem che esplora nuovi mondi e idee originali.'),
('978-681-2348-023', 'Il segreto di Reynolds', 2001, 14.35, 'FANTASCIENZA', 'Un libro fantascienza scritto da Alastair Reynolds che esplora nuovi mondi e idee originali.'),
('978-305-6782-024', 'Ombre su Bradbury', 1988, 12.60, 'HORROR', 'Un libro horror scritto da Ray Bradbury che esplora nuovi mondi e idee originali.'),
('978-876-9833-025', 'Viaggio verso Butler', 2002, 13.95, 'ROMANZO', 'Un libro romanzo scritto da Octavia Butler che esplora nuovi mondi e idee originali.'),
('978-489-1123-026', 'Cronache di Orwell', 1970, 17.20, 'STORICO', 'Un libro storico scritto da George Orwell che esplora nuovi mondi e idee originali.'),
('978-923-7612-027', 'L’ascesa di Verne', 1963, 21.75, 'AVVENTURA', 'Un libro avventura scritto da Jules Verne che esplora nuovi mondi e idee originali.'),
('978-604-3729-028', 'Ombre su Stephenson', 1997, 19.99, 'THRILLER', 'Un libro thriller scritto da Neal Stephenson che esplora nuovi mondi e idee originali.'),
('978-137-5017-029', 'Il segreto di Dick', 1985, 15.40, 'ROMANZO', 'Un libro romanzo scritto da Philip Dick che esplora nuovi mondi e idee originali.'),
('978-360-7841-030', 'Viaggio verso Hamilton', 2010, 20.55, 'FANTASCIENZA', 'Un libro fantascienza scritto da Peter Hamilton che esplora nuovi mondi e idee originali.'),
('978-214-8451-031', 'Ombre su Wells', 1956, 14.80, 'STORICO', 'Un libro storico scritto da H.G. Wells che esplora nuovi mondi e idee originali.'),
('978-618-9472-032', 'Cronache di Huxley', 1967, 13.99, 'SAGGIO', 'Un libro saggio scritto da Aldous Huxley che esplora nuovi mondi e idee originali.'),
('978-892-3741-033', 'L’ascesa di Asimov', 1974, 17.45, 'FANTASCIENZA', 'Un libro fantascienza scritto da Isaac Asimov che esplora nuovi mondi e idee originali.'),
('978-503-1832-034', 'Il segreto di Shelley', 1982, 12.50, 'HORROR', 'Un libro horror scritto da Mary Shelley che esplora nuovi mondi e idee originali.'),
('978-754-9032-035', 'Viaggio verso McCaffrey', 1996, 14.95, 'FANTASY', 'Un libro fantasy scritto da Anne McCaffrey che esplora nuovi mondi e idee originali.'),
('978-649-5289-036', 'Ombre su Heinlein', 2007, 18.30, 'ROMANZO', 'Un libro romanzo scritto da Robert Heinlein che esplora nuovi mondi e idee originali.'),
('978-137-1954-037', 'Cronache di Butler', 2011, 16.20, 'BIOGRAFIA', 'Un libro biografia scritto da Octavia Butler che esplora nuovi mondi e idee originali.'),
('978-285-1193-038', 'L’ascesa di Vonnegut', 1993, 15.65, 'GIALLO', 'Un libro giallo scritto da Kurt Vonnegut che esplora nuovi mondi e idee originali.'),
('978-924-7149-039', 'Il segreto di Atwood', 1980, 19.80, 'ROMANZO', 'Un libro romanzo scritto da Margaret Atwood che esplora nuovi mondi e idee originali.'),
('978-789-4321-040', 'Viaggio verso Simmons', 2009, 17.00, 'THRILLER', 'Un libro thriller scritto da Dan Simmons che esplora nuovi mondi e idee originali.'),
('978-621-4390-041', 'Ombre su Stephenson', 2014, 21.40, 'SAGGIO', 'Un libro saggio scritto da Neal Stephenson che esplora nuovi mondi e idee originali.'),
('978-234-8893-042', 'Cronache di Lem', 1983, 14.75, 'FANTASCIENZA', 'Un libro fantascienza scritto da Stanislaw Lem che esplora nuovi mondi e idee originali.'),
('978-945-1028-043', 'L’ascesa di Gibson', 1992, 18.10, 'THRILLER', 'Un libro thriller scritto da William Gibson che esplora nuovi mondi e idee originali.'),
('978-338-7820-044', 'Il segreto di Adams', 1978, 13.30, 'ROMANZO', 'Un libro romanzo scritto da Douglas Adams che esplora nuovi mondi e idee originali.'),
('978-450-1147-045', 'Viaggio verso Liu', 2006, 16.65, 'FANTASCIENZA', 'Un libro fantascienza scritto da Cixin Liu che esplora nuovi mondi e idee originali.'),
('978-782-1123-046', 'Ombre su Huxley', 1960, 12.90, 'STORICO', 'Un libro storico scritto da Aldous Huxley che esplora nuovi mondi e idee originali.'),
('978-121-6532-047', 'Cronache di Clarke', 1999, 15.85, 'AVVENTURA', 'Un libro avventura scritto da Arthur Clarke che esplora nuovi mondi e idee originali.'),
('978-964-4512-048', 'L’ascesa di Asimov', 1986, 17.30, 'SAGGIO', 'Un libro saggio scritto da Isaac Asimov che esplora nuovi mondi e idee originali.'),
('978-832-7841-049', 'Il segreto di McCaffrey', 2003, 14.20, 'FANTASY', 'Un libro fantasy scritto da Anne McCaffrey che esplora nuovi mondi e idee originali.'),
('978-713-3901-050', 'Viaggio verso Shelley', 1971, 13.55, 'HORROR', 'Un libro horror scritto da Mary Shelley che esplora nuovi mondi e idee originali.'),
('978-365-7210-051', 'Ombre su Bradbury', 2008, 19.90, 'ROMANZO', 'Un libro romanzo scritto da Ray Bradbury che esplora nuovi mondi e idee originali.'),
('978-914-4851-052', 'Cronache di Dick', 1965, 13.99, 'FANTASCIENZA', 'Un libro fantascienza scritto da Philip Dick che esplora nuovi mondi e idee originali.'),
('978-741-1190-053', 'L’ascesa di Verne', 1989, 15.60, 'AVVENTURA', 'Un libro avventura scritto da Jules Verne che esplora nuovi mondi e idee originali.'),
('978-539-9032-054', 'Il segreto di Le Guin', 2017, 21.75, 'FANTASY', 'Un libro fantasy scritto da Ursula Le Guin che esplora nuovi mondi e idee originali.'),
('978-208-1234-055', 'Viaggio verso Butler', 1976, 12.45, 'ROMANZO', 'Un libro romanzo scritto da Octavia Butler che esplora nuovi mondi e idee originali.'),
('978-687-3344-056', 'Ombre su Atwood', 2000, 14.30, 'GIALLO', 'Un libro giallo scritto da Margaret Atwood che esplora nuovi mondi e idee originali.'),
('978-357-8871-057', 'Cronache di Reynolds', 1994, 18.25, 'FANTASCIENZA', 'Un libro fantascienza scritto da Alastair Reynolds che esplora nuovi mondi e idee originali.'),
('978-426-7941-058', 'L’ascesa di Adams', 1972, 13.75, 'FANTASY', 'Un libro fantasy scritto da Douglas Adams che esplora nuovi mondi e idee originali.'),
('978-863-4921-059', 'Il segreto di Orwell', 1962, 17.60, 'STORICO', 'Un libro storico scritto da George Orwell che esplora nuovi mondi e idee originali.'),
('978-190-4753-060', 'Viaggio verso Vonnegut', 1998, 16.50, 'SAGGIO', 'Un libro saggio scritto da Kurt Vonnegut che esplora nuovi mondi e idee originali.');

-- ordini --
INSERT INTO ordine (data_ordine, stato, tipo, fornitore_id) VALUES
('2023-01-15 10:30:00', 'IN_ATTESA', 'ACQUISTO',1),
('2023-02-20 14:45:00', 'CONSEGNATO', 'DONAZIONE',10),
('2023-03-05 09:10:00', 'CONSEGNATO', 'DONAZIONE',8),
('2023-04-18 11:20:00', 'IN_ATTESA', 'ACQUISTO',2),
('2023-05-10 16:00:00', 'CONSEGNATO', 'ACQUISTO',7),
('2023-06-22 13:35:00', 'IN_ATTESA', 'DONAZIONE',2),
('2023-07-30 08:25:00', 'CONSEGNATO', 'DONAZIONE',4),
('2023-08-14 12:50:00', 'IN_ATTESA', 'ACQUISTO',8),
('2023-09-09 15:15:00', 'IN_ATTESA', 'DONAZIONE',6),
('2023-10-01 17:05:00', 'CONSEGNATO', 'ACQUISTO',5),
('2023-11-13 10:00:00', 'IN_ATTESA', 'ACQUISTO',3),
('2023-12-25 18:45:00', 'CONSEGNATO', 'DONAZIONE',9),
('2024-01-03 09:40:00', 'IN_ATTESA', 'DONAZIONE',9),
('2024-02-16 14:00:00', 'IN_ATTESA', 'ACQUISTO',1),
('2024-03-08 11:30:00', 'CONSEGNATO', 'DONAZIONE',5),
('2025-07-01 09:15:00', 'IN_ATTESA', 'ACQUISTO',2),
('2025-07-05 14:30:00', 'CONSEGNATO', 'DONAZIONE',8),
('2025-07-10 11:45:00', 'IN_ATTESA', 'ACQUISTO',5),
('2025-07-15 16:10:00', 'CONSEGNATO', 'DONAZIONE',3),
('2025-07-20 13:00:00', 'CONSEGNATO', 'ACQUISTO',1),
('2025-07-22 08:25:00', 'IN_ATTESA', 'DONAZIONE',4),
('2025-07-27 17:40:00', 'CONSEGNATO', 'ACQUISTO',6),
('2025-07-30 10:55:00', 'IN_ATTESA', 'DONAZIONE',7),
('2025-08-02 09:05:00', 'CONSEGNATO', 'ACQUISTO',2),
('2025-08-07 15:25:00', 'IN_ATTESA', 'DONAZIONE',5),
('2025-08-10 12:35:00', 'CONSEGNATO', 'DONAZIONE',9),
('2025-08-13 14:45:00', 'IN_ATTESA', 'ACQUISTO',10),
('2025-08-18 11:15:00', 'CONSEGNATO', 'DONAZIONE',1),
('2025-08-22 08:50:00', 'IN_ATTESA', 'DONAZIONE',6),
('2025-08-28 17:20:00', 'CONSEGNATO', 'ACQUISTO',3);

--acquisto--
INSERT INTO acquisto (ordine_id, libro_isbn, num_copie, prezzo_per_copia) VALUES
(1,'978-190-4753-060', 2, 13.0),
(2,'978-190-4753-060', 3, 13.0),
(2,'978-863-4921-059', 2, 13.0),
(16,'978-914-4851-052', 2, 17.45),
(17,'978-426-7941-058', 4, 14.35),
(18,'978-914-4851-052', 1, 26.77),
(20,'978-426-7941-058', 2, 14.95),
(23,'978-914-4851-052', 2, 12.60),
(16,'978-426-7941-058', 3, 13.60),
(23,'978-914-4851-052', 4, 12.50),
(26,'978-604-3729-028', 1, 19.99),
(17,'978-618-9472-032', 2, 13.99),
(18,'978-539-9032-054', 3, 15.40),
(20,'978-539-9032-054', 2, 11.00),
(23,'978-539-9032-054', 5, 14.80);


-- prestiti --
INSERT INTO prestito (utente_id, libro_isbn, data_prestito, data_restituzione) VALUES
(1, '978-863-4921-059', '2023-01-10 09:00:00', '2023-01-20 15:30:00'),
(4, '978-357-8871-057', '2025-07-15 10:00:00', NULL),
(4, '978-621-4390-041', '2025-07-16 11:30:00', NULL),
(4, '978-450-1147-045', '2025-07-17 09:15:00', NULL),
(4, '978-503-1832-034', '2025-07-18 14:45:00', NULL),
(4, '978-173-3174-003', '2025-07-19 16:20:00', NULL),
(2, '978-190-4753-060', '2023-02-05 14:00:00', '2023-02-28 12:00:00'),
(3, '978-863-4921-059', '2023-03-01 11:45:00', NULL),
(1, '978-210-8472-010', '2022-03-01 11:45:00', NULL),
(3, '978-190-4753-060', '2023-03-01 11:45:00', NULL);





-- vendite --
INSERT INTO vendita (data_vendita, utente_id) VALUES
('2025-07-12 10:30:00', 3),
('2025-07-05 15:00:00', 7),
('2025-07-18 09:45:00', 1),
('2025-07-22 11:20:00', 8),
('2025-07-10 14:10:00', 9),
('2025-08-01 13:35:00', 8);


-- carrello --
INSERT INTO carrello (vendita_id, numero_copie, libro_isbn, prezzo_per_copia) VALUES
(1, 2, '978-539-9032-054', 12.14),
(3, 4,'978-782-1123-046',11.12),
(2, 5, '978-426-7941-058',10.09),
(3, 3, '978-426-7941-058',14.17),
(6, 5, '978-357-8871-057',9.08),
(5, 6, '978-357-8871-057',10),
(4, 2, '978-357-8871-057',10.50);


-- libro_autore
INSERT INTO libro_autore (libro_isbn, autori_id) VALUES
('978-917-5676-001', 1),
('978-698-2870-002', 2),
('978-173-3174-003', 3),
('978-123-7949-004', 4),
('978-509-7928-005', 5),
('978-102-4983-006', 6),
('978-842-2947-007', 7),
('978-643-8842-008', 8),
('978-339-4901-009', 9),
('978-210-8472-010', 10),
('978-217-8473-011', 11),
('978-612-3372-012', 12),
('978-348-5599-013', 13),
('978-921-4578-014', 10),
('978-175-3497-015', 14),
('978-449-6591-016', 15),
('978-325-9874-017', 16),
('978-542-1389-018', 17),
('978-908-2264-019', 18),
('978-467-9403-020', 3),
('978-719-1845-021', 19),
('978-904-8421-022', 20),
('978-681-2348-023', 21),
('978-305-6782-024', 9),
('978-876-9833-025', 22),
('978-489-1123-026', 4),
('978-923-7612-027', 17),
('978-604-3729-028', 23),
('978-137-5017-029', 18),
('978-360-7841-030', 24),
('978-214-8451-031', 13),
('978-618-9472-032', 7),
('978-892-3741-033', 1),
('978-503-1832-034', 12),
('978-754-9032-035', 14),
('978-649-5289-036', 3),
('978-137-1954-037', 22),
('978-285-1193-038', 8),
('978-924-7149-039', 10),
('978-789-4321-040', 2),
('978-621-4390-041', 23),
('978-234-8893-042', 20),
('978-945-1028-043', 25),
('978-338-7820-044', 15),
('978-450-1147-045', 26),
('978-782-1123-046', 7),
('978-121-6532-047', 6),
('978-964-4512-048', 1),
('978-832-7841-049', 14);

DROP TABLE IF EXISTS libro_con_copie;

-- vista per copie disponibili
CREATE OR replace VIEW libro_con_copie AS

WITH libri_acquistati AS
(SELECT l.*, SUM(a.num_copie) AS copie_acquistate FROM libro l
JOIN acquisto a ON l.isbn = a.libro_isbn
JOIN ordine o ON o.id = a.ordine_id
WHERE o.stato = 'CONSEGNATO'
GROUP BY l.isbn),

-- aggiornare e testare
libri_venduti AS
(SELECT c.libro_isbn, SUM(c.numero_copie) as copie_vendute
FROM carrello c
GROUP BY c.libro_isbn),

libri_prestati AS
(SELECT l.*, COUNT(*) AS copie_prestate FROM libro l
JOIN prestito p ON p.libro_isbn = l.isbn
WHERE p.data_restituzione IS NULL
GROUP BY l.isbn)

SELECT l.*, la.copie_acquistate,
COALESCE(lv.copie_vendute, 0) AS copie_vendute,
COALESCE(lp.copie_prestate, 0) AS copie_prestate,
la.copie_acquistate - COALESCE(lv.copie_vendute, 0) - COALESCE(lp.copie_prestate, 0)
AS copie_disponibili
FROM libro l
JOIN libri_acquistati la ON la.isbn = l.isbn
left JOIN libri_venduti lv ON lv.libro_isbn = l.isbn
LEFT JOIN libri_prestati lp ON lp.isbn = l.isbn
WHERE la.copie_acquistate - COALESCE(lv.copie_vendute, 0) - COALESCE(lp.copie_prestate, 0) > 0;

-- view per ordinamento per autore
drop table if exists libro_con_autori;

create or replace view libro_con_autori as

select l.*, min( concat(a.nome, ' ',a.cognome) ) as autore_principale from libro_autore la
join autore a on a.id = la.autori_id
join libro l on l.isbn = la.libro_isbn
group by l.isbn;

-- view per mapping prestito per giorno
drop table if exists prestito_per_giorno;
create or replace view prestito_per_giorno as
select date(data_prestito) as giorno,
count(*) as numero_prestiti
from prestito
group by giorno
order by giorno;

