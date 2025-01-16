--
-- File generated with SQLiteStudio v3.4.13 on dom gen 5 22:12:03 2025
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: accounts
CREATE TABLE IF NOT EXISTS "accounts" (
	"id" INTEGER NOT NULL  ,
	"username" VARCHAR(50) NOT NULL  ,
	"password" VARCHAR(255) NOT NULL  ,
	"email" VARCHAR(100) NOT NULL  ,
	PRIMARY KEY ("id")
);
INSERT INTO accounts (id, username, password, email) VALUES (1, 'carlo', 'd1008N1305', 'carlo.zanieri@gmail.com');
INSERT INTO accounts (id, username, password, email) VALUES (2, 'carlo2', 'd1008N1305', 'carlo.zanieri@gmail.com');
INSERT INTO accounts (id, username, password, email) VALUES (3, 'mdAhPtcxHSf', 'uWxwBKXZe6nS!', 'pauljordan9184@gmail.com');
INSERT INTO accounts (id, username, password, email) VALUES (4, 'CSUaPhdolFRfsGZI', 'SFWbivUdakZ5!', 'pauljordan9184@gmail.com');
INSERT INTO accounts (id, username, password, email) VALUES (5, 'TPDMkdXCQvoJz', 'T0QltemiYMEd!', 'judithgray2811@gmail.com');
INSERT INTO accounts (id, username, password, email) VALUES (6, 'tSiJPBHWqQlw', '0vBP3mkCA5i6!', 'judithgray2811@gmail.com');
INSERT INTO accounts (id, username, password, email) VALUES (7, 'pZzXawebDFMoECy', '34N8Fgw1PvZc!', 'whitneylawson296@gmail.com');
INSERT INTO accounts (id, username, password, email) VALUES (8, 'FQNvSUXErucxW', '4F8nzWa26u0m!', 'whitneylawson296@gmail.com');
INSERT INTO accounts (id, username, password, email) VALUES (9, 'zBmstDvqlSwnXCeb', 'e0a8LjGPTwdn!', 'consolatabendkvq13ip19@gmail.com');
INSERT INTO accounts (id, username, password, email) VALUES (10, 'JdlXruZf', 'st4yempSIZ67!', 'consolatabendkvq13ip19@gmail.com');
INSERT INTO accounts (id, username, password, email) VALUES (11, 'bmgRnYMKkOZB', 'pfXM3t6j47US!', 'valeryo6ftr65@gmail.com');
INSERT INTO accounts (id, username, password, email) VALUES (12, 'ZizJspUoMnT', 'LCWzvHEUq3P0!', 'valeryo6ftr65@gmail.com');
INSERT INTO accounts (id, username, password, email) VALUES (13, 'nBDlaxXuGEhN', '53kLefi6R7XN!', 'mw932299@gmail.com');
INSERT INTO accounts (id, username, password, email) VALUES (14, 'DOWIRKAulij', 'NjVYthx0oTp0!', 'mw932299@gmail.com');
INSERT INTO accounts (id, username, password, email) VALUES (15, 'yvaiNQexICqWoRtn', 'o5ztmchwUNin!', 'tobymorgan172393@gmail.com');
INSERT INTO accounts (id, username, password, email) VALUES (16, 'yrWcxiXoasevRVLI', '0EmZIj5qB6nu!', 'tobymorgan172393@gmail.com');
INSERT INTO accounts (id, username, password, email) VALUES (17, 'AgQjzbhuedtX', 'ZkWRiplM9wj8!', 'murphyfughes71231@gmail.com');
INSERT INTO accounts (id, username, password, email) VALUES (18, 'QZPVwyzsYOkGlTi', 'W6uOaESRtKvi!', 'murphyfughes71231@gmail.com');
INSERT INTO accounts (id, username, password, email) VALUES (19, 'YLGMifDCeUyTvN', 'K8YzjcLoarET!', 'evaflynn137@gmail.com');
INSERT INTO accounts (id, username, password, email) VALUES (20, 'oOxKdiAGP', 'QGvg9kFfOcKl!', 'evaflynn137@gmail.com');
INSERT INTO accounts (id, username, password, email) VALUES (21, 'vagaxa2367', 'vagaxa2367@peykesabz.com', 'vagaxa2367@peykesabz.com');
INSERT INTO accounts (id, username, password, email) VALUES (22, 'uUZnbkpTI', 'I9SsBm2Z4qQj!', 'soderglaurice8@gmail.com');
INSERT INTO accounts (id, username, password, email) VALUES (23, 'gkLNZpKrqFHC', 'acoRn1z3f4L5!', 'soderglaurice8@gmail.com');
INSERT INTO accounts (id, username, password, email) VALUES (24, 'zbvDxYhKLfABcpG', 'I82XmlF07QRv!', 'pc499631@gmail.com');
INSERT INTO accounts (id, username, password, email) VALUES (25, 'ysPMRkUzLul', 'RitSsXO07QAL!', 'pc499631@gmail.com');

-- Table: auth_group
CREATE TABLE IF NOT EXISTS "auth_group" (
	"id" INTEGER NOT NULL  ,
	"name" VARCHAR(150) NOT NULL  ,
	PRIMARY KEY ("id")
);

-- Table: auth_group_permissions
CREATE TABLE IF NOT EXISTS "auth_group_permissions" (
	"id" INTEGER NOT NULL  ,
	"group_id" INTEGER NOT NULL  ,
	"permission_id" INTEGER NOT NULL  ,
	PRIMARY KEY ("id"),
	FOREIGN KEY("group_id") REFERENCES "auth_group" ("id") ON UPDATE RESTRICT ON DELETE RESTRICT,
	FOREIGN KEY("permission_id") REFERENCES "auth_permission" ("id") ON UPDATE RESTRICT ON DELETE RESTRICT
);

-- Table: auth_permission
CREATE TABLE IF NOT EXISTS "auth_permission" (
	"id" INTEGER NOT NULL  ,
	"name" VARCHAR(255) NOT NULL  ,
	"content_type_id" INTEGER NOT NULL  ,
	"codename" VARCHAR(100) NOT NULL  ,
	PRIMARY KEY ("id"),
	FOREIGN KEY("content_type_id") REFERENCES "django_content_type" ("id") ON UPDATE RESTRICT ON DELETE RESTRICT
);
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (25, 'Can add menuweb', 7, 'add_menuweb');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (26, 'Can change menuweb', 7, 'change_menuweb');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (27, 'Can delete menuweb', 7, 'delete_menuweb');
INSERT INTO auth_permission (id, name, content_type_id, codename) VALUES (28, 'Can view menuweb', 7, 'view_menuweb');

-- Table: auth_user
CREATE TABLE IF NOT EXISTS "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "last_name" varchar(150) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "first_name" varchar(150) NOT NULL);
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (1, 'pbkdf2_sha256$870000$mLhiqXGCVPqDBpHU96Xsyp$52g1TzvoZCXiUYuEYYerc/mX5clR35d1yJ5DrtMU4hI=', '2025-01-05 17:58:20.698523', 1, 'admin', '', 'carlo.zanieri@gmail.com', 1, 1, '2025-01-05 17:45:58.123530', '');

-- Table: auth_user_groups
CREATE TABLE IF NOT EXISTS "auth_user_groups" (
	"id" INTEGER NOT NULL  ,
	"user_id" INTEGER NOT NULL  ,
	"group_id" INTEGER NOT NULL  ,
	PRIMARY KEY ("id"),
	FOREIGN KEY("group_id") REFERENCES "auth_group" ("id") ON UPDATE RESTRICT ON DELETE RESTRICT,
	FOREIGN KEY("user_id") REFERENCES "auth_user" ("id") ON UPDATE RESTRICT ON DELETE RESTRICT
);

-- Table: auth_user_user_permissions
CREATE TABLE IF NOT EXISTS "auth_user_user_permissions" (
	"id" INTEGER NOT NULL  ,
	"user_id" INTEGER NOT NULL  ,
	"permission_id" INTEGER NOT NULL  ,
	PRIMARY KEY ("id"),
	FOREIGN KEY("user_id") REFERENCES "auth_user" ("id") ON UPDATE RESTRICT ON DELETE RESTRICT,
	FOREIGN KEY("permission_id") REFERENCES "auth_permission" ("id") ON UPDATE RESTRICT ON DELETE RESTRICT
);

-- Table: authors
CREATE TABLE IF NOT EXISTS "authors" (
	"id" INTEGER NOT NULL  ,
	"email" VARCHAR(100) NOT NULL  ,
	"name" VARCHAR(100) NOT NULL  ,
	"hashed_password" VARCHAR(100) NOT NULL  ,
	PRIMARY KEY ("id")
);
INSERT INTO authors (id, email, name, hashed_password) VALUES (1, 'carlo.zanieri@gmail.com', 'Carlo Zanieri', '$2b$12$fqZHUKb.e0iFunaghlpfw.Ln9LMMtQrlBA2u77rVqH8q4mvNAHI9C');
INSERT INTO authors (id, email, name, hashed_password) VALUES (4, 'carlo2.zanieri@gmail.com', 'Carlo Zanieri', '$2b$12$6x7IwBN0PP9Wq2VolHJ3ROQuZDA4YfWb.OMKGCXPY1WIoM2yKcLB.');
INSERT INTO authors (id, email, name, hashed_password) VALUES (5, 'carlo.zanieri3@gmail.com', 'Carlo Zanieri', '$2b$12$WLoOQ/0B1nhl3WQnolyiFu7j8rvia6vyrbheklbdR2tPtRh.FK9e2');
INSERT INTO authors (id, email, name, hashed_password) VALUES (6, 'carlo3.zanieri@gmail.com', 'carlo', '$2b$12$8A1nU7WUo0l6a2ricP0O7.cwk8sYohbRSahjobCJLpDmUTjolbGdq');
INSERT INTO authors (id, email, name, hashed_password) VALUES (10, 'carlo.zanieri@libero.it', 'Carlo Zanieri', '$2b$12$cZSHJbTlqcmd4Iw6Ki.w0OWizgmXH0sSwqYr2qMTtYzt79gI0zfcW');
INSERT INTO authors (id, email, name, hashed_password) VALUES (11, 'carlo.zanieri2@libero.it', 'Carlo Zanieri', '$2b$12$3lgC2T15FW6Frpm8/PrDneIRDDbfdwKmjOhTpjRV0BF9KFiBUQlLW');
INSERT INTO authors (id, email, name, hashed_password) VALUES (13, 'info2@politicsbook.net', 'Carlo Zanieri', '$2b$12$Kd2QkpGlRFyVEe4oRI71Q.SPmH8cRkop/ifP8rdsb80UMRKt5ZqLm');
INSERT INTO authors (id, email, name, hashed_password) VALUES (14, 'carlo.zanieri@politicsbook.net', 'politicsbook', '$2b$12$MLnPs6pnprLTX1ySWX04hecs2o4K3MSTvVwoEaJdSXpmPlB.5ftBu');
INSERT INTO authors (id, email, name, hashed_password) VALUES (15, 'info3@politicsbook.net', 'Carlo Zanieri', '$2b$12$rGS9zeHXozg7kV7aJzFpFurclN0ziUmih0G2Ma2g/QFJEeXnK6EO.');
INSERT INTO authors (id, email, name, hashed_password) VALUES (16, 'info4@politicsbook.net', 'politicsbook', '$2b$12$/Ysvnj9ZvSFYDlLWYzTm4u/vdjFN.ROxT4Cmkz6dflYT2kJ4ceJDm');
INSERT INTO authors (id, email, name, hashed_password) VALUES (17, 'info5@politicsbook.net', 'politicsbook', '$2b$12$7DqemR8.ooj8eNIzxZ9Lf.1ZtzITl79270Ak0sB8Y29kYl4sXwnhW');
INSERT INTO authors (id, email, name, hashed_password) VALUES (18, 'carlo@politicsbook.net', 'politicsbook', '$2b$12$795KcLOq0tnSoq/48T.IJeCXp7qdRyNA7GeEqv7op3dy27qS7B6u.');
INSERT INTO authors (id, email, name, hashed_password) VALUES (22, 'carlo.zanieri@tim.it', 'politicsbook', '$2b$12$7oWcdVxzI55DG6aOEctxtusw95Clqzn76i7Fwv.ptO/UU8FBSjeaO');

-- Table: barcode
CREATE TABLE IF NOT EXISTS "barcode" (
	"barcode" VARCHAR(13) NOT NULL DEFAULT '0000000000' ,
	"nome" VARCHAR(100) NULL  ,
	"cognome" VARCHAR(100) NULL  ,
	"codicefiscale" VARCHAR(16) NULL  ,
	"mail" VARCHAR(100) NULL  ,
	"attivo" INTEGER NOT NULL DEFAULT '1'
);
INSERT INTO barcode (barcode, nome, cognome, codicefiscale, mail, attivo) VALUES ('8001120835888', 'Carlo', 'Zanieri', 'ZNRCRL59H08I085X', 'carlo.zanieri@gmail.com', 1);
INSERT INTO barcode (barcode, nome, cognome, codicefiscale, mail, attivo) VALUES ('8001120817778', 'Carlo2', 'zanieri2', 'xxxxxxxxxxxxxxxx', 'carlo.zanieri@tim.it', 1);
INSERT INTO barcode (barcode, nome, cognome, codicefiscale, mail, attivo) VALUES ('0000000000000', 'Utente ', 'Non Riconosciuto', 'xxxxxxxxxxxxxxxx', 'carlo.zanieri@gmail.com', 1);

-- Table: beb_menuweb
CREATE TABLE IF NOT EXISTS "beb_menuweb" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "codice" varchar(20) NOT NULL, "radice" varchar(20) NOT NULL, "livello" integer NOT NULL, "titolo" varchar(64) NOT NULL, "descrizione" varchar(256) NOT NULL, "link" varchar(512) NOT NULL, "attivo" integer NOT NULL, "icon" varchar(255) NOT NULL, "workplace" integer NOT NULL, "param1" varchar(255) NOT NULL, "ordine" integer NOT NULL);

-- Table: blog
CREATE TABLE IF NOT EXISTS "blog" (
	"id" INTEGER NOT NULL  ,
	"author_id" INTEGER NOT NULL  ,
	"title" VARCHAR(512) NOT NULL  ,
	"markdown" TEXT NOT NULL  ,
	"html" TEXT NOT NULL  ,
	"published" DATETIME NOT NULL DEFAULT 'current_timestamp()' ,
	"updated" DATETIME NOT NULL DEFAULT 'current_timestamp()' ,
	"img" VARCHAR(100) NULL  ,
	"dir" VARCHAR(100) NULL  ,
	"html2" TEXT NOT NULL  ,
	"html3" TEXT NOT NULL  ,
	"img2" VARCHAR(512) NULL  ,
	"img3" VARCHAR(100) NULL  ,
	PRIMARY KEY ("id")
);
INSERT INTO blog (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (1, 1, 'Prestige 1', 'Un ricco programma che accompagnerà sanpierini e visitatori da giugno a settembre, nel segno dell’arte, come occasione di ripartenza. E’ davvero ricco il programma di “Venerdì a Villa Adami”, l’iniziativa proposta dalla locale Pro Loco e dal “CCN de’ Medici”, che valorizzerà una delle aree più belle di San Piero a Sieve. Il tutto per dimostrare la propria voglia di non fermarsi, di andare avanti, ma tutto nel rispetto delle norme e senza prendere rischi per spettatori e partecipanti. Una manifestazione che ha avuto il patrocinio del Comune di Scarperia e San Piero ', 'Un ricco programma che accompagnerà sanpierini e visitatori da giugno a settembre, nel segno dell’arte, come occasione di ripartenza. E’ davvero ricco il programma di “Venerdì a Villa Adami”, l’iniziativa proposta dalla locale Pro Loco e dal “CCN de’ Medici”, che valorizzerà una delle aree più belle di San Piero a Sieve. Il tutto per dimostrare la propria voglia di non fermarsi, di andare avanti, ma tutto nel rispetto delle norme e senza prendere rischi per spettatori e partecipanti. Una manifestazione che ha avuto il patrocinio del Comune di Scarperia e San Piero

Il primo appuntamento previsto è per venerdì 18 Giugno, con “Francesco Nuti. Andata, caduta e ritorno”, scritto e diretto da Valerio Groppa, con Nicola Pecci, le musiche di Giovanni e Francesco Nuti, tratto dall''autobiografia di Francesco Nuti "Sono un bravo ragazzo". Sabato 19 Giugno (alle 17) sarà la volta di “Dante e il Mugello”: Carlo Forasassi conversa con il Dott. Fabrizio Boni, a 700 anni dalla morte di Dante, ad ingresso gratuito. Venerdì 25 Giugno musica protagonista con “Jazz standard band”, con un trio di eccezione composto da Franco Baggiani alla tromba, Alessandro Bruno alla chitarra e Alessandro Geri al contrabbasso. Il giorno seguente sarà la volta del concerto dei “Polimeri Variabili”, con musica prevalentemente funky. Luglio si aprirà il 2 con “I Geneticamente mortificati” in “Restauration. Siamo tornati di moda” monologo imperfetto sull''attualità, scritto da Marco Giavatto e diretto da Fulvio Ferrati. Si proseguirà venerdì 9 Luglio

con “Piccoli crimini coniugali” di Eric Emmanuel Schmitt con Fabrizio Pinzauti e Rosanna Reccia ed il 16 con “La Divina Commedia in 100 luoghi - Inferno Canto XV” performance di Matteo Fratarcangeli. Venerdì 23 Luglio “Musica 60-70-80-90 con Altri Tempi” ad ingresso gratuito ed a chiuder e il mese, il 30, “Dante. Viaggio dentro e intorno alla Divina Commedia” con Gianluigi Tosto. Due gli appuntamenti in agosto: il 6 con “Itaglia” con Matteo Procuranti e Silvia Cuncu per la regia di Virginia Martini ed il 27 “Alla radio con Čechov si può anche ridere” da un''idea di Pietro Venè, con I Pinguini e la regia di Pietro Venè e Cristina Bacci. Venerdì 3 Settembre “New Orleans history” quintetto di fiati e percussioni ed a chiudere, ad ingresso gratuito, venerdì 10 Settembre “Musica dal vivo” con Ivo e Sofia.

“Si tratta di un programma che spazia tra arti e generi molto diversi, spiega soddisfatto il presidente della Pro Loco di San Piero, Sauro Bani, che abbiamo cercato di mettere insieme per accontentare gusti e persone differenti. C’era bisogno di qualcosa che, in sicurezza, ridesse vita alle arti e possibilità di aggregarsi. L’esperienza molto positiva in Villa Adami dello scorso anno ci ha spinto a far crescere questa idea ed a riproporla, diversificando le possibilità di quello che è uno dei luoghi di ritrovo più belli e caratteristici del nostro paese.”

L’accesso, regolamentato, agli spettacoli, avrà un costo di 8 euro a serata (4 euro il ridotto) tranne alcuni appuntamenti ove sia indicato specificatamente l’ingresso gratuito. Le serate, che saranno singolarmente annullate in caso di maltempo, hanno inizio alle 21, prevedono una prenotazione obbligatoria per mail a   prolocosanpieroasieve@gmail.com o attraverso whatsapp al 3382562225 o al 3311090673.', '2022-05-09 17:53:34', '2022-05-09 17:53:34', 'prestige1.jpg', '/blogs/img', 'Un ricco programma che accompagnerà sanpierini e visitatori da giugno a settembre, nel segno dell’arte, come occasione di ripartenza...
', 'Un ricco programma che accompagnerà sanpierini e visitatori da giugno a settembre, nel segno dell’arte, come occasione di ripartenza. E’ davvero ricco il programma di “Venerdì a Villa Adami”, l’iniziativa proposta dalla locale Pro Loco e dal “CCN de’ Medici”, che valorizzerà una delle aree più belle di San Piero a Sieve. Il tutto per dimostrare la propria voglia di non fermarsi, di andare avanti, ma tutto nel rispetto delle norme e senza prendere rischi per spettatori e partecipanti. Una manifestazione che ha avuto il patrocinio del Comune di Scarperia e San Piero ', 'Villa Adami Venerdi 2021.jpg', 'Villa Adami Venerdi 2021.jpg');
INSERT INTO blog (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (2, 1, 'Prestige 2', 'Si è aperto il bando per il 17° Simposio dedicato allo scultore Antonio Berti', 'Dal 14 al 25 settembre San Piero a Sieve ospiterà la diciassettesima edizione del Simposio di Scultura "Premio Antonio Berti", evento biennale dedicato all''arte che vede coinvolti gli studenti delle più importanti Accademie di Belle Arti italiane ed europee che si sfideranno a “colpi di scalpello” nel parco dedicato proprio all’artista sanpierino (nell’anno in cui la cittadina sarà ufficialmente “intitolata” con la posa di cartelli all’ingresso del centro abitato con su scritto “paese natale di Antonio Berti”).

La manifestazione, promossa dalla Proloco di San Piero a Sieve, con il Patrocinio del Comune di Scarperia e San Piero e della Regione Toscana e con la collaborazione dell''Accademia di Belle Arti di Firenze e di quella di Carrara, il Comune di Firenzuola, l''Unione Montana dei Comuni del Mugello e la Fondazione per la Scultura Antonio Berti, vede il coinvolgimento anche dell’Ente Cassa di Risparmio di Firenze che ha finanziato il progetto di simposio e del percorso ad esso correlato. Il Simposio di Scultura nasce dalla volontà di rendere omaggio alla figura del grande scultore e conterraneo Antonio Berti, profondamente legato alla sua terra. ', '2022-05-09 21:29:38', '2022-05-09 21:29:38', 'prestige2.jpg', '/blogs/img', 'Per dieci giorni i sei studenti realizzano opere scultoree contemporanee, a tema libero, utilizzando blocchi di pietra serena, grazie al Copser, provenienti dalle cave di Firenzuola (che ospiteranno, in uno dei giorni del Simposio, ', 'La novità di quest’anno sarà la creazione di una categoria speciale, che quest’anno sarà dedicata ai 700 anni dalla morte di Dante, a cui un artista, invitato fra chi ha partecipato in questi anni (e sono oltre 100), dovrà ispirarsi per scolpire un’opera più grande delle altre, fuori concorso, con 15 giorni a disposizione.

Molte delle sculture realizzate nelle precedenti edizioni hanno trovato collocazione nel tessuto urbano di San Piero a Sieve, valorizzandone parchi, piazze e giardini. E questo ha dato vita all’idea del percorso che finalmente dovrebbe trovare un compimento. La Pro Loco, insieme con il Centro Commerciale de'' Medici, ha creato un progetto che intende valorizzare l''abitato di San Piero a Sieve, già ricco di beni architettonici e storici di rilievo, attraverso la collocazione delle opere realizzate in questi anni. Lo sviluppo di tale percorso, che unirà in particolare la Stazione di San Piero con lo stesso Parco Berti, prevede la riqualificazione delle aree interessate e la collocazione di cartellonistica che, oltre ad indicare il percorso, guidi il visitatore alla scoperta degli angoli più suggestivi del paese: la Pieve millenaria dedicata a San Pietro, la Fortezza di San Martino, Villa Adami, Villa Schifanoia, la Torre medicea di Scoronconcolo, guidati in un percorso ideale che ha le sculture di pietra come filo conduttore. Un progetto ambizioso, ma già ben avviato, nel quale la Pro Loco crede molto.

“Quest’anno, spiega il presidente della Pro Loco sanpierina, Sauro Bani, si fa un ulteriore salto di qualità dando impulso al Simposio, e partendo con il percorso, attraverso il tessuto urbano sanpierino, e con questa nuova sezione, con un artista affermato e che già a San Piero ha dimostrato il suo valore, volgiamo rafforzare il legame di San Piero con la scultura e l’arte, cosa che cerchiamo di far emergere da tutte le nostre iniziative.”', 'simposio5.jpg', 'simposio 4.jpg');
INSERT INTO blog (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (3, 2, 'Prestige 3', 'a', '2	1	Si è aperto il bando per il 17° Simposio dedicato allo scultore Antonio Berti	Si è aperto il bando per il 17° Simposio dedicato allo scultore Antonio Berti	Si è aperto il bando per il 17° Simposio dedicato allo scultore Antonio Berti	"Dal 14 al 25 settembre San Piero a Sieve ospiterà la diciassettesima edizione del Simposio di Scultura "Premio Antonio Berti", evento biennale dedicato all''arte che vede coinvolti gli studenti delle più importanti Accademie di Belle Arti italiane ed europee che si sfideranno a “colpi di scalpello” nel parco dedicato proprio all’artista sanpierino (nell’anno in cui la cittadina sarà ufficialmente “intitolata” con la posa di cartelli all’ingresso del centro abitato con su scritto “paese natale di Antonio Berti”).

La manifestazione, promossa dalla Proloco di San Piero a Sieve, con il Patrocinio del Comune di Scarperia e San Piero e della Regione Toscana e con la collaborazione dell''Accademia di Belle Arti di Firenze e di quella di Carrara, il Comune di Firenzuola, l''Unione Montana dei Comuni del Mugello e la Fondazione per la Scultura Antonio Berti, vede il coinvolgimento anche dell’Ente Cassa di Risparmio di Firenze che ha finanziato il progetto di simposio e del percorso ad esso correlato. Il Simposio di Scultura nasce dalla volontà di rendere omaggio alla figura del grande scultore e conterraneo Antonio Berti, profondamente legato alla sua terra. "	2021-06-08 00:00:00	2021-06-10 22:25:38	simposio 4.jpg	/news/img	"Per dieci giorni i sei studenti realizzano opere scultoree contemporanee, a tema libero, utilizzando blocchi di pietra serena, grazie al Copser, provenienti dalle cave di Firenzuola (che ospiteranno, in uno dei giorni del Simposio, una visita guidata degli artisti, alcuni scatti dei quali saranno poi presentati in occasione della premiazione), lavorando presso il laboratorio all''aperto allestito presso il Parco Antonio Berti, dove sarà possibile vederli all''opera per tutta la durata della manifestazione. Per partecipare è appena aperto il bando, con scadenza sabato 26 giugno. Gli artisti ammessi, dopo una valutazione di una apposita commissione artistica che vede anche professori delle Accademie, guidati in particolare dal professor Di Tommaso dell''Accademia delle Belle Arti di Firenze, saranno ospitati per l’intera durata della manifestazione dal Camping Village Mugello Verde. L''atmosfera è unica: una nube di polvere bianca, dovuta alla lavorazione della pietra con mola e scalpelli, avvolge gli scultori concentrati nel tirar fuori in poco tempo un''opera di grande impatto visivo ed emotivo. Anche molto spettacolare, tanto è vero che, insieme ad Unione dei Comuni, è stato intrapreso un percorso di coinvolgimento dei plessi scolastici delle scuole medie inferiori e superiori del territorio, con apposite visite guidate. L’accesso per il pubblico è ovviamente libero.

simposio5"	"La novità di quest’anno sarà la creazione di una categoria speciale, che quest’anno sarà dedicata ai 700 anni dalla morte di Dante, a cui un artista, invitato fra chi ha partecipato in questi anni (e sono oltre 100), dovrà ispirarsi per scolpire un’opera più grande delle altre, fuori concorso, con 15 giorni a disposizione.

Molte delle sculture realizzate nelle precedenti edizioni hanno trovato collocazione nel tessuto urbano di San Piero a Sieve, valorizzandone parchi, piazze e giardini. E questo ha dato vita all’idea del percorso che finalmente dovrebbe trovare un compimento. La Pro Loco, insieme con il Centro Commerciale de'' Medici, ha creato un progetto che intende valorizzare l''abitato di San Piero a Sieve, già ricco di beni architettonici e storici di rilievo, attraverso la collocazione delle opere realizzate in questi anni. Lo sviluppo di tale percorso, che unirà in particolare la Stazione di San Piero con lo stesso Parco Berti, prevede la riqualificazione delle aree interessate e la collocazione di cartellonistica che, oltre ad indicare il percorso, guidi il visitatore alla scoperta degli angoli più suggestivi del paese: la Pieve millenaria dedicata a San Pietro, la Fortezza di San Martino, Villa Adami, Villa Schifanoia, la Torre medicea di Scoronconcolo, guidati in un percorso ideale che ha le sculture di pietra come filo conduttore. Un progetto ambizioso, ma già ben avviato, nel quale la Pro Loco crede molto.

“Quest’anno, spiega il presidente della Pro Loco sanpierina, Sauro Bani, si fa un ulteriore salto di qualità dando impulso al Simposio, e partendo con il percorso, attraverso il tessuto urbano sanpierino, e con questa nuova sezione, con un artista affermato e che già a San Piero ha dimostrato il suo valore, volgiamo rafforzare il legame di San Piero con la scultura e l’arte, cosa che cerchiamo di far emergere da tutte le nostre iniziative.”"	simposio5.jpg	simposio 4.jpg', '2022-05-09 21:31:13', '2022-05-09 21:31:13', 'prestige3.jpg', '/blogs/img', 'Si è aperto il bando per il 17° Simposio dedicato allo scultore Antonio Berti	Si è aperto il bando per il 17° Simposio dedicato allo scultore Antonio Berti	"Dal 14 al 25 settembre San Piero a Sieve ospiterà la diciassettesima edizione del Simposio di Scultura "Premio Antonio Berti",', '2	1	Si è aperto il bando per il 17° Simposio dedicato allo scultore Antonio Berti	Si è aperto il bando per il 17° Simposio dedicato allo scultore Antonio Berti	Si è aperto il bando per il 17° Simposio dedicato allo scultore Antonio Berti	"Dal 14 al 25 settembre San Piero a Sieve ospiterà la diciassettesima edizione del Simposio di Scultura "Premio Antonio Berti", evento biennale dedicato all''arte che vede coinvolti gli studenti delle più importanti Accademie di Belle Arti italiane ed europee che si sfideranno a “colpi di scalpello” nel parco dedicato proprio all’artista sanpierino (nell’anno in cui la cittadina sarà ufficialmente “intitolata” con la posa di cartelli all’ingresso del centro abitato con su scritto “paese natale di Antonio Berti”).

La manifestazione, promossa dalla Proloco di San Piero a Sieve, con il Patrocinio del Comune di Scarperia e San Piero e della Regione Toscana e con la collaborazione dell''Accademia di Belle Arti di Firenze e di quella di Carrara, il Comune di Firenzuola, l''Unione Montana dei Comuni del Mugello e la Fondazione per la Scultura Antonio Berti, vede il coinvolgimento anche dell’Ente Cassa di Risparmio di Firenze che ha finanziato il progetto di simposio e del percorso ad esso correlato. Il Simposio di Scultura nasce dalla volontà di rendere omaggio alla figura del grande scultore e conterraneo Antonio Berti, profondamente legato alla sua terra. "	2021-06-08 00:00:00	2021-06-10 22:25:38	simposio 4.jpg	/news/img	"Per dieci giorni i sei studenti realizzano opere scultoree contemporanee, a tema libero, utilizzando blocchi di pietra serena, grazie al Copser, provenienti dalle cave di Firenzuola (che ospiteranno, in uno dei giorni del Simposio, una visita guidata degli artisti, alcuni scatti dei quali saranno poi presentati in occasione della premiazione), lavorando presso il laboratorio all''aperto allestito presso il Parco Antonio Berti, dove sarà possibile vederli all''opera per tutta la durata della manifestazione. Per partecipare è appena aperto il bando, con scadenza sabato 26 giugno. Gli artisti ammessi, dopo una valutazione di una apposita commissione artistica che vede anche professori delle Accademie, guidati in particolare dal professor Di Tommaso dell''Accademia delle Belle Arti di Firenze, saranno ospitati per l’intera durata della manifestazione dal Camping Village Mugello Verde. L''atmosfera è unica: una nube di polvere bianca, dovuta alla lavorazione della pietra con mola e scalpelli, avvolge gli scultori concentrati nel tirar fuori in poco tempo un''opera di grande impatto visivo ed emotivo. Anche molto spettacolare, tanto è vero che, insieme ad Unione dei Comuni, è stato intrapreso un percorso di coinvolgimento dei plessi scolastici delle scuole medie inferiori e superiori del territorio, con apposite visite guidate. L’accesso per il pubblico è ovviamente libero.

simposio5"	"La novità di quest’anno sarà la creazione di una categoria speciale, che quest’anno sarà dedicata ai 700 anni dalla morte di Dante, a cui un artista, invitato fra chi ha partecipato in questi anni (e sono oltre 100), dovrà ispirarsi per scolpire un’opera più grande delle altre, fuori concorso, con 15 giorni a disposizione.

Molte delle sculture realizzate nelle precedenti edizioni hanno trovato collocazione nel tessuto urbano di San Piero a Sieve, valorizzandone parchi, piazze e giardini. E questo ha dato vita all’idea del percorso che finalmente dovrebbe trovare un compimento. La Pro Loco, insieme con il Centro Commerciale de'' Medici, ha creato un progetto che intende valorizzare l''abitato di San Piero a Sieve, già ricco di beni architettonici e storici di rilievo, attraverso la collocazione delle opere realizzate in questi anni. Lo sviluppo di tale percorso, che unirà in particolare la Stazione di San Piero con lo stesso Parco Berti, prevede la riqualificazione delle aree interessate e la collocazione di cartellonistica che, oltre ad indicare il percorso, guidi il visitatore alla scoperta degli angoli più suggestivi del paese: la Pieve millenaria dedicata a San Pietro, la Fortezza di San Martino, Villa Adami, Villa Schifanoia, la Torre medicea di Scoronconcolo, guidati in un percorso ideale che ha le sculture di pietra come filo conduttore. Un progetto ambizioso, ma già ben avviato, nel quale la Pro Loco crede molto.

“Quest’anno, spiega il presidente della Pro Loco sanpierina, Sauro Bani, si fa un ulteriore salto di qualità dando impulso al Simposio, e partendo con il percorso, attraverso il tessuto urbano sanpierino, e con questa nuova sezione, con un artista affermato e che già a San Piero ha dimostrato il suo valore, volgiamo rafforzare il legame di San Piero con la scultura e l’arte, cosa che cerchiamo di far emergere da tutte le nostre iniziative.”"	simposio5.jpg	simposio 4.jpg', 'simposio5.jpg', 'simposio5.jpg');
INSERT INTO blog (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (4, 1, 'Prestige 4', 'b', 'In un momento di grande difficoltà per il mondo del volontariato e dell’associazionismo, la Pro Loco di San Piero non si è mai fermata. Aiutando istituzioni e singoli cittadini anche nel momento della pandemia, con consegna delle spese e iniziative mirate, e programmando quelle che saranno le iniziative alla ripresa. Uno sforzo notevole, che ha partorito un calendario ricco di appuntamenti quando tali eventi saranno nuovamente realizzabili. Un impegno che richiede un numero importante di volontari, per i quali le porte sono sempre aperte. Ed anche di risorse, che sono necessarie per “mettere a terra” le tante idee che emergono. ', '2022-05-09 21:13:54', '2022-05-09 21:13:54', 'prestige4.jpg', '/blogs/img', 'In un momento di grande difficoltà per il mondo del volontariato e dell’associazionismo, la Pro Loco di San Piero non si è mai fermata.', 'Per questo la Pro Loco di San Piero ha bisogno dell’aiuto di tutti, attraverso il tesseramento annuale, ancora aperto, e magari anche con la donazione del 5 per mille.

Il tesseramento si potrà effettuare in sede, in via Cipriani 8, tutte le mattine, dalle 10 alle 12, martedì escluso, o, nello stesso orario, sabato e domenica prossimi, in un banchetto appositamente realizzato nei pressi dell’edicola di Via Provinciale.

Ricordiamo che la tessera UNPLI garantisce numerosi vantaggi.

Per quanto riguarda il 5 per mille sarà sufficiente indicare nell’apposita casella della dichiarazione dei redditi, il codice fiscale 05235460481.', 'ProlocoSPS_tesseramento_2021.jpg', 'ProlocoSPS_tesseramento_2021.jpg');
INSERT INTO blog (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (5, 2, 'Prestige 5', 'markdown', 'Descrizione Prima News', '2022-05-09 17:53:34', '2022-05-09 17:53:34', 'prestige5.jpg', '/blogs/img', 'html2', 'html3', 'img2', 'img3');
INSERT INTO blog (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (6, 2, 'Prestige 6', 'markdown', 'descrizione news  img', '2022-05-09 17:53:34', '2022-05-09 17:53:34', 'prestige6.jpg', '/blogs/img/', 'html2', 'html3', 'img2', 'img3');
INSERT INTO blog (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (7, 2, 'Prestige 7', 'markdown', 'Adesso Funziona tutto abbastanza bene11', '2022-05-09 17:53:34', '2022-05-09 17:53:34', 'prestige7.jpg', '/blogs/img/', 'html2', 'html3', 'img2', 'img3');
INSERT INTO blog (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (8, 2, 'Prestige 8', 'Si, adesso funziona decisamente neglio.', 'Si, adesso funziona decisamente neglio.', '2022-05-09 17:53:35', '2022-05-09 17:53:35', 'prestige8.jpg', '/blogs/img/', 'html2', 'html3', 'img2', 'img3');
INSERT INTO blog (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (9, 2, 'Prestige 16', 'Descrizione Inserimento NEWS da carlozanieri.it', 'Descrizione Inserimento NEWS da carlozanieri.it', '2022-05-09 17:53:35', '2022-05-09 17:53:35', 'prestige16.jpg', '/blogs/img/', 'html2', 'html3', 'img2', 'img3');
INSERT INTO blog (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (10, 2, 'Prestige 10', 'descrizione uova news da carlozanieri.it', 'descrizione uova news da carlozanieri.it', '2022-05-09 17:53:35', '2022-05-09 17:53:35', 'prestige10.jpg', '/blogs/img/', 'html2', 'html3', 'img2', 'img3');

-- Table: centralino
CREATE TABLE IF NOT EXISTS "centralino" (
	"ID" INTEGER NOT NULL  ,
	"codice" VARCHAR(12) NOT NULL  ,
	"radice" VARCHAR(10) NOT NULL  ,
	"livello" TINYINT NOT NULL  ,
	"titolo" VARCHAR(64) NOT NULL  ,
	"descrizione" VARCHAR(128) NOT NULL  ,
	"link" VARCHAR(512) NOT NULL  ,
	"attivo" TINYINT NOT NULL  ,
	"icon" VARCHAR(255) NOT NULL  ,
	"workplace" INTEGER NOT NULL  ,
	"param1" VARCHAR(255) NULL  ,
	"ordine" INTEGER NULL  ,
	"html" TEXT NOT NULL  ,
	PRIMARY KEY ("ID", "titolo")
);
INSERT INTO centralino (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, html) VALUES (10, 'archiviopost', 'archivio', 3, 'Ufficio Tecnico', 'archivio post', '/conferenza/?Ufficio Tecnico', 1, 'mif-wind mif-5x fg-darkBlue mif-5x', 402220600, 'pub', NULL, '<p>Archivio Post</p>');
INSERT INTO centralino (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, html) VALUES (1, 'generale', 'generale', 1, 'URP', 'Menu Generale', '/conferenza/?URP', 1, 'mif-news fg-brown mif-5x', 0, 'pub', NULL, '<p>MENU Generale</p>');
INSERT INTO centralino (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, html) VALUES (3, 'meeting', 'generale', 2, 'Ragioneria', 'Collegamento Meeting', '/conferenza/?Ragioneria', 1, 'mif-calculator fg-red mif-5x', 402218601, 'pub', 2, '<p>Meetings</p>');
INSERT INTO centralino (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, html) VALUES (14, 'proto', 'generale', 2, 'Protocollo', 'archivio', '/conferenza/?Protocollo', 1, 'mif-envelop fg-green mif-5x', 402220600, 'pub', NULL, '<p>archivio</p>');
INSERT INTO centralino (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, html) VALUES (5, 'segre', 'home', 3, 'Segreteria', 'BLOG', '/conferenza/?Segreteria', 1, 'mif-envelop mif-5x', 402221400, 'pub', NULL, '<p>BLOG</p>');
INSERT INTO centralino (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, html) VALUES (6, 'servpub', 'home', 2, 'Servizi Pubblici ', 'HOME', '/conferenza/?Servizi Pubblici ', 1, 'mif-envelop mif-5x', 402221400, 'pub', NULL, '<p>HOME</p>');
INSERT INTO centralino (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, html) VALUES (9, 'polmun', 'archivio', 3, 'Polizia Municipale', 'Nuovo Post', '/conferenza/?Polizia Municipale', 1, 'mif-apple fg-blue mif-5x', 402220600, 'pub', NULL, '<p>Nuovo Post</p>');
INSERT INTO centralino (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, html) VALUES (11, 'lavpub', 'home', 3, 'Lavori Pubblici', 'home', '/conferenza/?Lavori Pubblici', 1, 'mif-envelop fg-purple mif-5x', 402220600, 'pub', NULL, '<p>HOME</p>');
INSERT INTO centralino (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, html) VALUES (13, 'uffscuol', 'meeting', 3, 'Ufficio Scuola', 'Multi Conferenza', '/conferenza/?Ufficio Scuola', 1, 'mif-envelop fg-orange mif-5x', 402220600, 'pub', NULL, '<p>conferenza</p>');
INSERT INTO centralino (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, html) VALUES (8, 'commer', 'meeting', 3, 'Ufficio Commercio', 'Collegamento Meeting', '/conferenza/?Ufficio Commercio', 1, 'mif-envelop fg-orange mif-5x', 402218601, 'pub', 2, '<p>Meeting</p>');
INSERT INTO centralino (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, html) VALUES (12, 'anagraf', 'generale', 2, 'Anagrafe', 'Demo', '/conferenza/?Anagrafe', 1, 'mif-envelop fg-purple mif-5x', 402220600, 'pub', NULL, '<p>Demo</p>');
INSERT INTO centralino (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, html) VALUES (20, 'centralino', 'meeting', 3, 'Centralino', 'centralino', '/conferenza/?Centralino', 1, 'mif-envelop fg-orange mif-5x', 402220600, 'pub', NULL, '<p>Centralino</p>');
INSERT INTO centralino (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, html) VALUES (7, 'sindaco', 'home', 3, 'Sindaco', 'HOME', '/conferenza/?Sindaco', 1, 'mif-apple fg-cyan mif-5x', 402221400, 'pub', NULL, '<p>HOME</p>');
INSERT INTO centralino (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, html) VALUES (15, 'giunta', 'logout', 2, 'Giunta', 'logout', '/conferenza/?Giunta', 1, 'mif-apple fg-green mif-5x', 402220600, 'pub', NULL, '<p>logout</p>');
INSERT INTO centralino (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, html) VALUES (16, 'cantiere', 'generale', 2, 'Cantiere', 'login', '/conferenza/?Cantiere', 1, 'mif-apple fg-blue mif-5x', 402220600, 'pub', NULL, '<p>login</p>');
INSERT INTO centralino (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, html) VALUES (17, 'segretg', 'login', 3, 'Segretario Generale', 'login', '/conferenza/?Segretario Generale', 1, 'mif-envelop fg-red mif-5x', 402220600, 'pub', NULL, '<p>login</p>');
INSERT INTO centralino (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, html) VALUES (18, 'urban', 'login', 3, 'Urbanistica', 'logout', '/conferenza/?Urbanistica', 1, 'mif-apple fg-orange mif-5x', 402220600, 'pub', NULL, '<p>logout</p>');
INSERT INTO centralino (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, html) VALUES (19, 'trasp', 'demo', 3, 'Trasporti Pubblici', 'Demo', '/conferenza/?Trasporti Pubblici', 1, 'mif-envelop fg-orange mif-5x', 402221400, 'pub', NULL, '<p>Demo</p>');
INSERT INTO centralino (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, html) VALUES (20, 'affgeneral', 'demo', 3, 'Affari Generali', 'Affari Generali', '/conferenza/?Affari Generali', 1, 'mif-envelop fg-orange mif-5x', 402221400, 'pub', NULL, '<p>Demo</p>');

-- Table: command
CREATE TABLE IF NOT EXISTS "command" (
	"id" INTEGER NOT NULL  ,
	"command" VARCHAR(100) NOT NULL  ,
	"arg1" VARCHAR(100) NULL  ,
	"arg2" VARCHAR(100) NULL  ,
	"arg3" VARCHAR(100) NULL  ,
	"arg4" VARCHAR(100) NULL  ,
	"note" VARCHAR(512) NULL  ,
	"titolo" VARCHAR(100) NOT NULL  ,
	PRIMARY KEY ("id")
);
INSERT INTO command (id, command, arg1, arg2, arg3, arg4, note, titolo) VALUES (1, 'firefox', 'http://carlozanieri.it', NULL, NULL, NULL, NULL, 'carlozanieri.it');
INSERT INTO command (id, command, arg1, arg2, arg3, arg4, note, titolo) VALUES (2, 'firefox', 'http://localhost', NULL, NULL, NULL, NULL, 'localhost');
INSERT INTO command (id, command, arg1, arg2, arg3, arg4, note, titolo) VALUES (3, 'exit()', NULL, NULL, NULL, NULL, NULL, 'EXIT');
INSERT INTO command (id, command, arg1, arg2, arg3, arg4, note, titolo) VALUES (4, 'python', '/home/carlo/kiwy/calc/calc.py', NULL, NULL, NULL, NULL, 'Calcolatrice');
INSERT INTO command (id, command, arg1, arg2, arg3, arg4, note, titolo) VALUES (5, 'python', '/home/carlo/kiwy/master/auto/auto.py', NULL, NULL, NULL, NULL, 'AUTO');
INSERT INTO command (id, command, arg1, arg2, arg3, arg4, note, titolo) VALUES (6, 'python', '/home/carlo/kiwy/camera/camera.py', NULL, NULL, NULL, NULL, 'Camera');
INSERT INTO command (id, command, arg1, arg2, arg3, arg4, note, titolo) VALUES (7, 'python', '/home/carlo/kiwy/master/clock.py', NULL, NULL, NULL, NULL, 'Digital Clock');
INSERT INTO command (id, command, arg1, arg2, arg3, arg4, note, titolo) VALUES (8, 'python', '/home/carlo/kiwy/camera/camera4.py', NULL, NULL, NULL, NULL, '<camera 4');
INSERT INTO command (id, command, arg1, arg2, arg3, arg4, note, titolo) VALUES (9, 'python', '/home/carlo/kiwy/camera/streaming.py', NULL, NULL, NULL, NULL, 'Streaming');
INSERT INTO command (id, command, arg1, arg2, arg3, arg4, note, titolo) VALUES (10, 'python', '/home/carlo/kiwy/cam/camera.py', NULL, NULL, NULL, NULL, 'CAM');

-- Table: django_admin_log
CREATE TABLE IF NOT EXISTS "django_admin_log" (
	"id" INTEGER NOT NULL  ,
	"action_time" DATETIME NOT NULL  ,
	"object_id" TEXT NULL  ,
	"object_repr" VARCHAR(200) NOT NULL  ,
	"action_flag" SMALLINT NOT NULL  ,
	"change_message" TEXT NOT NULL  ,
	"content_type_id" INTEGER NULL  ,
	"user_id" INTEGER NOT NULL  ,
	PRIMARY KEY ("id"),
	FOREIGN KEY("content_type_id") REFERENCES "django_content_type" ("id") ON UPDATE RESTRICT ON DELETE RESTRICT,
	FOREIGN KEY("user_id") REFERENCES "auth_user" ("id") ON UPDATE RESTRICT ON DELETE RESTRICT
);

-- Table: django_content_type
CREATE TABLE IF NOT EXISTS "django_content_type" (
	"id" INTEGER NOT NULL  ,
	"app_label" VARCHAR(100) NOT NULL  ,
	"model" VARCHAR(100) NOT NULL  ,
	PRIMARY KEY ("id")
);
INSERT INTO django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');
INSERT INTO django_content_type (id, app_label, model) VALUES (7, 'beb', 'menuweb');

-- Table: django_migrations
CREATE TABLE IF NOT EXISTS "django_migrations" (
	"id" INTEGER NOT NULL  ,
	"app" VARCHAR(255) NOT NULL  ,
	"name" VARCHAR(255) NOT NULL  ,
	"applied" DATETIME NOT NULL  ,
	PRIMARY KEY ("id")
);
INSERT INTO django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2020-02-25 21:17:07.433366');
INSERT INTO django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2020-02-25 21:17:09.422136');
INSERT INTO django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2020-02-25 21:17:13.146780');
INSERT INTO django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2020-02-25 21:17:13.668104');
INSERT INTO django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2020-02-25 21:17:13.782565');
INSERT INTO django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2020-02-25 21:17:14.349921');
INSERT INTO django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2020-02-25 21:17:14.568865');
INSERT INTO django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2020-02-25 21:17:14.731176');
INSERT INTO django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2020-02-25 21:17:14.844373');
INSERT INTO django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2020-02-25 21:17:15.085163');
INSERT INTO django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2020-02-25 21:17:15.178631');
INSERT INTO django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2020-02-25 21:17:15.280656');
INSERT INTO django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2020-02-25 21:17:15.457930');
INSERT INTO django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2020-02-25 21:17:15.625895');
INSERT INTO django_migrations (id, app, name, applied) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2020-02-25 21:17:15.807199');
INSERT INTO django_migrations (id, app, name, applied) VALUES (16, 'auth', '0011_update_proxy_permissions', '2020-02-25 21:17:16.039300');
INSERT INTO django_migrations (id, app, name, applied) VALUES (17, 'sessions', '0001_initial', '2020-02-25 21:17:16.354895');
INSERT INTO django_migrations (id, app, name, applied) VALUES (18, 'auth', '0012_alter_user_first_name_max_length', '2025-01-05 17:23:10.580925');
INSERT INTO django_migrations (id, app, name, applied) VALUES (19, 'beb', '0001_initial', '2025-01-05 17:57:00.451751');

-- Table: django_session
CREATE TABLE IF NOT EXISTS "django_session" (
	"session_key" VARCHAR(40) NOT NULL  ,
	"session_data" TEXT NOT NULL  ,
	"expire_date" DATETIME NOT NULL  ,
	PRIMARY KEY ("session_key")
);
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('2nr3l4ldov4ixjsi8oaq69s0w3lpmsg2', '.eJxVjMsOwiAQRf-FtSEwRWBcuu83NAMzSNXQpI-V8d-1SRe6veec-1IDbWsdtkXmYWR1UVadfrdE-SFtB3yndpt0nto6j0nvij7oovuJ5Xk93L-DSkv91sF1NpJ3mBmAY4mUnUjyhpAgCJYkZCzyOZMpyJKcB0YOHRQDCEa9P_iJOGQ:1tUUtI:3Nry11xoOdixc62y1D2ujyD8wr9PZinsmIW_rg6uqCg', '2025-01-19 17:58:20.712389');

-- Table: entries
CREATE TABLE IF NOT EXISTS "entries" (
	"id" INTEGER NOT NULL  ,
	"author_id" INTEGER NOT NULL  ,
	"slug" VARCHAR(100) NOT NULL  ,
	"title" VARCHAR(512) NOT NULL  ,
	"markdown" TEXT NOT NULL  ,
	"html" TEXT NOT NULL  ,
	"published" DATETIME NOT NULL  ,
	"updated" DATETIME NOT NULL DEFAULT 'current_timestamp()' ,
	"img" VARCHAR(100) NULL  ,
	"dir" VARCHAR(100) NULL  ,
	"html2" TEXT NOT NULL  ,
	"html3" TEXT NOT NULL  ,
	"img2" VARCHAR(512) NULL  ,
	"img3" VARCHAR(100) NULL  ,
	PRIMARY KEY ("id")
);
INSERT INTO entries (id, author_id, slug, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (1, 1, 'index', 'Comune Aperto', '-da carlozanieri.net -ComuneOnLine è la piattaforma social che permette ai cittadini di entrare in contatto con il proprio Comune anche se non possono muoversi da casa oppure sono lontani dalla SEDE COMUNALE.', 'Benvenuti sul sito della Pro Loco di San Piero a Sieve.

L’attività svolta negli anni trascorsi è stata interamente funzionale alla promozione e allo sviluppo turistico del paese e del territorio, all’unione dei cittadini, al rapporto intergenerazionale.

La ricerca è quella dell’unione tra diverse sensibilità e di ri-socializzazione del paese, oltre che di individuazione di spazi idonei dove organizzare feste, mostre e quant’altro può interessare allo scopo.
Le manifestazioni organizzate hanno vitalizzato la comunità con eventi e spettacoli, contribuendo ad attrarre un numero sempre crescente di presenze sia dal Mugello che dalla Provincia di Firenze.

La Pro Loco fa parte del U.N.P.L.I - Unione Nazionale delle Pro Loco.

La Pro Loco è inoltre molto attenta nel dare una mano a chi ne ha bisogno. Promotori di campagne di solidarietà, vedi l’impegno per le popolazioni emiliane, sconvolte dal terremoto e a fianco di Telefono Azzurro, Emergency e Unicef.', '2017-11-17 13:50:27', '2022-02-26 00:33:29', 'sapiero-storia-provinciale.JPG', 'images/', '', '', 'sapiero-storia-piazza.JPG', NULL);
INSERT INTO entries (id, author_id, slug, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (2, 1, 'sanpiero', 'Questo è il secondo post', 'Questo è il secondo post di Carlo Zanieri.', 'SAN PIERO A SIEVE

"Dove la più bassa gola della Carza stretta tra le pendici del Poggio del Trebbio e di Monte Cacioli si apre in un anfiteatro meraviglioso di poggi e su un più lontano aperto orizzonte si delinea l''unità cresta de l''Appennino e la alle della Sieve si slarga ad oriente; alla confluenza della Carza e della Sieve si sviluppa il borgo di San Piero a Sieve."

Francesco Niccolai, 1914
san-pietro 	
STORIA

Dopo aver lasciato i pendii settentrionali di Monte Morello si giunge a San Piero a Sieve, piccolo paese di origine medievale dal quale si estende la pianura mugellana, attraversata dalla Sieve, affluente dell''Arno.

Il paese sorge proprio nel punto in cui il torrente Carza sfocia nella Sieve.

Il borgo nasce come nodo stradale presso l''antico ponte sulla Sieve che conduceva, attraverso la via Bolognese, al Passo del Giogo. La sua importanza deriva infatti dalla strada postale che fino al XVIII secolo l''attraversava e che era l''unica che permetteva da Firenze di raggiungere Bologna.

L''essere sempre stato un nodo viario di grande rilevanza è l''elemento che caratterizza la storia del paese fin dall''antichità.

Le più antiche tracce di presenza umana nel territorio di San Piero risalgono al Paleolitico Medio. Nelle località di Lucigliano, Toro, Le Mozzette, San Giusto a Fortuna sono stati rinvenuti numerosi strumenti di pietra selce, come punte di lancia, raschiatoi, ecc...

I ritrovamenti archeologici più importanti, però, sono quelli legati alla presenza degli Etruschi, che ci testimoniano la presenza di una società già organizzata in insediamenti stabili a carattere urbano.

Uno dei segni più importanti della presenza etrusca a San Piero é la tomba arcaica delle Mozzette (databile tra il VII ed il VI secolo a.c.), della quale ormai restano visibili solo degli enormi pietroni. La successiva colonizzazione romana ha lasciato sul territorio una diffusa presenza, testimoniata nei nomi delle località e dai ritrovamenti archeologici.

Il nome di San Piero a Sieve pare sia stato attribuito al borgo nel 1117, unendo la denominazione originaria del borgo "Villa Sevae" a quella della Pieve di San Pietro.

Originariamente San Piero a Sieve apparteneva alla potente famiglia feudale degli Ubaldini da Coldaia. L''economia della comunità era esclusivamente rurale e la presenza di un mercato del bestiame favoriva il passaggio e la permanenza di genti. Successivamente i Medici entrarono in possesso di tutta la zona.

San Piero a Sieve ricevette una spinta notevole in relazione all''operosità dei Medici: si ingrandì ed acquisì una certa importanza nel quadro politico mugellano, segnando anche un aumento della popolazione.

Il transito di un numero sempre maggiore di persone rese necessaria la realizzazione di strutture destinate all''accoglienza ed all''ospitalità.

Un''opera che riveste un grande valore strategico per la storia della comunità è la costruzione del ponte sulla Sieve, voluta e finanziata dalla Repubblica Fiorentina nel 1372 e realizzato dai famosi maestri muratori fiorentini Niccolò di Ciardo, Francesco Carletti e Giovanni Mercati.

Fu così costruita una struttura in muratura che andava a sostituire quella in pietra e legname che fino ad allora aveva garantito il passaggio del fiume.


', '2017-11-17 14:10:31', '2021-05-12 23:22:02', 'sapiero-storia-provinciale.JPG', 'img/', 'Con questo evento il borgo consolidò la propria funzione di mercatale e luogo di sosta per viaggiatori, commercianti e pellegrini.
  	villa-adami-schifanoia-san-piero-a-sieve

Tra il XIV ed il XV secolo San Piero a Sieve visse il suo momento di maggior prestigio, in relazione ai successi della politica medicea. Fu proprio un questo periodo che questi ultimi edificarono nei dintorni le loro ville - Cafaggiolo e il Trebbio - ed eressero abitazioni anche all''interno del paese: villa Adami e villa Schifanoia.
  	fortezza-san-martino-storia

Sul finire del XVI secolo Cosimo I de'' Medici ideò la costruzione della poderosa Fortezza di San Martino, realizzata sulla sommità del colle che domina il borgo.

Dopo aver collaborato nel 1351 con Giovanni de'' Medici all''assedio di Scarperia, San Piero fu posta a capo della lega di Tagliaferro che univa tutti i popoli dell''area circostante.

In concomitanza con la caduta dei Medici anche San Piero visse un lungo periodo di stagnazione socio-economica, fino alla fine del XIX secolo quando, con la costruzione della stazione ferroviaria, arrivarono i primi treni favorendo la circolazione di persone e merci.

Per maggiori informazioni su San Piero a Sieve vi invitiamo a visitare il sito del Comune: www.comune.san-piero-a-sieve.fi.it', '', 'sapiero-storia-piazza.JPG', NULL);
INSERT INTO entries (id, author_id, slug, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (3, 1, 'mugello', 'Terzo Post di carlo zanieri', 'Questo è il terzo post di Carlo Zanieri. 
20 Novembre 2017', 'IL MUGELLO

Il Mugello é un''ampia conca delimitata a nord dall''arco montuoso dei rilievi dell''Appennino, a sud dai contrafforti del Monte Giovi e del Monte Senario che dividono dalla vallata fiorentina, ad ovest dai monti di Vernio e della Calvana oltre i quali si estende la provincia di Prato, a est dall''Alpe di San Benedetto e del Falterona (dal quale nasce l''Arno).

Qui troviamo i borghi di Vaglia, Barberino di Mugello, Scarperia, Borgo San Lorenzo, Vicchio, Dicomano e San Piero a Sieve.

', '2017-11-20 11:57:27', '2021-05-10 17:31:28', 'prestige1.jpg', 'img/', 'Attraversato fin dall''antichità da due percorsi viari di grande rilevanza per la comunicazione tra i popoli dell''Italia centrale e quelli oltre-appenninici e padani - la Bolognese (tracciata dai romani) e la Faentina (antica strada etrusca) - il Mugello è stato crocevia di personaggi ed eserciti, trovandosi spesso coinvolto in episodi non sempre determinati dai suoi abitanti.

La suggestione paesaggistica è arricchita dall''invaso di Bilancino, un grande lago artificiale che si colloca ad ovest di San Piero a Sieve, lungo la strada che conduce a Barberino.
mugello-rotoballe', '', 'sea.jpg', NULL);
INSERT INTO entries (id, author_id, slug, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (4, 2, 'chisiamo', 'Chi Siamo', 'La Pro Loco di San Piero a Sieve è stata fondata per la prima volta nel 1969.  L’intento era quello di valorizzare il paese con le sue tradizioni, ma anche dare sfogo alle tante sensibilità artistiche, culturali e imprenditoriali che caratterizzavano quei tempi.
Nel corso di un''assemblea presieduta dal Prof. Giuliano Rodolfi, fu eletto un consiglio con a capo il Dott. Prospero Papani.
Molteplici furono le iniziative. La prima di quell’anno fu una mostra di caccia e pesca.', 'La Pro Loco di San Piero a Sieve è stata fondata per la prima volta nel 1969.  L’intento era quello di valorizzare il paese con le sue tradizioni, ma anche dare sfogo alle tante sensibilità artistiche, culturali e imprenditoriali che caratterizzavano quei tempi.
Nel corso di un''assemblea presieduta dal Prof. Giuliano Rodolfi, fu eletto un consiglio con a capo il Dott. Prospero Papani.
Molteplici furono le iniziative. La prima di quell’anno fu una mostra di caccia e pesca.', '2017-11-20 14:16:15', '2021-05-29 00:06:53', 'sapiero-storia-piazza.JPG', 'img/', 'In seguito furono organizzate le prime edizioni, e le più riuscite, della Mostra dell’Artigianato Mugellano. Gli splendidi locali adiacenti alla chiesa, con il salone mediceo, furono occupati dai prodotti della nostra area. Artigiani del mobile, arte del ricamo, modellistica furono al centro delle cose esposte. Numerose furono le edizioni. Il successo della Mostra dell’Artigianato fu sancito dall’Annullo Filatelico che le Poste Italiane fecero in occasione dell’VIII edizione svoltasi nel 1975.

I primi anni della Pro Loco furono i più travagliati, soprattutto a causa dell''assenza di una sede stabile.

Trovata in via Provinciale 30, ex negozio di ortofrutta della famiglia Cipollini, presero il via numerose iniziative:

    La Festa di Primavera (dal 1974 al 1976) con la presenza di numerosi Florovivaisti della città di Firenze e l’allestimento di carri allegorici che percorsero le vie del paese;
    Una raccolta di fondi effettuata con una grande Fiera di Beneficenza per finanziare l’asilo infantile “Antonio Frilli”;
    Sagre della Polenta, con intervento della banda musicale e i “Frustatori” di Brisighella;
    Fischi e Applausi, manifestazione svoltasi di prevalenza nel cortile della Chiesa;
    Premio di pittura Mugello Arte.

La sede era comunque crocevia di interesse, posta com’era al centro del paese. Nei locali della Pro Loco furono effettuate numerose mostre di pittura ed aste di quadri.
Da ricordare inoltre fra le ultime iniziative, una raccolta di foto “storiche” fra le famiglie del paese, che portò alla realizzazione di una grande mostra fotografica dal titolo "San Piero com’era", ancora oggi fonte preziosa di documenti.

Da ricordare i presidenti succedutisi in quegli anni: Prospero Papani, Aldo Garosi, Bruno Ducci.

sapiero-storia-piazzaNel 1978 la Pro Loco cessava la sua attività, un po’ per caduta di interesse, senza più una sede, restituita ai proprietari. Si potrebbe sancire questo periodo con una frase che pronunciò uno dei presidenti, che suona pressappoco così: “Abbiamo avuto molte e belle idee, alcune le abbiamo realizzate, molte sono rimaste nel cassetto!”. Vanno ricordati inoltre i due volumi realizzati da Lanfranco Villani, consultabili nella Biblioteca Comunale.

Dopo numerosi anni di oblio, la Pro Loco riprende vita nel 2002, per iniziativa del gruppo di ragazzi che l’anno prima avevano organizzato la manifestazione musicale Ingorgo Sonoro. Artefice di questa rinascita e trait d’union tra la vecchia e la nuova Pro Loco, Primo Lascialfari che diede un impulso determinante.

Dobbiamo a lui l’idea dell''attuale logo, lo “stampiglio” con l’atleta etrusco, ritrovato durante gli scavi archeologici effettuati negli anni ’80, nei pressi della Fortezza di San Martino che sovrasta il paese.

È quindi storia di oggi l’impegno con il quale in questi anni la Pro Loco si è profusa.

Oltre ad organizzare Ingorgo Sonoro, che richiama migliaia di persone, dall’anno 2002 vengono organizzate numerose manifestazioni.
In sintesi le seguenti:

    Mercanzie di Natale, mercato artigianale lungo la via Provinciale;
    Treno della Befana, con l’arrivo del treno storico a vapore nella stazione del paese;
    Estemporanea di pittura;
    Mugello Dance Experience, una due giorni di danza in piazza Colonna;
    È Carnevale, con il corteo per le vie del paese dei bimbi in maschera;
    La Festa del Marrone in Ottobre in collaborazione con le associazioni sanpierine.

È storia di oggi anche l’impegno per gestire il nuovo spazio Auditorium in collaborazione con l’Associazione Camerata dé Bardi.
Da ricordare Alessia Ballini, sindaco di San Piero a Sieve nel 2002, che tanto fece per agevolarne la rinascita.

I presidenti succedutosi in questi anni, sono i seguenti: Emiliano Brunelli, Francesca Capecchi e Sauro Bani.
SCOPI

Gli scopi che la Pro Loco di San Piero a Sieve si prefigge sono quelli della valorizzazione del territorio, delle sue tradizioni, dei suoi monumenti.

La Pro Loco fa parte del U.N.P.L.I - Unione Nazionale delle Pro Loco.
Tutte le nostre iniziative sono tese all’unione dei cittadini, al rapporto intergenerazionale. La ricerca è quella dell’unione tra diverse sensibilità, di ri-socializzazione del paese. Individuazione di spazi idonei dove organizzare feste, mostre e quant’altro può interessare allo scopo.

Siamo inoltre molto attenti nel dare una mano a chi ne ha bisogno. Promotori di campagne di solidarietà, vedi l’impegno per le popolazioni emiliane, sconvolte dal terremoto e a fianco di Telefono Azzurro, Emergency e Unicef.', '
    Mercanzie di Natale, mercato artigianale lungo la via Provinciale;
    Treno della Befana, con l’arrivo del treno storico a vapore nella stazione del paese;
    Estemporanea di pittura;
    Mugello Dance Experience, una due giorni di danza in piazza Colonna;
    È Carnevale, con il corteo per le vie del paese dei bimbi in maschera;
    La Festa del Marrone in Ottobre in collaborazione con le associazioni sanpierine.

È storia di oggi anche l’impegno per gestire il nuovo spazio Auditorium in collaborazione con l’Associazione Camerata dé Bardi.
Da ricordare Alessia Ballini, sindaco di San Piero a Sieve nel 2002, che tanto fece per agevolarne la rinascita.

I presidenti succedutosi in questi anni, sono i seguenti: Emiliano Brunelli, Francesca Capecchi e Sauro Bani.
SCOPI

Gli scopi che la Pro Loco di San Piero a Sieve si prefigge sono quelli della valorizzazione del territorio, delle sue tradizioni, dei suoi monumenti.

La Pro Loco fa parte del U.N.P.L.I - Unione Nazionale delle Pro Loco.
Tutte le nostre iniziative sono tese all’unione dei cittadini, al rapporto intergenerazionale. La ricerca è quella dell’unione tra diverse sensibilità, di ri-socializzazione del paese. Individuazione di spazi idonei dove organizzare feste, mostre e quant’altro può interessare allo scopo.

Siamo inoltre molto attenti nel dare una mano a chi ne ha bisogno. Promotori di campagne di solidarietà, vedi l’impegno per le popolazioni emiliane, sconvolte dal terremoto e a fianco di Telefono Azzurro, Emergency e Unicef.', 'sapiero-storia-piazza.JPG', NULL);
INSERT INTO entries (id, author_id, slug, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (7, 1, 'blog-da-app', 'Blog da App', 'questo blog è stato inserito dopo modifiche ad app.py', '<p>questo blog è stato inserito dopo modifiche ad app.py</p>', '2017-12-18 13:49:20', '2018-04-20 18:31:13', 'skyline.jpg', 'img/', '', '', NULL, NULL);
INSERT INTO entries (id, author_id, slug, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (8, 1, 'post-inserito-il-19-dicembre', 'Post inserito il 19 Dicembre', 'Post inserito il 19 Dicembre alle ore 19:22', '<p>Post inserito il 19 Dicembre alle ore 19:22</p>', '2017-12-19 18:22:18', '2018-04-20 18:31:14', 'london-bridge.jpg', 'img/', '', '', NULL, NULL);
INSERT INTO entries (id, author_id, slug, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (9, 1, 'inserito-da-cellulare', 'Inserito da cellulare', 'Questo post è stato inserito da smartphone  ed è  solamente una prova. 
ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova.', '<p>Questo post è stato inserito da smartphone  ed è  solamente una prova. 
ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova. ost è stato inserito da smartphone  ed è  solamente una prova.</p>', '2017-12-22 18:21:05', '2018-04-20 18:31:14', 'logo-LM-2.png', 'img/', '', '', NULL, NULL);
INSERT INTO entries (id, author_id, slug, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (11, 1, 'prova-con-label', 'prova con label', 'prova con label ed immagine', '<p>prova con label ed immagine</p>', '2018-03-13 10:53:05', '2018-04-20 18:31:14', 'london-bridge.jpg', 'img/', '', '', NULL, NULL);
INSERT INTO entries (id, author_id, slug, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (12, 1, 'nuovo-con-img', 'nuovo con img', 'nuovo con img prova', '<p>nuovo con img prova</p>', '2018-03-16 10:17:38', '2018-04-20 18:31:14', 'london-bridge.jpg', 'img/', '', '', NULL, NULL);
INSERT INTO entries (id, author_id, slug, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (13, 1, 'prova-dopo-modifica', 'Prova dopo modifica', 'Prova dopo modifica jquery', '<p>Prova dopo modifica jquery</p>', '2018-03-16 10:29:18', '2018-04-20 18:31:14', 'logo-LM-2.png', 'img/', '', '', NULL, NULL);
INSERT INTO entries (id, author_id, slug, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (14, 1, 'prova-per-upload-immagine', 'prova per upload immagine', 'prova per upload immagineprova per upload immagineprova per upload immagineprova per upload immagine', '<p>prova per upload immagineprova per upload immagineprova per upload immagineprova per upload immagine</p>', '2018-03-19 15:37:20', '2018-04-20 18:31:14', 'logo-LM.png', 'img/', '', '', NULL, NULL);
INSERT INTO entries (id, author_id, slug, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (15, 1, 'inserimento-immagine', 'inserimento immagine', 'Questo post è stato inserito dopo aver aggiunto l''immagine nell''archivio.', '<p>Questo post è stato inserito dopo aver aggiunto l''immagine nell''archivio.</p>', '2018-04-11 11:01:03', '2018-04-20 18:31:14', 'logo-LM-2.png', 'img/', '', '', NULL, NULL);
INSERT INTO entries (id, author_id, slug, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (16, 1, 'inserimento-immagine-2', 'inserimento immagine', 'Prova inserimento immagine.', '<p>Prova inserimento immagine.</p>', '2018-04-20 10:47:33', '2018-04-20 18:31:14', 'logo-LM-2.png', 'img/', '', '', NULL, NULL);
INSERT INTO entries (id, author_id, slug, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (18, 1, 'inserimento-immagine-due', 'inserimento immagine --due--', 'inserimento immagine --due--
inserimento immagine --due--
inserimento immagine --due--inserimento immagine --due--
inserimento immagine --due--', '<p>inserimento immagine --due--
inserimento immagine --due--
inserimento immagine --due--inserimento immagine --due--
inserimento immagine --due--</p>', '2018-04-20 12:38:42', '2018-04-20 18:31:14', 'Cartolina_orig.jpg', 'img/', '', '', NULL, NULL);
INSERT INTO entries (id, author_id, slug, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (19, 1, 'prova-concatenazione', 'Prova concatenazione', '<tr>
                    <td><a href=''/players/'' + {{ player.player }}>{{player.player}}</a></td>
                    <td><a href="#">{{player.blocks_broken}}</a></td>
                    <td><a href="#">{{player.blocks_placed}}</a></td>
                    <td><a href="#">{{player.kills}}</a></td>
                    <td><a href="#">{{player.deaths}}</a></td>
               </tr>', '<tr>
                    <td><a href=''/players/'' + {{ player.player }}>{{player.player}}</a></td>
                    <td><a href="#">{{player.blocks_broken}}</a></td>
                    <td><a href="#">{{player.blocks_placed}}</a></td>
                    <td><a href="#">{{player.kills}}</a></td>
                    <td><a href="#">{{player.deaths}}</a></td>
               </tr>', '2018-04-20 13:25:23', '2018-04-20 23:23:33', '800px-Lago_di_Bilancino_-Tuscany_-_1.jpg', 'img/', '', '', NULL, NULL);
INSERT INTO entries (id, author_id, slug, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (24, 1, 'se-questa-prova', 'se questa prova...', 'se questa prova va bene siamo a cavallo! o quasi.', '<p>se questa prova va bene siamo a cavallo! o quasi.</p>', '2018-04-21 13:42:35', '2018-04-21 15:42:35', 'IMG_20121207_203611.jpg', 'img/', '', '', NULL, NULL);
INSERT INTO entries (id, author_id, slug, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (42, 1, 'dopo-modifiche-compose-upload', 'dopo modifiche compose - upload', 'da compose ad upload', '<p>da compose ad upload</p>', '2018-04-22 21:35:46', '2018-04-22 23:35:46', 'ultimo.JPG', 'img/', '', '', NULL, NULL);
INSERT INTO entries (id, author_id, slug, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (44, 1, 'maaaaa', 'maaaaa', '<form enctype="multipart/form-data" action="/upload" method="post">
  {% raw xsrf_form_html() %}
  File: <input type="file" name="file1" />
   <label for="title" ><h2>Inserisci il Titolo </h2>
    <input id="title" name="title" type="text" class="title" value="{{ entry.title if entry else '''' }}"/></label>
    <label for="markdown" ><h2>Inserisci Testo </h2>
    <textarea id="markdown" name="markdown" rows="30" cols="40" class="markdown">{{ entry.markdown if entry else "" }}</textarea></label>
         <label for="img" ><h2>Carica Immagine </h2>     
File: <input id="img" type="file" name="file1" />', '<form enctype="multipart/form-data" action="/upload" method="post">
  {% raw xsrf_form_html() %}
  File: <input type="file" name="file1" />
   <label for="title" ><h2>Inserisci il Titolo </h2>
    <input id="title" name="title" type="text" class="title" value="{{ entry.title if entry else '''' }}"/></label>
    <label for="markdown" ><h2>Inserisci Testo </h2>
    <textarea id="markdown" name="markdown" rows="30" cols="40" class="markdown">{{ entry.markdown if entry else "" }}</textarea></label>
         <label for="img" ><h2>Carica Immagine </h2>     
File: <input id="img" type="file" name="file1" />', '2018-04-22 22:18:26', '2018-04-23 00:18:26', '', 'img/', '', '', NULL, NULL);
INSERT INTO entries (id, author_id, slug, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (45, 1, 'lunedi-23-maggio', 'lunedì 23 maggio', 'inserito lunedì 23 maggio', '<p>inserito lunedì 23 maggio</p>', '2018-04-23 09:41:51', '2018-04-23 11:41:51', 'HPIM1237.JPG', 'img/', '', '', NULL, NULL);
INSERT INTO entries (id, author_id, slug, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (46, 1, 'lunedi-23-maggio-2', 'lunedì 23 maggio', 'inserito lunedì 23 maggio', '<p>inserito lunedì 23 maggio</p>', '2018-04-23 10:08:06', '2018-04-23 12:08:06', 'HPIM1237.JPG', 'img/', '', '', NULL, NULL);
INSERT INTO entries (id, author_id, slug, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (47, 1, 'lunedi-23-maggio-seconda', 'lunedì 23 maggio seconda', 'lunedì 23 maggio secondalunedì 23 maggio seconda 
lunedì 23 maggio secondalunedì 23 maggio seconda', '<p>lunedì 23 maggio secondalunedì 23 maggio seconda 
lunedì 23 maggio secondalunedì 23 maggio seconda</p>', '2018-04-23 10:11:08', '2018-04-23 12:11:08', 'HPIM1233.JPG', 'img/', '', '', NULL, NULL);
INSERT INTO entries (id, author_id, slug, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (81, 1, 'prova-2-venerdi-27-aprile', 'Prova 2 venerdì 27 aprile', 'Prova 2 venerdì 27 aprile  ore 16:00', '<p>Prova 2 venerdì 27 aprile  ore 16:00</p>', '2018-04-27 14:09:29', '2018-04-27 16:09:29', 'HPIM1233.JPG', 'img/', '', '', NULL, NULL);
INSERT INTO entries (id, author_id, slug, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (108, 1, 'ultimo-88', 'ultimo 88', 'ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3', '<p>ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3ultimo 3</p>', '2018-05-04 16:03:53', '2018-05-04 18:03:53', 'photo0008.jpeg', 'img/', '', '', NULL, NULL);
INSERT INTO entries (id, author_id, slug, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (118, 1, 'rrrrrrrrrrrrrrrrrrrrrrrrrrrrrr', 'rrrrrrrrrrrrrrrrrrrrrrrrrrrrrr', 'rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr', '<p>rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr</p>', '2018-09-06 14:33:53', '2018-09-06 16:33:53', 'logo_iconn_180x90-new.png', 'img/', '', '', NULL, NULL);
INSERT INTO entries (id, author_id, slug, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (133, 1, 'trtrtrtrtrt', 'trtrtrtrtrt', 'trtrtrtrtrtrt', '<p>trtrtrtrtrtrt</p>', '2018-09-07 08:22:06', '2018-09-07 10:22:06', '00041.jpg', 'img/', '', '', NULL, NULL);
INSERT INTO entries (id, author_id, slug, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (134, 1, 'dopo modifiche xomposeHandler 3', 'dopo modifiche xomposeHandler 3', 'jfhgj', '<p>jfhgj</p>', '2018-09-07 10:20:30', '2018-09-07 12:20:30', '00041.jpg', 'img/', '', '', NULL, NULL);
INSERT INTO entries (id, author_id, slug, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (135, 1, '666666 333333333333333333', '666666 333333333333333333', '333333333333333333 333333333333333333
333333333333333333
333333333333333333
333333333333333333v333333333333333333', '<p>333333333333333333 333333333333333333
333333333333333333
333333333333333333
333333333333333333v333333333333333333</p>', '2018-09-07 10:34:48', '2018-09-07 12:34:48', '00041.jpg', 'img/', '', '', NULL, NULL);
INSERT INTO entries (id, author_id, slug, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (136, 1, 'dinuovo', 'dinuovo', 'dinuovodinuovodinuovodinuovodinuovodinuovo', '<p>dinuovodinuovodinuovodinuovodinuovodinuovo</p>', '2018-09-07 11:01:37', '2018-09-07 13:01:37', '00022.jpg', 'img/', '', '', NULL, NULL);

-- Table: entriesHome
CREATE TABLE IF NOT EXISTS "entriesHome" (
	"id" INTEGER NOT NULL  ,
	"author_id" INTEGER NOT NULL  ,
	"slug" VARCHAR(100) NOT NULL  ,
	"title" VARCHAR(512) NOT NULL  ,
	"markdown" TEXT NOT NULL  ,
	"html" TEXT NOT NULL  ,
	"published" DATETIME NOT NULL  ,
	"updated" DATETIME NOT NULL DEFAULT 'current_timestamp()' ,
	"img" VARCHAR(100) NULL  ,
	"dir" VARCHAR(100) NULL  ,
	PRIMARY KEY ("id")
);
INSERT INTO entriesHome (id, author_id, slug, title, markdown, html, published, updated, img, dir) VALUES (1, 1, 'Linux -e-l''Open-Source', 'Il mio primo post', 'Linux e l''Open Source non sono semplicemente un sistema operativo e/o software per il tuo computer, Linux e l''Open Source sono una filosofia di Vita e di lavoro: si può vivere e lavorare guadagnando quanto basta per la nostra dignità ed allo stesso tempo fare qualcosa di utile per tutti. ', '<p>Linux e l''Open Source non sono semplicemente un sistema operativo e/o software per il tuo computer, Linux e l''Open Source sono una filosofia di Vita e di lavoro: si può vivere e lavorare guadagnando quanto basta per la nostra dignità ed allo stesso tempo fare qualcosa di utile per tutti. </p>', '2017-11-17 13:50:27', '2018-04-21 15:17:19', 'london-bridge.jpg', 'img/');
INSERT INTO entriesHome (id, author_id, slug, title, markdown, html, published, updated, img, dir) VALUES (2, 1, 'Cose-difficile', 'Niente è difficile', 'Non esistono cose facili o difficili, esistono cose che sappiamo ed altre che possiamo imparare.', '<p>Non esistono cose facili o difficili, esistono cose che sappiamo ed altre che possiamo imparare.</p>', '2017-11-17 13:50:27', '2018-04-21 15:17:20', 'skyline.jpg', 'img/');

-- Table: feed
CREATE TABLE IF NOT EXISTS "feed" (
	"nome" VARCHAR(255) NOT NULL  ,
	"link" VARCHAR(255) NOT NULL  ,
	"id" INTEGER NOT NULL  ,
	"attivo" INTEGER NULL DEFAULT '1'
);
INSERT INTO feed (nome, link, id, attivo) VALUES ('lescienze', 'http://www.lescienze.it/rss/all/rss2.0.xml', 1, 1);
INSERT INTO feed (nome, link, id, attivo) VALUES ('lastampa', 'http://www.lastampa.it/rss.xml', 4, 1);
INSERT INTO feed (nome, link, id, attivo) VALUES ('ilfatto', 'https://www.ilfattoquotidiano.it/feed/', 5, 1);
INSERT INTO feed (nome, link, id, attivo) VALUES ('affariitaliani', 'http://www.affaritaliani.it/static/rss/rssGadget.aspx?idchannel=1', 6, 1);
INSERT INTO feed (nome, link, id, attivo) VALUES ('repubblica', 'http://www.repubblica.it/rss/homepage/rss2.0.xml', 8, 1);

-- Table: fruits
CREATE TABLE IF NOT EXISTS "fruits" (
	"id" INTEGER NOT NULL  ,
	"name" VARCHAR(64) NULL  ,
	"value" INTEGER NULL  ,
	PRIMARY KEY ("id")
);
INSERT INTO fruits (id, name, value) VALUES (1, 'apples', 10);
INSERT INTO fruits (id, name, value) VALUES (2, 'oranges', 20);
INSERT INTO fruits (id, name, value) VALUES (3, 'bananas', 15);
INSERT INTO fruits (id, name, value) VALUES (4, 'lemons', 5);
INSERT INTO fruits (id, name, value) VALUES (5, 'pears', 3);
INSERT INTO fruits (id, name, value) VALUES (6, 'apricots', 7);
INSERT INTO fruits (id, name, value) VALUES (7, 'kiwis', 9);
INSERT INTO fruits (id, name, value) VALUES (8, 'mangos', 12);
INSERT INTO fruits (id, name, value) VALUES (9, 'figs', 4);
INSERT INTO fruits (id, name, value) VALUES (10, 'limes', 8);
INSERT INTO fruits (id, name, value) VALUES (11, 'apples', 13);
INSERT INTO fruits (id, name, value) VALUES (12, 'bananas', 15);
INSERT INTO fruits (id, name, value) VALUES (13, 'bananas', 15);

-- Table: iconn_menu
CREATE TABLE IF NOT EXISTS "iconn_menu" (
	"ID" INTEGER NOT NULL  ,
	"codice" VARCHAR(10) NOT NULL  ,
	"radice" VARCHAR(10) NOT NULL  ,
	"livello" TINYINT NOT NULL  ,
	"titolo" VARCHAR(64) NOT NULL  ,
	"descrizione" VARCHAR(128) NOT NULL  ,
	"link" VARCHAR(512) NOT NULL  ,
	"attivo" TINYINT NOT NULL  ,
	"icon" VARCHAR(255) NOT NULL  ,
	"workplace" INTEGER NOT NULL  ,
	"param1" VARCHAR(255) NULL  ,
	"ordine" INTEGER NULL  ,
	PRIMARY KEY ("ID", "titolo")
);
INSERT INTO iconn_menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (1, 'generale', 'generale', 0, 'Generale', 'Radice del portale', 'pannelloGestore.xhtml', 1, 'ui-icon-home', 0, '', NULL);
INSERT INTO iconn_menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (1, 'generale', 'generale', 1, 'MENU', 'Menu Generale', 'pannelloGestore.xhtml', 1, '/icone/home', 0, '', NULL);
INSERT INTO iconn_menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (3, 'meeting', 'generale', 2, 'Meeting', 'Collegamento Meeting', '/meeting', 1, 'ui-icon-document', 402218601, 'pub', 2);
INSERT INTO iconn_menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (11, 'archivio', 'generale', 2, 'archivio', 'archivio', '/archive', 1, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO iconn_menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (5, 'blog', 'home', 2, 'BLOG', 'BLOG', '/blog/', 1, 'ui-icon-document', 402221400, 'pub', NULL);
INSERT INTO iconn_menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (6, 'home', 'generale', 2, 'HOME', 'HOME', '/home/', 1, 'ui-icon-document', 402221400, 'pub', NULL);
INSERT INTO iconn_menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (9, 'menu', 'generale', 2, 'menu', 'MENU', '/menu/', 0, 'ui-icon-document', 402220600, '', NULL);
INSERT INTO iconn_menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (11, 'HOME', 'home', 2, 'HOME', 'home', '/home/', 1, 'ui-icon-document', 402220600, 'Allegato D dichiarazione notoriet.pdf', NULL);
INSERT INTO iconn_menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (13, 'conferenza', 'meeting', 2, 'conferenza', 'Multi Conferenza', '/conferenza/', 1, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO iconn_menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (11, 'conferenza', 'generale', 2, 'conferenza', 'conferenza', '/conferenza/', 1, 'ui-icon-document', 402220600, '12345', NULL);
INSERT INTO iconn_menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (12, 'startstrea', 'generale', 2, 'Start Streaming', 'Sart streaming', '/start-streaming/', 1, 'ui-icon-document', 402220600, '12345', NULL);
INSERT INTO iconn_menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (11, 'upload', 'archivio', 2, 'upload file', 'upload file', '/upload', 1, 'ui-icon-document', 402220600, 'pub', NULL);

-- Table: iconn_menu_config
CREATE TABLE IF NOT EXISTS "iconn_menu_config" (
	"ID" INTEGER NOT NULL  ,
	"codice" VARCHAR(10) NOT NULL  ,
	"radice" VARCHAR(10) NOT NULL  ,
	"livello" TINYINT NOT NULL  ,
	"titolo" VARCHAR(64) NOT NULL  ,
	"descrizione" VARCHAR(128) NOT NULL  ,
	"link" VARCHAR(512) NOT NULL  ,
	"attivo" TINYINT NOT NULL  ,
	"icon" VARCHAR(255) NOT NULL  ,
	"workplace" INTEGER NOT NULL  ,
	"param1" VARCHAR(255) NULL  ,
	PRIMARY KEY ("ID", "titolo")
);
INSERT INTO iconn_menu_config (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1) VALUES (26, 'generale', 'generale', 0, 'Gestione Tabelle', 'Gestione Tabelle', 'gestioneTabelle.xhtml', 1, 'ui-icon-home', 0, NULL);
INSERT INTO iconn_menu_config (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1) VALUES (27, 'gest_kiosk', 'generale', 1, 'Gestione Kiosko', 'Gestione Kiosko', 'gestioneTabelle.xhtml', 1, '', 0, NULL);
INSERT INTO iconn_menu_config (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1) VALUES (28, 'insert_kio', 'gest_kiosk', 2, 'Inserimento Kiosko', 'Inserimento Kiosko', 'insertWorkplace.xhtml', 1, '', 0, NULL);
INSERT INTO iconn_menu_config (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1) VALUES (28, 'modi_kio', 'gest_kiosk', 2, 'Modifica Kiosko', 'Modifica Kiosko', 'insertWorkplace.xhtml', 1, '', 0, NULL);

-- Table: lfy
CREATE TABLE IF NOT EXISTS "lfy" (
	"name" VARCHAR(40) NULL  ,
	"author" VARCHAR(40) NULL
);

-- Table: manifestazioni
CREATE TABLE IF NOT EXISTS "manifestazioni" (
	"id" INTEGER NOT NULL  ,
	"author_id" INTEGER NOT NULL  ,
	"title" VARCHAR(512) NOT NULL  ,
	"markdown" TEXT NOT NULL  ,
	"html" TEXT NOT NULL  ,
	"published" DATETIME NOT NULL DEFAULT 'current_timestamp()' ,
	"updated" DATETIME NOT NULL DEFAULT 'current_timestamp()' ,
	"img" VARCHAR(100) NULL  ,
	"dir" VARCHAR(100) NULL  ,
	"html2" TEXT NOT NULL  ,
	"html3" TEXT NOT NULL  ,
	"img2" VARCHAR(512) NULL  ,
	"img3" VARCHAR(100) NULL  ,
	PRIMARY KEY ("id")
);
INSERT INTO manifestazioni (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (1, 1, 'Dal 18 Giugno tornano i “Venerdì a Villa Adami”', 'Un ricco programma che accompagnerà sanpierini e visitatori da giugno a settembre, nel segno dell’arte, come occasione di ripartenza. E’ davvero ricco il programma di “Venerdì a Villa Adami”, l’iniziativa proposta dalla locale Pro Loco e dal “CCN de’ Medici”, che valorizzerà una delle aree più belle di San Piero a Sieve. Il tutto per dimostrare la propria voglia di non fermarsi, di andare avanti, ma tutto nel rispetto delle norme e senza prendere rischi per spettatori e partecipanti. Una manifestazione che ha avuto il patrocinio del Comune di Scarperia e San Piero ', 'Un ricco programma che accompagnerà sanpierini e visitatori da giugno a settembre, nel segno dell’arte, come occasione di ripartenza. E’ davvero ricco il programma di “Venerdì a Villa Adami”, l’iniziativa proposta dalla locale Pro Loco e dal “CCN de’ Medici”, che valorizzerà una delle aree più belle di San Piero a Sieve. Il tutto per dimostrare la propria voglia di non fermarsi, di andare avanti, ma tutto nel rispetto delle norme e senza prendere rischi per spettatori e partecipanti. Una manifestazione che ha avuto il patrocinio del Comune di Scarperia e San Piero

Il primo appuntamento previsto è per venerdì 18 Giugno, con “Francesco Nuti. Andata, caduta e ritorno”, scritto e diretto da Valerio Groppa, con Nicola Pecci, le musiche di Giovanni e Francesco Nuti, tratto dall''autobiografia di Francesco Nuti "Sono un bravo ragazzo". Sabato 19 Giugno (alle 17) sarà la volta di “Dante e il Mugello”: Carlo Forasassi conversa con il Dott. Fabrizio Boni, a 700 anni dalla morte di Dante, ad ingresso gratuito. Venerdì 25 Giugno musica protagonista con “Jazz standard band”, con un trio di eccezione composto da Franco Baggiani alla tromba, Alessandro Bruno alla chitarra e Alessandro Geri al contrabbasso. Il giorno seguente sarà la volta del concerto dei “Polimeri Variabili”, con musica prevalentemente funky. Luglio si aprirà il 2 con “I Geneticamente mortificati” in “Restauration. Siamo tornati di moda” monologo imperfetto sull''attualità, scritto da Marco Giavatto e diretto da Fulvio Ferrati. Si proseguirà venerdì 9 Luglio

con “Piccoli crimini coniugali” di Eric Emmanuel Schmitt con Fabrizio Pinzauti e Rosanna Reccia ed il 16 con “La Divina Commedia in 100 luoghi - Inferno Canto XV” performance di Matteo Fratarcangeli. Venerdì 23 Luglio “Musica 60-70-80-90 con Altri Tempi” ad ingresso gratuito ed a chiuder e il mese, il 30, “Dante. Viaggio dentro e intorno alla Divina Commedia” con Gianluigi Tosto. Due gli appuntamenti in agosto: il 6 con “Itaglia” con Matteo Procuranti e Silvia Cuncu per la regia di Virginia Martini ed il 27 “Alla radio con Čechov si può anche ridere” da un''idea di Pietro Venè, con I Pinguini e la regia di Pietro Venè e Cristina Bacci. Venerdì 3 Settembre “New Orleans history” quintetto di fiati e percussioni ed a chiudere, ad ingresso gratuito, venerdì 10 Settembre “Musica dal vivo” con Ivo e Sofia.

“Si tratta di un programma che spazia tra arti e generi molto diversi, spiega soddisfatto il presidente della Pro Loco di San Piero, Sauro Bani, che abbiamo cercato di mettere insieme per accontentare gusti e persone differenti. C’era bisogno di qualcosa che, in sicurezza, ridesse vita alle arti e possibilità di aggregarsi. L’esperienza molto positiva in Villa Adami dello scorso anno ci ha spinto a far crescere questa idea ed a riproporla, diversificando le possibilità di quello che è uno dei luoghi di ritrovo più belli e caratteristici del nostro paese.”

L’accesso, regolamentato, agli spettacoli, avrà un costo di 8 euro a serata (4 euro il ridotto) tranne alcuni appuntamenti ove sia indicato specificatamente l’ingresso gratuito. Le serate, che saranno singolarmente annullate in caso di maltempo, hanno inizio alle 21, prevedono una prenotazione obbligatoria per mail a   prolocosanpieroasieve@gmail.com o attraverso whatsapp al 3382562225 o al 3311090673.', '2021-09-08 00:00:00', '2021-08-07 17:13:28', 'Villa Adami Venerdi 2021.jpg', '/news/img', 'Un ricco programma che accompagnerà sanpierini e visitatori da giugno a settembre, nel segno dell’arte, come occasione di ripartenza...
', 'Un ricco programma che accompagnerà sanpierini e visitatori da giugno a settembre, nel segno dell’arte, come occasione di ripartenza. E’ davvero ricco il programma di “Venerdì a Villa Adami”, l’iniziativa proposta dalla locale Pro Loco e dal “CCN de’ Medici”, che valorizzerà una delle aree più belle di San Piero a Sieve. Il tutto per dimostrare la propria voglia di non fermarsi, di andare avanti, ma tutto nel rispetto delle norme e senza prendere rischi per spettatori e partecipanti. Una manifestazione che ha avuto il patrocinio del Comune di Scarperia e San Piero ', 'Villa Adami Venerdi 2021.jpg', 'Villa Adami Venerdi 2021.jpg');
INSERT INTO manifestazioni (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (2, 1, 'Simposio Antonio Berti', 'Si è aperto il bando per il 17° Simposio dedicato allo scultore Antonio Berti', 'Dal 14 al 25 settembre San Piero a Sieve ospiterà la diciassettesima edizione del Simposio di Scultura "Premio Antonio Berti", evento biennale dedicato all''arte che vede coinvolti gli studenti delle più importanti Accademie di Belle Arti italiane ed europee che si sfideranno a “colpi di scalpello” nel parco dedicato proprio all’artista sanpierino (nell’anno in cui la cittadina sarà ufficialmente “intitolata” con la posa di cartelli all’ingresso del centro abitato con su scritto “paese natale di Antonio Berti”).

La manifestazione, promossa dalla Proloco di San Piero a Sieve, con il Patrocinio del Comune di Scarperia e San Piero e della Regione Toscana e con la collaborazione dell''Accademia di Belle Arti di Firenze e di quella di Carrara, il Comune di Firenzuola, l''Unione Montana dei Comuni del Mugello e la Fondazione per la Scultura Antonio Berti, vede il coinvolgimento anche dell’Ente Cassa di Risparmio di Firenze che ha finanziato il progetto di simposio e del percorso ad esso correlato. Il Simposio di Scultura nasce dalla volontà di rendere omaggio alla figura del grande scultore e conterraneo Antonio Berti, profondamente legato alla sua terra. ', '2021-09-08 00:00:00', '2021-08-07 17:13:28', 'simposio4.jpg', '/news/img', 'Per dieci giorni i sei studenti realizzano opere scultoree contemporanee, a tema libero, utilizzando blocchi di pietra serena, grazie al Copser, provenienti dalle cave di Firenzuola (che ospiteranno, in uno dei giorni del Simposio, una visita guidata degli artisti, alcuni scatti dei quali saranno poi presentati in occasione della premiazione), lavorando presso il laboratorio all''aperto allestito presso il Parco Antonio Berti, dove sarà possibile vederli all''opera per tutta la durata della manifestazione. Per partecipare è appena aperto il bando, con scadenza sabato 26 giugno. Gli artisti ammessi, dopo una valutazione di una apposita commissione artistica che vede anche professori delle Accademie, guidati in particolare dal professor Di Tommaso dell''Accademia delle Belle Arti di Firenze, saranno ospitati per l’intera durata della manifestazione dal Camping Village Mugello Verde. L''atmosfera è unica: una nube di polvere bianca, dovuta alla lavorazione della pietra con mola e scalpelli, avvolge gli scultori concentrati nel tirar fuori in poco tempo un''opera di grande impatto visivo ed emotivo. Anche molto spettacolare, tanto è vero che, insieme ad Unione dei Comuni, è stato intrapreso un percorso di coinvolgimento dei plessi scolastici delle scuole medie inferiori e superiori del territorio, con apposite visite guidate. L’accesso per il pubblico è ovviamente libero.

simposio5', 'La novità di quest’anno sarà la creazione di una categoria speciale, che quest’anno sarà dedicata ai 700 anni dalla morte di Dante, a cui un artista, invitato fra chi ha partecipato in questi anni (e sono oltre 100), dovrà ispirarsi per scolpire un’opera più grande delle altre, fuori concorso, con 15 giorni a disposizione.

Molte delle sculture realizzate nelle precedenti edizioni hanno trovato collocazione nel tessuto urbano di San Piero a Sieve, valorizzandone parchi, piazze e giardini. E questo ha dato vita all’idea del percorso che finalmente dovrebbe trovare un compimento. La Pro Loco, insieme con il Centro Commerciale de'' Medici, ha creato un progetto che intende valorizzare l''abitato di San Piero a Sieve, già ricco di beni architettonici e storici di rilievo, attraverso la collocazione delle opere realizzate in questi anni. Lo sviluppo di tale percorso, che unirà in particolare la Stazione di San Piero con lo stesso Parco Berti, prevede la riqualificazione delle aree interessate e la collocazione di cartellonistica che, oltre ad indicare il percorso, guidi il visitatore alla scoperta degli angoli più suggestivi del paese: la Pieve millenaria dedicata a San Pietro, la Fortezza di San Martino, Villa Adami, Villa Schifanoia, la Torre medicea di Scoronconcolo, guidati in un percorso ideale che ha le sculture di pietra come filo conduttore. Un progetto ambizioso, ma già ben avviato, nel quale la Pro Loco crede molto.

“Quest’anno, spiega il presidente della Pro Loco sanpierina, Sauro Bani, si fa un ulteriore salto di qualità dando impulso al Simposio, e partendo con il percorso, attraverso il tessuto urbano sanpierino, e con questa nuova sezione, con un artista affermato e che già a San Piero ha dimostrato il suo valore, volgiamo rafforzare il legame di San Piero con la scultura e l’arte, cosa che cerchiamo di far emergere da tutte le nostre iniziative.”', 'simposio5.jpg', 'simposio 4.jpg');
INSERT INTO manifestazioni (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (3, 2, 'simposio Antonio Berti 2', 'a', '2	1	Si è aperto il bando per il 17° Simposio dedicato allo scultore Antonio Berti	Si è aperto il bando per il 17° Simposio dedicato allo scultore Antonio Berti	Si è aperto il bando per il 17° Simposio dedicato allo scultore Antonio Berti	"Dal 14 al 25 settembre San Piero a Sieve ospiterà la diciassettesima edizione del Simposio di Scultura "Premio Antonio Berti", evento biennale dedicato all''arte che vede coinvolti gli studenti delle più importanti Accademie di Belle Arti italiane ed europee che si sfideranno a “colpi di scalpello” nel parco dedicato proprio all’artista sanpierino (nell’anno in cui la cittadina sarà ufficialmente “intitolata” con la posa di cartelli all’ingresso del centro abitato con su scritto “paese natale di Antonio Berti”).

La manifestazione, promossa dalla Proloco di San Piero a Sieve, con il Patrocinio del Comune di Scarperia e San Piero e della Regione Toscana e con la collaborazione dell''Accademia di Belle Arti di Firenze e di quella di Carrara, il Comune di Firenzuola, l''Unione Montana dei Comuni del Mugello e la Fondazione per la Scultura Antonio Berti, vede il coinvolgimento anche dell’Ente Cassa di Risparmio di Firenze che ha finanziato il progetto di simposio e del percorso ad esso correlato. Il Simposio di Scultura nasce dalla volontà di rendere omaggio alla figura del grande scultore e conterraneo Antonio Berti, profondamente legato alla sua terra. "	2021-06-08 00:00:00	2021-06-10 22:25:38	simposio 4.jpg	/news/img	"Per dieci giorni i sei studenti realizzano opere scultoree contemporanee, a tema libero, utilizzando blocchi di pietra serena, grazie al Copser, provenienti dalle cave di Firenzuola (che ospiteranno, in uno dei giorni del Simposio, una visita guidata degli artisti, alcuni scatti dei quali saranno poi presentati in occasione della premiazione), lavorando presso il laboratorio all''aperto allestito presso il Parco Antonio Berti, dove sarà possibile vederli all''opera per tutta la durata della manifestazione. Per partecipare è appena aperto il bando, con scadenza sabato 26 giugno. Gli artisti ammessi, dopo una valutazione di una apposita commissione artistica che vede anche professori delle Accademie, guidati in particolare dal professor Di Tommaso dell''Accademia delle Belle Arti di Firenze, saranno ospitati per l’intera durata della manifestazione dal Camping Village Mugello Verde. L''atmosfera è unica: una nube di polvere bianca, dovuta alla lavorazione della pietra con mola e scalpelli, avvolge gli scultori concentrati nel tirar fuori in poco tempo un''opera di grande impatto visivo ed emotivo. Anche molto spettacolare, tanto è vero che, insieme ad Unione dei Comuni, è stato intrapreso un percorso di coinvolgimento dei plessi scolastici delle scuole medie inferiori e superiori del territorio, con apposite visite guidate. L’accesso per il pubblico è ovviamente libero.

simposio5"	"La novità di quest’anno sarà la creazione di una categoria speciale, che quest’anno sarà dedicata ai 700 anni dalla morte di Dante, a cui un artista, invitato fra chi ha partecipato in questi anni (e sono oltre 100), dovrà ispirarsi per scolpire un’opera più grande delle altre, fuori concorso, con 15 giorni a disposizione.

Molte delle sculture realizzate nelle precedenti edizioni hanno trovato collocazione nel tessuto urbano di San Piero a Sieve, valorizzandone parchi, piazze e giardini. E questo ha dato vita all’idea del percorso che finalmente dovrebbe trovare un compimento. La Pro Loco, insieme con il Centro Commerciale de'' Medici, ha creato un progetto che intende valorizzare l''abitato di San Piero a Sieve, già ricco di beni architettonici e storici di rilievo, attraverso la collocazione delle opere realizzate in questi anni. Lo sviluppo di tale percorso, che unirà in particolare la Stazione di San Piero con lo stesso Parco Berti, prevede la riqualificazione delle aree interessate e la collocazione di cartellonistica che, oltre ad indicare il percorso, guidi il visitatore alla scoperta degli angoli più suggestivi del paese: la Pieve millenaria dedicata a San Pietro, la Fortezza di San Martino, Villa Adami, Villa Schifanoia, la Torre medicea di Scoronconcolo, guidati in un percorso ideale che ha le sculture di pietra come filo conduttore. Un progetto ambizioso, ma già ben avviato, nel quale la Pro Loco crede molto.

“Quest’anno, spiega il presidente della Pro Loco sanpierina, Sauro Bani, si fa un ulteriore salto di qualità dando impulso al Simposio, e partendo con il percorso, attraverso il tessuto urbano sanpierino, e con questa nuova sezione, con un artista affermato e che già a San Piero ha dimostrato il suo valore, volgiamo rafforzare il legame di San Piero con la scultura e l’arte, cosa che cerchiamo di far emergere da tutte le nostre iniziative.”"	simposio5.jpg	simposio 4.jpg', '2021-09-08 00:00:00', '2021-08-07 17:13:28', 'simposio5.jpg', '/news/img', 'Si è aperto il bando per il 17° Simposio dedicato allo scultore Antonio Berti	Si è aperto il bando per il 17° Simposio dedicato allo scultore Antonio Berti	Si è aperto il bando per il 17° Simposio dedicato allo scultore Antonio Berti	"Dal 14 al 25 settembre San Piero a Sieve ospiterà la diciassettesima edizione del Simposio di Scultura "Premio Antonio Berti", evento biennale dedicato all''arte che vede coinvolti gli studenti delle più importanti Accademie di Belle Arti italiane ed europee che si sfideranno a “colpi di scalpello” nel parco dedicato proprio all’artista sanpierino (nell’anno in cui la cittadina sarà ufficialmente “intitolata” con la posa di cartelli all’ingresso del centro abitato con su scritto “paese natale di Antonio Berti”).

La manifestazione, promossa dalla Proloco di San Piero a Sieve,', '2	1	Si è aperto il bando per il 17° Simposio dedicato allo scultore Antonio Berti	Si è aperto il bando per il 17° Simposio dedicato allo scultore Antonio Berti	Si è aperto il bando per il 17° Simposio dedicato allo scultore Antonio Berti	"Dal 14 al 25 settembre San Piero a Sieve ospiterà la diciassettesima edizione del Simposio di Scultura "Premio Antonio Berti", evento biennale dedicato all''arte che vede coinvolti gli studenti delle più importanti Accademie di Belle Arti italiane ed europee che si sfideranno a “colpi di scalpello” nel parco dedicato proprio all’artista sanpierino (nell’anno in cui la cittadina sarà ufficialmente “intitolata” con la posa di cartelli all’ingresso del centro abitato con su scritto “paese natale di Antonio Berti”).

La manifestazione, promossa dalla Proloco di San Piero a Sieve, con il Patrocinio del Comune di Scarperia e San Piero e della Regione Toscana e con la collaborazione dell''Accademia di Belle Arti di Firenze e di quella di Carrara, il Comune di Firenzuola, l''Unione Montana dei Comuni del Mugello e la Fondazione per la Scultura Antonio Berti, vede il coinvolgimento anche dell’Ente Cassa di Risparmio di Firenze che ha finanziato il progetto di simposio e del percorso ad esso correlato. Il Simposio di Scultura nasce dalla volontà di rendere omaggio alla figura del grande scultore e conterraneo Antonio Berti, profondamente legato alla sua terra. "	2021-06-08 00:00:00	2021-06-10 22:25:38	simposio 4.jpg	/news/img	"Per dieci giorni i sei studenti realizzano opere scultoree contemporanee, a tema libero, utilizzando blocchi di pietra serena, grazie al Copser, provenienti dalle cave di Firenzuola (che ospiteranno, in uno dei giorni del Simposio, una visita guidata degli artisti, alcuni scatti dei quali saranno poi presentati in occasione della premiazione), lavorando presso il laboratorio all''aperto allestito presso il Parco Antonio Berti, dove sarà possibile vederli all''opera per tutta la durata della manifestazione. Per partecipare è appena aperto il bando, con scadenza sabato 26 giugno. Gli artisti ammessi, dopo una valutazione di una apposita commissione artistica che vede anche professori delle Accademie, guidati in particolare dal professor Di Tommaso dell''Accademia delle Belle Arti di Firenze, saranno ospitati per l’intera durata della manifestazione dal Camping Village Mugello Verde. L''atmosfera è unica: una nube di polvere bianca, dovuta alla lavorazione della pietra con mola e scalpelli, avvolge gli scultori concentrati nel tirar fuori in poco tempo un''opera di grande impatto visivo ed emotivo. Anche molto spettacolare, tanto è vero che, insieme ad Unione dei Comuni, è stato intrapreso un percorso di coinvolgimento dei plessi scolastici delle scuole medie inferiori e superiori del territorio, con apposite visite guidate. L’accesso per il pubblico è ovviamente libero.

simposio5"	"La novità di quest’anno sarà la creazione di una categoria speciale, che quest’anno sarà dedicata ai 700 anni dalla morte di Dante, a cui un artista, invitato fra chi ha partecipato in questi anni (e sono oltre 100), dovrà ispirarsi per scolpire un’opera più grande delle altre, fuori concorso, con 15 giorni a disposizione.

Molte delle sculture realizzate nelle precedenti edizioni hanno trovato collocazione nel tessuto urbano di San Piero a Sieve, valorizzandone parchi, piazze e giardini. E questo ha dato vita all’idea del percorso che finalmente dovrebbe trovare un compimento. La Pro Loco, insieme con il Centro Commerciale de'' Medici, ha creato un progetto che intende valorizzare l''abitato di San Piero a Sieve, già ricco di beni architettonici e storici di rilievo, attraverso la collocazione delle opere realizzate in questi anni. Lo sviluppo di tale percorso, che unirà in particolare la Stazione di San Piero con lo stesso Parco Berti, prevede la riqualificazione delle aree interessate e la collocazione di cartellonistica che, oltre ad indicare il percorso, guidi il visitatore alla scoperta degli angoli più suggestivi del paese: la Pieve millenaria dedicata a San Pietro, la Fortezza di San Martino, Villa Adami, Villa Schifanoia, la Torre medicea di Scoronconcolo, guidati in un percorso ideale che ha le sculture di pietra come filo conduttore. Un progetto ambizioso, ma già ben avviato, nel quale la Pro Loco crede molto.

“Quest’anno, spiega il presidente della Pro Loco sanpierina, Sauro Bani, si fa un ulteriore salto di qualità dando impulso al Simposio, e partendo con il percorso, attraverso il tessuto urbano sanpierino, e con questa nuova sezione, con un artista affermato e che già a San Piero ha dimostrato il suo valore, volgiamo rafforzare il legame di San Piero con la scultura e l’arte, cosa che cerchiamo di far emergere da tutte le nostre iniziative.”"	simposio5.jpg	simposio 4.jpg', 'simposio5.jpg', 'simposio5.jpg');
INSERT INTO manifestazioni (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (4, 1, 'Tesseramento o 5 per mille. Come aiutare la Pro Loco di San Piero', 'b', 'In un momento di grande difficoltà per il mondo del volontariato e dell’associazionismo, la Pro Loco di San Piero non si è mai fermata. Aiutando istituzioni e singoli cittadini anche nel momento della pandemia, con consegna delle spese e iniziative mirate, e programmando quelle che saranno le iniziative alla ripresa. Uno sforzo notevole, che ha partorito un calendario ricco di appuntamenti quando tali eventi saranno nuovamente realizzabili. Un impegno che richiede un numero importante di volontari, per i quali le porte sono sempre aperte. Ed anche di risorse, che sono necessarie per “mettere a terra” le tante idee che emergono. ', '2021-09-08 00:00:00', '2021-08-07 17:13:28', 'ProlocoSPS_tesseramento_2021.jpg', '/news/img', 'Per questo la Pro Loco di San Piero ha bisogno dell’aiuto di tutti, attraverso il tesseramento annuale, ancora aperto, e magari anche con la donazione del 5 per mille.

Il tesseramento si potrà effettuare in sede, in via Cipriani 8, tutte le mattine, dalle 10 alle 12, martedì escluso, o, nello stesso orario, sabato e domenica prossimi, in un banchetto appositamente realizzato nei pressi dell’edicola di Via Provinciale.

Ricordiamo che la tessera UNPLI garantisce numerosi vantaggi.

Per quanto riguarda il 5 per mille sarà sufficiente indicare nell’apposita casella della dichiarazione dei redditi, il codice fiscale 05235460481.', 'Per questo la Pro Loco di San Piero ha bisogno dell’aiuto di tutti, attraverso il tesseramento annuale, ancora aperto, e magari anche con la donazione del 5 per mille.

Il tesseramento si potrà effettuare in sede, in via Cipriani 8, tutte le mattine, dalle 10 alle 12, martedì escluso, o, nello stesso orario, sabato e domenica prossimi, in un banchetto appositamente realizzato nei pressi dell’edicola di Via Provinciale.

Ricordiamo che la tessera UNPLI garantisce numerosi vantaggi.

Per quanto riguarda il 5 per mille sarà sufficiente indicare nell’apposita casella della dichiarazione dei redditi, il codice fiscale 05235460481.', 'ProlocoSPS_tesseramento_2021.jpg', 'ProlocoSPS_tesseramento_2021.jpg');
INSERT INTO manifestazioni (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (116, 2, 'prima', 'markdown', 'html', '2022-03-31 17:37:01', '2022-03-31 17:37:01', 'img', 'dir', 'html2', 'html3', 'img2', 'img3');
INSERT INTO manifestazioni (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (117, 2, 'prima', 'markdown', 'descrizione primo inserimento', '2022-03-31 23:24:21', '2022-03-31 23:24:21', 'img', '/home/carlo/develop/myapp/static/img/manifestazioni', 'html2', 'html3', 'img2', 'img3');
INSERT INTO manifestazioni (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (118, 2, 'prima', 'markdown', 'descrizione seconda manifestazione', '2022-03-31 23:31:41', '2022-03-31 23:31:41', 'IMG_20130203_160557.jpg', '/home/carlo/develop/myapp/static/img/manifestazioni', 'html2', 'html3', 'img2', 'img3');
INSERT INTO manifestazioni (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (119, 2, 'seconda manifestazione', 'markdown', 'descrizione seconda manifestazione', '2022-03-31 23:35:43', '2022-03-31 23:35:43', 'IMG_20130203_160557.jpg', '/home/carlo/develop/myapp/static/img/manifestazioni', 'html2', 'html3', 'img2', 'img3');
INSERT INTO manifestazioni (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (120, 2, 'terza manifestazione', 'markdown', 'Descrizione terza Manifestazione', '2022-04-01 00:33:58', '2022-04-01 00:33:58', 'treno_2022_ok_2.jpg', '/home/carlo/develop/myapp/static/img/manifestazioni', 'html2', 'html3', 'img2', 'img3');
INSERT INTO manifestazioni (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (121, 2, 'terza manifestazione', 'markdown', 'descrizione terza manifestazione', '2022-04-06 17:42:01', '2022-04-06 17:42:01', 'firmaSauro.jpg', '/home/carlo/develop/myapp/static/img/manifestazioni', 'html2', 'html3', 'img2', 'img3');
INSERT INTO manifestazioni (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (122, 2, 'Manifestazione con img', 'markdown', 'descrizione seconda manifestazione', '2022-04-08 23:30:00', '2022-04-08 23:30:00', 'HPIM1258.JPG', '/manifestazioni/img/', 'html2', 'html3', 'img2', 'img3');
INSERT INTO manifestazioni (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (123, 2, 'Manifestazione con img', 'markdown', 'descrizione seconda manifestazione con img ', '2022-04-08 23:46:12', '2022-04-08 23:46:12', 'photo0005.jpeg', '/manifestazioni/img/', 'html2', 'html3', 'img2', 'img3');
INSERT INTO manifestazioni (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (124, 2, 'modifica dir', 'descrizione modifica ins ', 'descrizione modifica ins ', '2022-04-10 21:13:18', '2022-04-10 21:13:18', 'HPIM1272.JPG', '/manifestazioni/img/', 'html2', 'html3', 'img2', 'img3');
INSERT INTO manifestazioni (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (125, 2, 'news con img', 'Descrizione terza Manifestazione news img', 'Descrizione terza Manifestazione news img', '2022-04-19 00:46:05', '2022-04-19 00:46:05', '00009.jpg', '/manifestazioni/img/', 'html2', 'html3', 'img2', 'img3');

-- Table: menu
CREATE TABLE IF NOT EXISTS "menu" (
	"ID" INTEGER NOT NULL  ,
	"codice" VARCHAR(12) NOT NULL  ,
	"radice" VARCHAR(12) NOT NULL  ,
	"livello" TINYINT NOT NULL  ,
	"titolo" VARCHAR(64) NOT NULL  ,
	"descrizione" VARCHAR(128) NOT NULL  ,
	"link" VARCHAR(512) NOT NULL  ,
	"attivo" TINYINT NOT NULL  ,
	"icon" VARCHAR(255) NOT NULL  ,
	"workplace" INTEGER NOT NULL  ,
	"param1" VARCHAR(255) NULL  ,
	"ordine" INTEGER NULL  ,
	PRIMARY KEY ("ID", "titolo")
);
INSERT INTO menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (10, 'archiviopost', 'archivio', 3, 'Archivio Post', 'archivio post', '/archive', 0, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (1, 'generale', 'generale', 1, 'MENU Generale', 'Menu Generale', '/home/', 0, '/icone/home', 0, 'pub', NULL);
INSERT INTO menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (3, 'primanota', 'contabilita', 2, 'Inserisci Prima Nota', 'Inserisci Prima Nota', 'qApp.quit', 1, 'ui-icon-document', 402218601, 'log', 2);
INSERT INTO menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (14, 'archivio', 'generale', 2, 'archivio', 'archivio', '/archive', 0, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (5, 'news', 'newsletter', 2, 'Inserisci News', 'Inserisci News', '/insnews/', 1, 'ui-icon-document', 402221400, 'pub', NULL);
INSERT INTO menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (6, 'blog', 'home', 2, 'BLOG', 'home', '/blog', 0, 'ui-icon-document', 402221400, 'pub', NULL);
INSERT INTO menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (9, 'newpost', 'archivio', 3, 'Nuovo Post', 'Nuovo Post', '/compose', 1, 'ui-icon-document', 402220600, 'priv', NULL);
INSERT INTO menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (13, 'conferenza', 'contatti', 3, 'conferenza', 'Multi Conferenza', '/conferenza/', 1, 'ui-icon-document', 402220600, 'priv', NULL);
INSERT INTO menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (8, 'meeting', 'contatti', 3, 'Meeting', 'Collegamento Meeting', '/meeting', 1, 'ui-icon-document', 402218601, 'priv', 2);
INSERT INTO menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (12, 'centralino', 'contatti', 3, 'Centralino', 'Centralino', '/centralino/', 1, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (11, 'upload', 'archivio', 3, 'upload file', 'upload file', '/upload', 1, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (15, 'logout', 'logout', 2, 'logout', 'logout', 'qApp.quit', 0, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (16, 'login', 'generale', 2, 'login', 'login', '/auth/login?next=/home/', 1, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (17, 'login', 'login', 3, 'login', 'login', '/auth/login?next=/home/', 1, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (18, 'logout', 'login', 3, 'logout', 'logout', 'qApp.quit', 1, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (19, 'news', 'home', 3, 'NEWS', 'Notizie', '/news/', 1, 'ui-icon-document', 402221400, 'pub', NULL);
INSERT INTO menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (20, 'registra', 'home', 3, 'Registra Video', 'Registra Video', '/registra/', 1, 'ui-icon-document', 402221400, 'pub', NULL);
INSERT INTO menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (21, 'report', 'archivio', 3, 'report pdf', 'Report pdf', '/report/', 1, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (22, 'report', 'report', 2, 'REPORT', 'REPORT', '/Report', 1, 'ui-icon-document', 402221400, 'pub', NULL);
INSERT INTO menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (23, 'rapporto', 'report', 2, 'Stampa Prima Nota', 'Stampa Prima Nota', '/Rapporto', 1, 'ui-icon-document', 402220400, 'pub', NULL);
INSERT INTO menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (24, 'qrcode', 'report', 3, 'QRCODE', 'QRCODE', '/selectqrcode/?classe=Pdf.report(" ")', 1, 'ui-icon-document', 402220400, 'pub', NULL);
INSERT INTO menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (25, 'streaming', 'contatti', 3, 'View Streaming', 'View streaming', '/selectviewstreaming/', 1, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (26, 'serverstream', 'contatti', 3, 'ServerStreaming', 'Server streaming', '/selectstreaming/', 1, 'ui-icon-document', 402220600, 'priv', NULL);
INSERT INTO menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (27, 'scattafoto', 'home', 3, 'Scatta Foto', 'Scatta Foto', '/scattafoto/', 1, 'ui-icon-document', 402221400, 'pub', NULL);
INSERT INTO menu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (28, 'registra2', 'home', 3, 'Registra 2 Video', 'Registra 2 Video', '/registra2/', 1, 'ui-icon-document', 402221400, 'pub', NULL);

-- Table: menu-ex
CREATE TABLE IF NOT EXISTS "menu-ex" (
	"ID" TINYINT NOT NULL  ,
	"codice" TINYINT NOT NULL  ,
	"radice" TINYINT NOT NULL  ,
	"livello" TINYINT NOT NULL  ,
	"titolo" TINYINT NOT NULL  ,
	"descrizione" TINYINT NOT NULL  ,
	"link" TINYINT NOT NULL  ,
	"attivo" TINYINT NOT NULL  ,
	"icon" TINYINT NOT NULL  ,
	"workplace" TINYINT NOT NULL  ,
	"param1" TINYINT NOT NULL
);

-- Table: menu_1
CREATE TABLE IF NOT EXISTS "menu_1" (
	"ID" INTEGER NOT NULL  ,
	"codice" VARCHAR(12) NOT NULL  ,
	"radice" VARCHAR(10) NOT NULL  ,
	"livello" TINYINT NOT NULL  ,
	"titolo" VARCHAR(64) NOT NULL  ,
	"descrizione" VARCHAR(128) NOT NULL  ,
	"link" VARCHAR(512) NOT NULL  ,
	"attivo" TINYINT NOT NULL  ,
	"icon" VARCHAR(255) NOT NULL  ,
	"workplace" INTEGER NOT NULL  ,
	"param1" VARCHAR(255) NULL  ,
	"ordine" INTEGER NULL  ,
	PRIMARY KEY ("ID", "titolo")
);
INSERT INTO menu_1 (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (10, 'archiviopost', 'archivio', 3, 'Archivio Post', 'archivio post', '/archive', 1, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO menu_1 (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (1, 'generale', 'generale', 1, 'MENU Generale', 'Menu Generale', '/home/', 1, '/icone/home', 0, 'pub', NULL);
INSERT INTO menu_1 (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (3, 'contatti', 'generale', 2, 'Contatti', 'contatti', '/meeting', 1, 'ui-icon-document', 402218601, 'log', 2);
INSERT INTO menu_1 (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (14, 'archivio', 'generale', 2, 'archivio', 'archivio', '/archive', 1, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO menu_1 (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (5, 'blog', 'home', 3, 'BLOG', 'BLOG', '/blog/', 1, 'ui-icon-document', 402221400, 'pub', NULL);
INSERT INTO menu_1 (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (6, 'home', 'home', 2, 'HOME', 'home', '/home/', 1, 'ui-icon-document', 402221400, 'pub', NULL);
INSERT INTO menu_1 (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (9, 'newpost', 'archivio', 3, 'Nuovo Post', 'Nuovo Post', '/compose', 1, 'ui-icon-document', 402220600, 'priv', NULL);
INSERT INTO menu_1 (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (11, 'HOME', 'home', 3, 'HOME', 'home', '/home/', 0, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO menu_1 (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (13, 'conferenza', 'contatti', 3, 'conferenza', 'Multi Conferenza', '/conferenza/', 1, 'ui-icon-document', 402220600, 'priv', NULL);
INSERT INTO menu_1 (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (8, 'meeting', 'contatti', 3, 'Meeting', 'Collegamento Meeting', '/meeting', 1, 'ui-icon-document', 402218601, 'priv', 2);
INSERT INTO menu_1 (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (12, 'centralino', 'contatti', 3, 'Centralino', 'Centralino', '/centralino/', 1, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO menu_1 (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (11, 'upload', 'archivio', 3, 'upload file', 'upload file', '/upload', 1, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO menu_1 (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (7, 'home', 'home', 3, 'HOME', 'HOME', '/home/', 1, 'ui-icon-document', 402221400, 'pub', NULL);
INSERT INTO menu_1 (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (15, 'logout', 'logout', 2, 'logout', 'logout', '/auth/logout?next=/', 0, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO menu_1 (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (16, 'login', 'generale', 2, 'login', 'login', '/auth/login?next=/home/', 1, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO menu_1 (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (17, 'login', 'login', 3, 'login', 'login', '/auth/login?next=/home/', 1, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO menu_1 (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (18, 'logout', 'login', 3, 'logout', 'logout', '/auth/logout?next=/', 1, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO menu_1 (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (19, 'news', 'home', 3, 'NEWS', 'Notizie', '/news/', 1, 'ui-icon-document', 402221400, 'pub', NULL);
INSERT INTO menu_1 (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (20, 'registra', 'home', 3, 'Registra Video', 'Registra Video', '/registra/', 1, 'ui-icon-document', 402221400, 'pub', NULL);
INSERT INTO menu_1 (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (21, 'report', 'archivio', 3, 'report pdf', 'Report pdf', '/report/', 1, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO menu_1 (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (22, 'report', 'report', 2, 'REPORT', 'REPORT', '/report/', 1, 'ui-icon-document', 402221400, 'pub', NULL);
INSERT INTO menu_1 (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (23, 'rapporto', 'report', 3, 'RAPPORTO', 'Rapporto', '/report/?classe=Pdf.report(" ")', 1, 'ui-icon-document', 402220400, 'pub', NULL);
INSERT INTO menu_1 (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (24, 'qrcode', 'report', 3, 'QRCODE', 'QRCODE', '/selectqrcode/?classe=Pdf.report(" ")', 1, 'ui-icon-document', 402220400, 'pub', NULL);
INSERT INTO menu_1 (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (25, 'streaming', 'contatti', 3, 'View Streaming', 'View streaming', '/selectviewstreaming/', 1, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO menu_1 (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (26, 'serverstream', 'contatti', 3, 'ServerStreaming', 'Server streaming', '/selectstreaming/', 1, 'ui-icon-document', 402220600, 'priv', NULL);
INSERT INTO menu_1 (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (27, 'scattafoto', 'home', 3, 'Scatta Foto', 'Scatta Foto', '/scattafoto/', 1, 'ui-icon-document', 402221400, 'pub', NULL);
INSERT INTO menu_1 (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (28, 'registra2', 'home', 3, 'Registra 2 Video', 'Registra 2 Video', '/registra2/', 1, 'ui-icon-document', 402221400, 'pub', NULL);

-- Table: menu_config
CREATE TABLE IF NOT EXISTS "menu_config" (
	"ID" TINYINT NOT NULL  ,
	"codice" TINYINT NOT NULL  ,
	"radice" TINYINT NOT NULL  ,
	"livello" TINYINT NOT NULL  ,
	"titolo" TINYINT NOT NULL  ,
	"descrizione" TINYINT NOT NULL  ,
	"link" TINYINT NOT NULL  ,
	"attivo" TINYINT NOT NULL  ,
	"icon" TINYINT NOT NULL  ,
	"workplace" TINYINT NOT NULL  ,
	"param1" TINYINT NOT NULL
);

-- Table: menuweb
CREATE TABLE IF NOT EXISTS "menuweb" (
	"ID" INTEGER NOT NULL DEFAULT '0' ,
	"codice" VARCHAR(20) NOT NULL  ,
	"radice" VARCHAR(20) NOT NULL  ,
	"livello" TINYINT NOT NULL  ,
	"titolo" VARCHAR(64) NOT NULL  ,
	"descrizione" VARCHAR(128) NOT NULL  ,
	"link" VARCHAR(512) NOT NULL  ,
	"attivo" TINYINT NOT NULL  ,
	"icon" VARCHAR(255) NOT NULL  ,
	"workplace" INTEGER NOT NULL  ,
	"param1" VARCHAR(255) NULL  ,
	"ordine" INTEGER NULL
);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (10, 'archiviopost', 'archivio', 3, 'Archivio Post', 'archivio post', '/archive', 0, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (1, 'generale', 'generale', 1, 'MENU Generale', 'Menu Generale', '', 0, '/icone/home', 0, 'pub', NULL);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (3, 'turismo', 'turismo', 2, 'Turismo', 'Percorsi', '', 1, 'ui-icon-document', 402218601, 'pub', 2);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (14, 'manifesta', 'generale', 2, 'manifestazioni', 'manifestazioni', '/manifestazioni', 0, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (5, 'territorio', 'territorio', 2, 'Territorio', 'Territorio', '', 1, 'ui-icon-document', 402221400, 'pub', NULL);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (6, 'home', 'home', 2, 'Home', 'home', '', 0, 'ui-icon-document', 402221400, 'pub', NULL);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (9, 'sanpiero', 'territorio', 3, 'San Piero a Sieve', 'San Piero a Sieve', '/sanpiero', 1, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (13, 'conferenza', 'contatti', 3, 'conferenza', 'Multi Conferenza', '/conferenza/', 1, 'ui-icon-document', 402220600, 'priv', NULL);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (8, 'percorsi', 'turismo', 3, 'Percorsi Trekking ', 'Percorsi', '/percorsi', 1, 'ui-icon-document', 402218601, 'priv', 2);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (12, 'mugello', 'territorio', 3, 'Prestige', 'Prestige', '/mugello', 1, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (11, 'contatti', 'contattist', 3, 'Contatti e numeri utili', 'contatti e numeri utili', '/contatti', 1, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (15, 'contattist', 'contatti', 2, 'Contatti e Stampa', 'Contatti e Stampa', '', 0, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (16, 'arrivare', 'arrivare', 2, 'Come Arrivare', 'Come Arrivare', '/arrivare', 1, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (17, 'blog', 'home', 3, 'BLOG', 'Blog', '/blog?pag=blog', 1, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (18, 'logout', 'logout', 3, 'logout', 'logout', 'qApp.quit', 1, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (19, 'anelli', 'turismo', 3, 'Gli Anelli dell''Infinito', 'gli anelli dell''infinito', '/infinito', 1, 'ui-icon-document', 402221400, 'pub', NULL);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (20, 'monumenti', 'turismo', 3, 'Monumenti', 'Monumenti', '/monumenti', 1, 'ui-icon-document', 402221400, 'pub', NULL);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (21, 'gastronomia', 'turismo', 3, 'Gastronomia', 'Gastronomia', '/gastronomia', 1, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (22, 'report', 'report', 2, 'REPORT', 'REPORT', '/Report', 1, 'ui-icon-document', 402221400, 'pub', NULL);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (23, 'chisiamo', 'chisiamo', 2, 'Chi Siamo', 'Chi Siamo', '/chisiamo', 1, 'ui-icon-document', 402220400, 'pub', NULL);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (24, 'chisiamo', 'chisiamo', 3, 'Chi Siamo', 'Chi Siamo', '/chisiamo', 1, 'ui-icon-document', 402220400, 'pub', NULL);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (25, 'streaming', 'contatti', 3, 'View Streaming', 'View streaming', '/selectviewstreaming/', 1, 'ui-icon-document', 402220600, 'pub', NULL);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (26, 'serverstream', 'contatti', 3, 'ServerStreaming', 'Server streaming', '/selectstreaming/', 1, 'ui-icon-document', 402220600, 'priv', NULL);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (27, 'mangiare', 'turismo', 3, 'Dove Mangiare', 'Dove Mangiare', '/mangiare', 1, 'ui-icon-document', 402221400, 'pub', NULL);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (28, 'dormire', 'turismo', 3, 'Dove Dormire', 'Dove Dormire', '/dormire', 1, 'ui-icon-document', 402221400, 'pub', NULL);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (29, 'login', 'home', 3, 'Login', 'Login', '/login', 1, 'ui-icon-document', 402221400, 'pub', NULL);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (30, 'logout', 'home', 3, 'logout', 'logout', 'logout', 1, 'ui-icon-document', 402221400, 'pub', NULL);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (31, 'admin', 'admin', 2, 'Amministrazione', 'Amministrazione', 'admin', 1, 'ui-icon-document', 402221400, 'priv', NULL);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (32, 'insmanif', 'admin', 3, 'Inserisce Manifestazione', 'Inserisce Manifestazione', '/ins_manifestazioni', 1, 'ui-icon-document', 402221400, 'priv', NULL);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (33, 'insnews', 'admin', 3, 'Inserisce News', 'Inserisce News', '/ins_news', 1, 'ui-icon-document', 402221400, 'priv', NULL);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (6, 'home', 'home', 2, 'Home', 'home', '/blog', 0, 'ui-icon-document', 402221400, 'pub', NULL);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (34, 'homeh', 'home', 3, 'HomE', 'home', '', 0, 'ui-icon-document', 402221400, 'pub', NULL);
INSERT INTO menuweb (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine) VALUES (35, 'cart', 'home', 3, 'CART', 'Cart', '/cart', 1, 'ui-icon-document', 402220600, 'pub', 2);

-- Table: news
CREATE TABLE IF NOT EXISTS "news" (
	"id" INTEGER NOT NULL  ,
	"author_id" INTEGER NOT NULL  ,
	"title" VARCHAR(512) NOT NULL  ,
	"markdown" TEXT NOT NULL  ,
	"html" TEXT NOT NULL  ,
	"published" DATETIME NOT NULL DEFAULT 'current_timestamp()' ,
	"updated" DATETIME NOT NULL DEFAULT 'current_timestamp()' ,
	"img" VARCHAR(100) NULL  ,
	"dir" VARCHAR(100) NULL  ,
	"html2" TEXT NOT NULL  ,
	"html3" TEXT NOT NULL  ,
	"img2" VARCHAR(512) NULL  ,
	"img3" VARCHAR(100) NULL  ,
	PRIMARY KEY ("id")
);
INSERT INTO news (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (0, 2, 'prova', 'Prova Prova Prova', 'Prova Prova Prova', 'current_timestamp()', 'current_timestamp()', 'apple-iphone-x-a1901-256gb-silver.jpeg', '/news/img/', 'html2', 'html3', 'img2', 'img3');
INSERT INTO news (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (1, 1, 'Dal 18 Giugno tornano i “Venerdì a Villa Adami”', 'Un ricco programma che accompagnerà sanpierini e visitatori da giugno a settembre, nel segno dell’arte, come occasione di ripartenza. E’ davvero ricco il programma di “Venerdì a Villa Adami”, l’iniziativa proposta dalla locale Pro Loco e dal “CCN de’ Medici”, che valorizzerà una delle aree più belle di San Piero a Sieve. Il tutto per dimostrare la propria voglia di non fermarsi, di andare avanti, ma tutto nel rispetto delle norme e senza prendere rischi per spettatori e partecipanti. Una manifestazione che ha avuto il patrocinio del Comune di Scarperia e San Piero ', 'Un ricco programma che accompagnerà sanpierini e visitatori da giugno a settembre, nel segno dell’arte, come occasione di ripartenza. E’ davvero ricco il programma di “Venerdì a Villa Adami”, l’iniziativa proposta dalla locale Pro Loco e dal “CCN de’ Medici”, che valorizzerà una delle aree più belle di San Piero a Sieve. Il tutto per dimostrare la propria voglia di non fermarsi, di andare avanti, ma tutto nel rispetto delle norme e senza prendere rischi per spettatori e partecipanti. Una manifestazione che ha avuto il patrocinio del Comune di Scarperia e San Piero

Il primo appuntamento previsto è per venerdì 18 Giugno, con “Francesco Nuti. Andata, caduta e ritorno”, scritto e diretto da Valerio Groppa, con Nicola Pecci, le musiche di Giovanni e Francesco Nuti, tratto dall''autobiografia di Francesco Nuti "Sono un bravo ragazzo". Sabato 19 Giugno (alle 17) sarà la volta di “Dante e il Mugello”: Carlo Forasassi conversa con il Dott. Fabrizio Boni, a 700 anni dalla morte di Dante, ad ingresso gratuito. Venerdì 25 Giugno musica protagonista con “Jazz standard band”, con un trio di eccezione composto da Franco Baggiani alla tromba, Alessandro Bruno alla chitarra e Alessandro Geri al contrabbasso. Il giorno seguente sarà la volta del concerto dei “Polimeri Variabili”, con musica prevalentemente funky. Luglio si aprirà il 2 con “I Geneticamente mortificati” in “Restauration. Siamo tornati di moda” monologo imperfetto sull''attualità, scritto da Marco Giavatto e diretto da Fulvio Ferrati. Si proseguirà venerdì 9 Luglio

con “Piccoli crimini coniugali” di Eric Emmanuel Schmitt con Fabrizio Pinzauti e Rosanna Reccia ed il 16 con “La Divina Commedia in 100 luoghi - Inferno Canto XV” performance di Matteo Fratarcangeli. Venerdì 23 Luglio “Musica 60-70-80-90 con Altri Tempi” ad ingresso gratuito ed a chiuder e il mese, il 30, “Dante. Viaggio dentro e intorno alla Divina Commedia” con Gianluigi Tosto. Due gli appuntamenti in agosto: il 6 con “Itaglia” con Matteo Procuranti e Silvia Cuncu per la regia di Virginia Martini ed il 27 “Alla radio con Čechov si può anche ridere” da un''idea di Pietro Venè, con I Pinguini e la regia di Pietro Venè e Cristina Bacci. Venerdì 3 Settembre “New Orleans history” quintetto di fiati e percussioni ed a chiudere, ad ingresso gratuito, venerdì 10 Settembre “Musica dal vivo” con Ivo e Sofia.

“Si tratta di un programma che spazia tra arti e generi molto diversi, spiega soddisfatto il presidente della Pro Loco di San Piero, Sauro Bani, che abbiamo cercato di mettere insieme per accontentare gusti e persone differenti. C’era bisogno di qualcosa che, in sicurezza, ridesse vita alle arti e possibilità di aggregarsi. L’esperienza molto positiva in Villa Adami dello scorso anno ci ha spinto a far crescere questa idea ed a riproporla, diversificando le possibilità di quello che è uno dei luoghi di ritrovo più belli e caratteristici del nostro paese.”

L’accesso, regolamentato, agli spettacoli, avrà un costo di 8 euro a serata (4 euro il ridotto) tranne alcuni appuntamenti ove sia indicato specificatamente l’ingresso gratuito. Le serate, che saranno singolarmente annullate in caso di maltempo, hanno inizio alle 21, prevedono una prenotazione obbligatoria per mail a   prolocosanpieroasieve@gmail.com o attraverso whatsapp al 3382562225 o al 3311090673.', '2021-09-08 00:00:00', '2021-08-07 17:11:28', 'prestige1.jpg', '/news/img', 'Un ricco programma che accompagnerà sanpierini e visitatori da giugno a settembre, nel segno dell’arte, come occasione di ripartenza...
', 'Un ricco programma che accompagnerà sanpierini e visitatori da giugno a settembre, nel segno dell’arte, come occasione di ripartenza. E’ davvero ricco il programma di “Venerdì a Villa Adami”, l’iniziativa proposta dalla locale Pro Loco e dal “CCN de’ Medici”, che valorizzerà una delle aree più belle di San Piero a Sieve. Il tutto per dimostrare la propria voglia di non fermarsi, di andare avanti, ma tutto nel rispetto delle norme e senza prendere rischi per spettatori e partecipanti. Una manifestazione che ha avuto il patrocinio del Comune di Scarperia e San Piero ', 'Villa Adami Venerdi 2021.jpg', 'Villa Adami Venerdi 2021.jpg');
INSERT INTO news (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (2, 1, 'Simposio Antonio Berti', 'Si è aperto il bando per il 17° Simposio dedicato allo scultore Antonio Berti', 'Dal 14 al 25 settembre San Piero a Sieve ospiterà la diciassettesima edizione del Simposio di Scultura "Premio Antonio Berti", evento biennale dedicato all''arte che vede coinvolti gli studenti delle più importanti Accademie di Belle Arti italiane ed europee che si sfideranno a “colpi di scalpello” nel parco dedicato proprio all’artista sanpierino (nell’anno in cui la cittadina sarà ufficialmente “intitolata” con la posa di cartelli all’ingresso del centro abitato con su scritto “paese natale di Antonio Berti”).

La manifestazione, promossa dalla Proloco di San Piero a Sieve, con il Patrocinio del Comune di Scarperia e San Piero e della Regione Toscana e con la collaborazione dell''Accademia di Belle Arti di Firenze e di quella di Carrara, il Comune di Firenzuola, l''Unione Montana dei Comuni del Mugello e la Fondazione per la Scultura Antonio Berti, vede il coinvolgimento anche dell’Ente Cassa di Risparmio di Firenze che ha finanziato il progetto di simposio e del percorso ad esso correlato. Il Simposio di Scultura nasce dalla volontà di rendere omaggio alla figura del grande scultore e conterraneo Antonio Berti, profondamente legato alla sua terra. ', '2021-09-08 00:00:00', '2021-08-07 17:11:28', 'prestide2.jpg', '/news/img', 'Per dieci giorni i sei studenti realizzano opere scultoree contemporanee, a tema libero, utilizzando blocchi di pietra serena, grazie al Copser, provenienti dalle cave di Firenzuola (che ospiteranno, in uno dei giorni del Simposio, una visita guidata degli artisti, alcuni scatti dei quali saranno poi presentati in occasione della premiazione), lavorando presso il laboratorio all''aperto allestito presso il Parco Antonio Berti, dove sarà possibile vederli all''opera per tutta la durata della manifestazione. Per partecipare è appena aperto il bando, con scadenza sabato 26 giugno. Gli artisti ammessi, dopo una valutazione di una apposita commissione artistica che vede anche professori delle Accademie, guidati in particolare dal professor Di Tommaso dell''Accademia delle Belle Arti di Firenze, saranno ospitati per l’intera durata della manifestazione dal Camping Village Mugello Verde. L''atmosfera è unica: una nube di polvere bianca, dovuta alla lavorazione della pietra con mola e scalpelli, avvolge gli scultori concentrati nel tirar fuori in poco tempo un''opera di grande impatto visivo ed emotivo. Anche molto spettacolare, tanto è vero che, insieme ad Unione dei Comuni, è stato intrapreso un percorso di coinvolgimento dei plessi scolastici delle scuole medie inferiori e superiori del territorio, con apposite visite guidate. L’accesso per il pubblico è ovviamente libero.

simposio5', 'La novità di quest’anno sarà la creazione di una categoria speciale, che quest’anno sarà dedicata ai 700 anni dalla morte di Dante, a cui un artista, invitato fra chi ha partecipato in questi anni (e sono oltre 100), dovrà ispirarsi per scolpire un’opera più grande delle altre, fuori concorso, con 15 giorni a disposizione.

Molte delle sculture realizzate nelle precedenti edizioni hanno trovato collocazione nel tessuto urbano di San Piero a Sieve, valorizzandone parchi, piazze e giardini. E questo ha dato vita all’idea del percorso che finalmente dovrebbe trovare un compimento. La Pro Loco, insieme con il Centro Commerciale de'' Medici, ha creato un progetto che intende valorizzare l''abitato di San Piero a Sieve, già ricco di beni architettonici e storici di rilievo, attraverso la collocazione delle opere realizzate in questi anni. Lo sviluppo di tale percorso, che unirà in particolare la Stazione di San Piero con lo stesso Parco Berti, prevede la riqualificazione delle aree interessate e la collocazione di cartellonistica che, oltre ad indicare il percorso, guidi il visitatore alla scoperta degli angoli più suggestivi del paese: la Pieve millenaria dedicata a San Pietro, la Fortezza di San Martino, Villa Adami, Villa Schifanoia, la Torre medicea di Scoronconcolo, guidati in un percorso ideale che ha le sculture di pietra come filo conduttore. Un progetto ambizioso, ma già ben avviato, nel quale la Pro Loco crede molto.

“Quest’anno, spiega il presidente della Pro Loco sanpierina, Sauro Bani, si fa un ulteriore salto di qualità dando impulso al Simposio, e partendo con il percorso, attraverso il tessuto urbano sanpierino, e con questa nuova sezione, con un artista affermato e che già a San Piero ha dimostrato il suo valore, volgiamo rafforzare il legame di San Piero con la scultura e l’arte, cosa che cerchiamo di far emergere da tutte le nostre iniziative.”', 'simposio5.jpg', 'simposio 4.jpg');
INSERT INTO news (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (3, 2, 'simposio Antonio Berti 2', 'a', '2	1	Si è aperto il bando per il 17° Simposio dedicato allo scultore Antonio Berti	Si è aperto il bando per il 17° Simposio dedicato allo scultore Antonio Berti	Si è aperto il bando per il 17° Simposio dedicato allo scultore Antonio Berti	"Dal 14 al 25 settembre San Piero a Sieve ospiterà la diciassettesima edizione del Simposio di Scultura "Premio Antonio Berti", evento biennale dedicato all''arte che vede coinvolti gli studenti delle più importanti Accademie di Belle Arti italiane ed europee che si sfideranno a “colpi di scalpello” nel parco dedicato proprio all’artista sanpierino (nell’anno in cui la cittadina sarà ufficialmente “intitolata” con la posa di cartelli all’ingresso del centro abitato con su scritto “paese natale di Antonio Berti”).

La manifestazione, promossa dalla Proloco di San Piero a Sieve, con il Patrocinio del Comune di Scarperia e San Piero e della Regione Toscana e con la collaborazione dell''Accademia di Belle Arti di Firenze e di quella di Carrara, il Comune di Firenzuola, l''Unione Montana dei Comuni del Mugello e la Fondazione per la Scultura Antonio Berti, vede il coinvolgimento anche dell’Ente Cassa di Risparmio di Firenze che ha finanziato il progetto di simposio e del percorso ad esso correlato. Il Simposio di Scultura nasce dalla volontà di rendere omaggio alla figura del grande scultore e conterraneo Antonio Berti, profondamente legato alla sua terra. "	2021-06-08 00:00:00	2021-06-10 22:25:38	simposio 4.jpg	/news/img	"Per dieci giorni i sei studenti realizzano opere scultoree contemporanee, a tema libero, utilizzando blocchi di pietra serena, grazie al Copser, provenienti dalle cave di Firenzuola (che ospiteranno, in uno dei giorni del Simposio, una visita guidata degli artisti, alcuni scatti dei quali saranno poi presentati in occasione della premiazione), lavorando presso il laboratorio all''aperto allestito presso il Parco Antonio Berti, dove sarà possibile vederli all''opera per tutta la durata della manifestazione. Per partecipare è appena aperto il bando, con scadenza sabato 26 giugno. Gli artisti ammessi, dopo una valutazione di una apposita commissione artistica che vede anche professori delle Accademie, guidati in particolare dal professor Di Tommaso dell''Accademia delle Belle Arti di Firenze, saranno ospitati per l’intera durata della manifestazione dal Camping Village Mugello Verde. L''atmosfera è unica: una nube di polvere bianca, dovuta alla lavorazione della pietra con mola e scalpelli, avvolge gli scultori concentrati nel tirar fuori in poco tempo un''opera di grande impatto visivo ed emotivo. Anche molto spettacolare, tanto è vero che, insieme ad Unione dei Comuni, è stato intrapreso un percorso di coinvolgimento dei plessi scolastici delle scuole medie inferiori e superiori del territorio, con apposite visite guidate. L’accesso per il pubblico è ovviamente libero.

simposio5"	"La novità di quest’anno sarà la creazione di una categoria speciale, che quest’anno sarà dedicata ai 700 anni dalla morte di Dante, a cui un artista, invitato fra chi ha partecipato in questi anni (e sono oltre 100), dovrà ispirarsi per scolpire un’opera più grande delle altre, fuori concorso, con 15 giorni a disposizione.

Molte delle sculture realizzate nelle precedenti edizioni hanno trovato collocazione nel tessuto urbano di San Piero a Sieve, valorizzandone parchi, piazze e giardini. E questo ha dato vita all’idea del percorso che finalmente dovrebbe trovare un compimento. La Pro Loco, insieme con il Centro Commerciale de'' Medici, ha creato un progetto che intende valorizzare l''abitato di San Piero a Sieve, già ricco di beni architettonici e storici di rilievo, attraverso la collocazione delle opere realizzate in questi anni. Lo sviluppo di tale percorso, che unirà in particolare la Stazione di San Piero con lo stesso Parco Berti, prevede la riqualificazione delle aree interessate e la collocazione di cartellonistica che, oltre ad indicare il percorso, guidi il visitatore alla scoperta degli angoli più suggestivi del paese: la Pieve millenaria dedicata a San Pietro, la Fortezza di San Martino, Villa Adami, Villa Schifanoia, la Torre medicea di Scoronconcolo, guidati in un percorso ideale che ha le sculture di pietra come filo conduttore. Un progetto ambizioso, ma già ben avviato, nel quale la Pro Loco crede molto.

“Quest’anno, spiega il presidente della Pro Loco sanpierina, Sauro Bani, si fa un ulteriore salto di qualità dando impulso al Simposio, e partendo con il percorso, attraverso il tessuto urbano sanpierino, e con questa nuova sezione, con un artista affermato e che già a San Piero ha dimostrato il suo valore, volgiamo rafforzare il legame di San Piero con la scultura e l’arte, cosa che cerchiamo di far emergere da tutte le nostre iniziative.”"	simposio5.jpg	simposio 4.jpg', '2021-09-08 00:00:00', '2021-08-07 17:11:28', 'prestige3.jpg', '/news/img', 'Si è aperto il bando per il 17° Simposio dedicato allo scultore Antonio Berti	Si è aperto il bando per il 17° Simposio dedicato allo scultore Antonio Berti	Si è aperto il bando per il 17° Simposio dedicato allo scultore Antonio Berti	"Dal 14 al 25 settembre San Piero a Sieve ospiterà la diciassettesima edizione del Simposio di Scultura "Premio Antonio Berti", evento biennale dedicato all''arte che vede coinvolti gli studenti delle più importanti Accademie di Belle Arti italiane ed europee che si sfideranno a “colpi di scalpello” nel parco dedicato proprio all’artista sanpierino (nell’anno in cui la cittadina sarà ufficialmente “intitolata” con la posa di cartelli all’ingresso del centro abitato con su scritto “paese natale di Antonio Berti”).

La manifestazione, promossa dalla Proloco di San Piero a Sieve,', '2	1	Si è aperto il bando per il 17° Simposio dedicato allo scultore Antonio Berti	Si è aperto il bando per il 17° Simposio dedicato allo scultore Antonio Berti	Si è aperto il bando per il 17° Simposio dedicato allo scultore Antonio Berti	"Dal 14 al 25 settembre San Piero a Sieve ospiterà la diciassettesima edizione del Simposio di Scultura "Premio Antonio Berti", evento biennale dedicato all''arte che vede coinvolti gli studenti delle più importanti Accademie di Belle Arti italiane ed europee che si sfideranno a “colpi di scalpello” nel parco dedicato proprio all’artista sanpierino (nell’anno in cui la cittadina sarà ufficialmente “intitolata” con la posa di cartelli all’ingresso del centro abitato con su scritto “paese natale di Antonio Berti”).

La manifestazione, promossa dalla Proloco di San Piero a Sieve, con il Patrocinio del Comune di Scarperia e San Piero e della Regione Toscana e con la collaborazione dell''Accademia di Belle Arti di Firenze e di quella di Carrara, il Comune di Firenzuola, l''Unione Montana dei Comuni del Mugello e la Fondazione per la Scultura Antonio Berti, vede il coinvolgimento anche dell’Ente Cassa di Risparmio di Firenze che ha finanziato il progetto di simposio e del percorso ad esso correlato. Il Simposio di Scultura nasce dalla volontà di rendere omaggio alla figura del grande scultore e conterraneo Antonio Berti, profondamente legato alla sua terra. "	2021-06-08 00:00:00	2021-06-10 22:25:38	simposio 4.jpg	/news/img	"Per dieci giorni i sei studenti realizzano opere scultoree contemporanee, a tema libero, utilizzando blocchi di pietra serena, grazie al Copser, provenienti dalle cave di Firenzuola (che ospiteranno, in uno dei giorni del Simposio, una visita guidata degli artisti, alcuni scatti dei quali saranno poi presentati in occasione della premiazione), lavorando presso il laboratorio all''aperto allestito presso il Parco Antonio Berti, dove sarà possibile vederli all''opera per tutta la durata della manifestazione. Per partecipare è appena aperto il bando, con scadenza sabato 26 giugno. Gli artisti ammessi, dopo una valutazione di una apposita commissione artistica che vede anche professori delle Accademie, guidati in particolare dal professor Di Tommaso dell''Accademia delle Belle Arti di Firenze, saranno ospitati per l’intera durata della manifestazione dal Camping Village Mugello Verde. L''atmosfera è unica: una nube di polvere bianca, dovuta alla lavorazione della pietra con mola e scalpelli, avvolge gli scultori concentrati nel tirar fuori in poco tempo un''opera di grande impatto visivo ed emotivo. Anche molto spettacolare, tanto è vero che, insieme ad Unione dei Comuni, è stato intrapreso un percorso di coinvolgimento dei plessi scolastici delle scuole medie inferiori e superiori del territorio, con apposite visite guidate. L’accesso per il pubblico è ovviamente libero.

simposio5"	"La novità di quest’anno sarà la creazione di una categoria speciale, che quest’anno sarà dedicata ai 700 anni dalla morte di Dante, a cui un artista, invitato fra chi ha partecipato in questi anni (e sono oltre 100), dovrà ispirarsi per scolpire un’opera più grande delle altre, fuori concorso, con 15 giorni a disposizione.

Molte delle sculture realizzate nelle precedenti edizioni hanno trovato collocazione nel tessuto urbano di San Piero a Sieve, valorizzandone parchi, piazze e giardini. E questo ha dato vita all’idea del percorso che finalmente dovrebbe trovare un compimento. La Pro Loco, insieme con il Centro Commerciale de'' Medici, ha creato un progetto che intende valorizzare l''abitato di San Piero a Sieve, già ricco di beni architettonici e storici di rilievo, attraverso la collocazione delle opere realizzate in questi anni. Lo sviluppo di tale percorso, che unirà in particolare la Stazione di San Piero con lo stesso Parco Berti, prevede la riqualificazione delle aree interessate e la collocazione di cartellonistica che, oltre ad indicare il percorso, guidi il visitatore alla scoperta degli angoli più suggestivi del paese: la Pieve millenaria dedicata a San Pietro, la Fortezza di San Martino, Villa Adami, Villa Schifanoia, la Torre medicea di Scoronconcolo, guidati in un percorso ideale che ha le sculture di pietra come filo conduttore. Un progetto ambizioso, ma già ben avviato, nel quale la Pro Loco crede molto.

“Quest’anno, spiega il presidente della Pro Loco sanpierina, Sauro Bani, si fa un ulteriore salto di qualità dando impulso al Simposio, e partendo con il percorso, attraverso il tessuto urbano sanpierino, e con questa nuova sezione, con un artista affermato e che già a San Piero ha dimostrato il suo valore, volgiamo rafforzare il legame di San Piero con la scultura e l’arte, cosa che cerchiamo di far emergere da tutte le nostre iniziative.”"	simposio5.jpg	simposio 4.jpg', 'simposio5.jpg', 'simposio5.jpg');
INSERT INTO news (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (4, 1, 'Tesseramento o 5 per mille. Come aiutare la Pro Loco di San Piero', 'b', 'In un momento di grande difficoltà per il mondo del volontariato e dell’associazionismo, la Pro Loco di San Piero non si è mai fermata. Aiutando istituzioni e singoli cittadini anche nel momento della pandemia, con consegna delle spese e iniziative mirate, e programmando quelle che saranno le iniziative alla ripresa. Uno sforzo notevole, che ha partorito un calendario ricco di appuntamenti quando tali eventi saranno nuovamente realizzabili. Un impegno che richiede un numero importante di volontari, per i quali le porte sono sempre aperte. Ed anche di risorse, che sono necessarie per “mettere a terra” le tante idee che emergono. ', '2021-09-08 00:00:00', '2021-08-07 17:11:28', 'prestige4.jpg', '/news/img', 'Per questo la Pro Loco di San Piero ha bisogno dell’aiuto di tutti, attraverso il tesseramento annuale, ancora aperto, e magari anche con la donazione del 5 per mille.

Il tesseramento si potrà effettuare in sede, in via Cipriani 8, tutte le mattine, dalle 10 alle 12, martedì escluso, o, nello stesso orario, sabato e domenica prossimi, in un banchetto appositamente realizzato nei pressi dell’edicola di Via Provinciale.

Ricordiamo che la tessera UNPLI garantisce numerosi vantaggi.

Per quanto riguarda il 5 per mille sarà sufficiente indicare nell’apposita casella della dichiarazione dei redditi, il codice fiscale 05235460481.', 'Per questo la Pro Loco di San Piero ha bisogno dell’aiuto di tutti, attraverso il tesseramento annuale, ancora aperto, e magari anche con la donazione del 5 per mille.

Il tesseramento si potrà effettuare in sede, in via Cipriani 8, tutte le mattine, dalle 10 alle 12, martedì escluso, o, nello stesso orario, sabato e domenica prossimi, in un banchetto appositamente realizzato nei pressi dell’edicola di Via Provinciale.

Ricordiamo che la tessera UNPLI garantisce numerosi vantaggi.

Per quanto riguarda il 5 per mille sarà sufficiente indicare nell’apposita casella della dichiarazione dei redditi, il codice fiscale 05235460481.', 'ProlocoSPS_tesseramento_2021.jpg', 'ProlocoSPS_tesseramento_2021.jpg');
INSERT INTO news (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (5, 2, 'Prima News', 'markdown', 'Descrizione Prima News', '2022-04-07 21:00:26', '2022-04-07 21:00:26', 'HPIM1236.JPG', '/news/img', 'html2', 'html3', 'img2', 'img3');
INSERT INTO news (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (8, 2, 'news con img', 'markdown', 'descrizione news  img', '2022-04-09 00:14:41', '2022-04-09 00:14:41', 'HPIM1262.JPG', '/news/img/', 'html2', 'html3', 'img2', 'img3');
INSERT INTO news (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (9, 2, 'Adesso Funziona!', 'markdown', 'Adesso Funziona tutto abbastanza bene11', '2022-04-09 16:31:10', '2022-04-09 16:31:10', 'HPIM1234.JPG', '/news/img/', 'html2', 'html3', 'img2', 'img3');
INSERT INTO news (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (10, 2, 'oRA fUNZIONA mEGLIO', 'Si, adesso funziona decisamente neglio.', 'Si, adesso funziona decisamente neglio.', '2022-04-09 16:35:47', '2022-04-09 16:35:47', 'HPIM1258.JPG', '/news/img/', 'html2', 'html3', 'img2', 'img3');
INSERT INTO news (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (11, 2, 'Inserimento NEWS da carlozanieri.it', 'Descrizione Inserimento NEWS da carlozanieri.it', 'Descrizione Inserimento NEWS da carlozanieri.it', '2022-04-12 18:38:41', '2022-04-12 18:38:41', 'HPIM1280.JPG', '/news/img/', 'html2', 'html3', 'img2', 'img3');
INSERT INTO news (id, author_id, title, markdown, html, published, updated, img, dir, html2, html3, img2, img3) VALUES (12, 2, 'Nuova news da carlozanieri.it', 'descrizione uova news da carlozanieri.it', 'descrizione uova news da carlozanieri.it', '2022-04-19 00:49:06', '2022-04-19 00:49:06', '00010.jpg', '/news/img/', 'html2', 'html3', 'img2', 'img3');

-- Table: orders
CREATE TABLE IF NOT EXISTS "orders" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "email" varchar(50) NULL, "address" varchar(500) NULL, "mobile" varchar(20) NULL, "order_date" date NULL, "status" varchar(50) NULL, "customer_id" integer NULL REFERENCES "ecom_customer" ("id") DEFERRABLE INITIALLY DEFERRED, "product_id" integer NULL REFERENCES "ecom_product" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: primanota
CREATE TABLE IF NOT EXISTS "primanota" (
	"id" INTEGER NOT NULL  ,
	"data" DATE NULL  ,
	"descrizione" VARCHAR(100) NULL  ,
	"cassa_entrate" DECIMAL NULL  ,
	"cassa_uscite" DECIMAL NULL  ,
	"banca_entrate" DECIMAL NULL  ,
	"banca_uscite" DECIMAL NULL  ,
	PRIMARY KEY ("id")
);
INSERT INTO primanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (27, '2020-03-14', 'seconda prova', 10, 11, 12, 13);
INSERT INTO primanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (28, '2020-03-06', 'prova con %s', 10, 11, 12, 13);
INSERT INTO primanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (29, '2020-03-06', 'prova con %s', 10, 11, 13, 13);
INSERT INTO primanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (30, '2020-03-06', 'prova con %s', 10, 11, 13, 13);
INSERT INTO primanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (31, '2020-03-27', 'riga dopo pulizia codice', 22.01, 23.01, 24.01, 25.01);
INSERT INTO primanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (32, '2020-03-14', 'prova con placeholder 0.00', 10, 10, 10, 10);
INSERT INTO primanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (33, '2020-03-14', 'prova con placeholder 0.00', 10, 10, 10, 10);
INSERT INTO primanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (34, '2020-03-14', 'prova con placeholder 0.00', 10, 12, 12, 13);
INSERT INTO primanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (36, '2020-03-14', 'nuovo nuovo', 20, 20, 11, 23);
INSERT INTO primanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (37, '2020-03-14', 'nuovo nuovo', 20, 20, 11, 23);
INSERT INTO primanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (38, '2020-03-14', 'nuovo nuovo', 20, 20, 11, 23);
INSERT INTO primanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (39, '2020-03-14', 'nuovo nuovo nuovo', 20.11, 22.11, 11.11, 33.11);
INSERT INTO primanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (40, '2020-03-15', 'nuovo nuovo nuovo nuovo', 23.23, 33.33, 34.35, 55.56);
INSERT INTO primanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (41, '2020-03-14', 'prova decimali ok', 11.11, 22.22, 33.33, 44.44);
INSERT INTO primanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (42, '2020-03-13', 'Nuova riga', 45.56, 66.66, 78.78, 88.78);
INSERT INTO primanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (43, '2020-03-13', 'prova con entate uscite limitate a 13 ', 2770.99, 2222222.22, 3333333.22, 99999999.99);
INSERT INTO primanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (44, '2020-03-13', 'prova con entate uscite limitate a 13 ', 2770.99, 2222222.22, 3333333.22, 999999.99);
INSERT INTO primanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (46, '2020-08-06', 'da flask', 2222, 3333, 22222, 11111);
INSERT INTO primanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (47, '2020-09-16', 'prova nuova', 33333, 33333, 333333, 33333);

-- Table: primanota-ex
CREATE TABLE IF NOT EXISTS "primanota-ex" (
	"id" INTEGER NOT NULL  ,
	"data" DATE NULL  ,
	"descrizione" VARCHAR(100) NULL  ,
	"cassa_entrate" DECIMAL NULL  ,
	"cassa_uscite" DECIMAL NULL  ,
	"banca_entrate" DECIMAL NULL  ,
	"banca_uscite" DECIMAL NULL  ,
	PRIMARY KEY ("id")
);
INSERT INTO "primanota-ex" (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (1, '2020-03-03', 'Prima riga', 100, NULL, NULL, NULL);
INSERT INTO "primanota-ex" (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (2, '2020-03-03', 'Seconda riga', 140, NULL, NULL, NULL);
INSERT INTO "primanota-ex" (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (3, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "primanota-ex" (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (4, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "primanota-ex" (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (5, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "primanota-ex" (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (6, NULL, 'descrizione', NULL, NULL, NULL, NULL);
INSERT INTO "primanota-ex" (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (7, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "primanota-ex" (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (8, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "primanota-ex" (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (9, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "primanota-ex" (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (10, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO "primanota-ex" (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (11, NULL, 'j jj', NULL, NULL, NULL, NULL);
INSERT INTO "primanota-ex" (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (12, NULL, 'sembrerebbe la volta bona', NULL, NULL, NULL, NULL);
INSERT INTO "primanota-ex" (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (13, '2020-03-11', 'sembrerebbe la volta bona', NULL, NULL, NULL, NULL);
INSERT INTO "primanota-ex" (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (14, '2020-03-11', 'Prima immissione corretta.', NULL, NULL, NULL, NULL);
INSERT INTO "primanota-ex" (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (15, '2020-03-05', 'versamento ', 10, NULL, NULL, NULL);
INSERT INTO "primanota-ex" (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (16, '2020-03-13', 'secondo versamento', 15, NULL, NULL, NULL);
INSERT INTO "primanota-ex" (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (17, '2020-02-25', 'terzo versamento', NULL, NULL, NULL, NULL);
INSERT INTO "primanota-ex" (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (18, '2020-02-25', 'terzo versamento', NULL, NULL, NULL, NULL);
INSERT INTO "primanota-ex" (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (19, '2020-02-27', 'quarto versamento', NULL, NULL, NULL, NULL);

-- Table: product
CREATE TABLE IF NOT EXISTS "product" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(40) NOT NULL, "product_image" varchar(100) NULL, "price" integer unsigned NOT NULL CHECK ("price" >= 0), "description" varchar(40) NOT NULL);
INSERT INTO product (id, name, product_image, price, description) VALUES (1, 'Prestige1', 'prestige1.jpg', 140, 'Pipa serie prestige');
INSERT INTO product (id, name, product_image, price, description) VALUES (2, 'Prestige2', 'prestige2.jpg', 140, 'Pipa serie prestige olivo');
INSERT INTO product (id, name, product_image, price, description) VALUES (3, 'Prestige3', 'prestige3.jpg', 100, 'Pipa serie prestige arancio');
INSERT INTO product (id, name, product_image, price, description) VALUES (4, 'Prestige4', 'prestige4.jpg', 100, 'Pipa serie prestige quarta');
INSERT INTO product (id, name, product_image, price, description) VALUES (5, 'Prestige5', 'prestige5.jpg', 100, 'Pipa serie prestige quinta');

-- Table: qmenu
CREATE TABLE IF NOT EXISTS "qmenu" (
	"ID" INTEGER NOT NULL  ,
	"codice" VARCHAR(12) NOT NULL  ,
	"radice" VARCHAR(12) NOT NULL  ,
	"livello" TINYINT NOT NULL  ,
	"titolo" VARCHAR(64) NOT NULL  ,
	"descrizione" VARCHAR(128) NOT NULL  ,
	"link" VARCHAR(256) NULL  ,
	"attivo" TINYINT NOT NULL  ,
	"icon" VARCHAR(255) NOT NULL  ,
	"workplace" INTEGER NOT NULL  ,
	"param1" VARCHAR(255) NULL  ,
	"ordine" INTEGER NULL  ,
	"INSERT INTO carlozanieri.menu (codice" VARCHAR(1024) NULL  ,
	"ordine) VALUES" VARCHAR(1024) NULL  ,
	PRIMARY KEY ("ID", "titolo")
);
INSERT INTO qmenu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, "INSERT INTO carlozanieri.menu (codice", "ordine) VALUES") VALUES (10, 'archiviopost', 'archivio', 3, 'Archivio Post', 'archivio post', 'kate', 0, 'ui-icon-document', 402220600, 'pub', NULL, NULL, NULL);
INSERT INTO qmenu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, "INSERT INTO carlozanieri.menu (codice", "ordine) VALUES") VALUES (1, 'generale', 'generale', 1, 'MENU Generale', 'Menu Generale', '', 0, '/icone/home', 0, 'pub', NULL, NULL, NULL);
INSERT INTO qmenu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, "INSERT INTO carlozanieri.menu (codice", "ordine) VALUES") VALUES (3, 'Exit', 'menu', 2, 'Exit', 'Uscita', '', 1, 'ui-icon-document', 402218601, 'log', 2, NULL, NULL);
INSERT INTO qmenu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, "INSERT INTO carlozanieri.menu (codice", "ordine) VALUES") VALUES (5, 'news', 'newsletter', 2, 'Inserisci News', 'Inserisci News', 'qApp.quit                                                                                                                       ', 1, 'ui-icon-document', 402221400, 'pub', NULL, NULL, NULL);
INSERT INTO qmenu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, "INSERT INTO carlozanieri.menu (codice", "ordine) VALUES") VALUES (6, 'home', 'home', 2, 'HOME', 'home', 'qApp.quit                                                                                                                       ', 0, 'ui-icon-document', 402221400, 'pub', NULL, NULL, NULL);
INSERT INTO qmenu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, "INSERT INTO carlozanieri.menu (codice", "ordine) VALUES") VALUES (9, 'newpost', 'archivio', 3, 'Nuovo Post', 'Nuovo Post', 'kate', 1, 'ui-icon-document', 402220600, 'priv', NULL, NULL, NULL);
INSERT INTO qmenu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, "INSERT INTO carlozanieri.menu (codice", "ordine) VALUES") VALUES (13, 'conferenza', 'contatti', 3, 'conferenza', 'Multi Conferenza', 'kate', 1, 'ui-icon-document', 402220600, 'priv', NULL, NULL, NULL);
INSERT INTO qmenu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, "INSERT INTO carlozanieri.menu (codice", "ordine) VALUES") VALUES (8, 'meeting', 'contatti', 3, 'Meeting', 'Collegamento Meeting', 'kate', 1, 'ui-icon-document', 402218601, 'priv', 2, NULL, NULL);
INSERT INTO qmenu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, "INSERT INTO carlozanieri.menu (codice", "ordine) VALUES") VALUES (12, 'centralino', 'contatti', 3, 'Centralino', 'Centralino', 'kate', 1, 'ui-icon-document', 402220600, 'pub', NULL, NULL, NULL);
INSERT INTO qmenu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, "INSERT INTO carlozanieri.menu (codice", "ordine) VALUES") VALUES (11, 'upload', 'archivio', 3, 'upload file', 'upload file', 'kate', 1, 'ui-icon-document', 402220600, 'pub', NULL, NULL, NULL);
INSERT INTO qmenu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, "INSERT INTO carlozanieri.menu (codice", "ordine) VALUES") VALUES (15, 'logout', 'logout', 2, 'logout', 'logout', '', 0, 'ui-icon-document', 402220600, 'pub', NULL, NULL, NULL);
INSERT INTO qmenu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, "INSERT INTO carlozanieri.menu (codice", "ordine) VALUES") VALUES (16, 'login', 'generale', 2, 'login', 'login', '', 1, 'ui-icon-document', 402220600, 'pub', NULL, NULL, NULL);
INSERT INTO qmenu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, "INSERT INTO carlozanieri.menu (codice", "ordine) VALUES") VALUES (17, 'login', 'login', 3, 'login', 'login', 'pamac-manager', 1, 'ui-icon-document', 402220600, 'pub', NULL, NULL, NULL);
INSERT INTO qmenu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, "INSERT INTO carlozanieri.menu (codice", "ordine) VALUES") VALUES (18, 'logout', 'login', 3, 'logout', 'logout', 'kate', 1, 'ui-icon-document', 402220600, 'pub', NULL, NULL, NULL);
INSERT INTO qmenu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, "INSERT INTO carlozanieri.menu (codice", "ordine) VALUES") VALUES (19, 'news', 'home', 3, 'NEWS', 'Notizie', 'kate', 1, 'ui-icon-document', 402221400, 'pub', NULL, NULL, NULL);
INSERT INTO qmenu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, "INSERT INTO carlozanieri.menu (codice", "ordine) VALUES") VALUES (20, 'registra', 'home', 3, 'Registra Video', 'Registra Video', 'kate', 1, 'ui-icon-document', 402221400, 'pub', NULL, NULL, NULL);
INSERT INTO qmenu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, "INSERT INTO carlozanieri.menu (codice", "ordine) VALUES") VALUES (21, 'report', 'archivio', 3, 'report pdf', 'Report pdf', 'kate', 1, 'ui-icon-document', 402220600, 'pub', NULL, NULL, NULL);
INSERT INTO qmenu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, "INSERT INTO carlozanieri.menu (codice", "ordine) VALUES") VALUES (22, 'report', 'report', 2, 'REPORT', 'REPORT', 'kate', 1, 'ui-icon-document', 402221400, 'pub', NULL, NULL, NULL);
INSERT INTO qmenu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, "INSERT INTO carlozanieri.menu (codice", "ordine) VALUES") VALUES (23, 'rapporto', 'report', 2, 'Stampa Prima Nota', 'Stampa Prima Nota', '', 1, 'ui-icon-document', 402220400, 'pub', NULL, NULL, NULL);
INSERT INTO qmenu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, "INSERT INTO carlozanieri.menu (codice", "ordine) VALUES") VALUES (24, 'qrcode', 'report', 3, 'QRCODE', 'QRCODE', 'kate', 1, 'ui-icon-document', 402220400, 'pub', NULL, NULL, NULL);
INSERT INTO qmenu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, "INSERT INTO carlozanieri.menu (codice", "ordine) VALUES") VALUES (25, 'streaming', 'contatti', 3, 'View Streaming', 'View streaming', 'kate', 1, 'ui-icon-document', 402220600, 'pub', NULL, NULL, NULL);
INSERT INTO qmenu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, "INSERT INTO carlozanieri.menu (codice", "ordine) VALUES") VALUES (26, 'serverstream', 'contatti', 3, 'ServerStreaming', 'Server streaming', 'kate', 1, 'ui-icon-document', 402220600, 'priv', NULL, NULL, NULL);
INSERT INTO qmenu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, "INSERT INTO carlozanieri.menu (codice", "ordine) VALUES") VALUES (27, 'scattafoto', 'home', 3, 'Scatta Foto', 'Scatta Foto', 'kate', 1, 'ui-icon-document', 402221400, 'pub', NULL, NULL, NULL);
INSERT INTO qmenu (ID, codice, radice, livello, titolo, descrizione, link, attivo, icon, workplace, param1, ordine, "INSERT INTO carlozanieri.menu (codice", "ordine) VALUES") VALUES (28, 'registra2', 'home', 3, 'Registra 2 Video', 'Registra 2 Video', 'kate', 1, 'ui-icon-document', 402221400, 'pub', NULL, NULL, NULL);

-- Table: secondanota
CREATE TABLE IF NOT EXISTS "secondanota" (
	"id" INTEGER NOT NULL DEFAULT '0' ,
	"data" DATE NULL  ,
	"descrizione" VARCHAR(100) NULL  ,
	"cassa_entrate" DECIMAL NULL  ,
	"cassa_uscite" DECIMAL NULL  ,
	"banca_entrate" DECIMAL NULL  ,
	"banca_uscite" DECIMAL NULL
);
INSERT INTO secondanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (27, '2020-03-14', 'seconda prova', 10, 11, 12, 13);
INSERT INTO secondanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (28, '2020-03-06', 'prova con %s', 10, 11, 12, 13);
INSERT INTO secondanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (29, '2020-03-06', 'prova con %s', 10, 11, 13, 13);
INSERT INTO secondanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (30, '2020-03-06', 'prova con %s', 10, 11, 13, 13);
INSERT INTO secondanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (31, '2020-03-27', 'riga dopo pulizia codice', 22.01, 23.01, 24.01, 25.01);
INSERT INTO secondanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (32, '2020-03-14', 'prova con placeholder 0.00', 10, 10, 10, 10);
INSERT INTO secondanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (33, '2020-03-14', 'prova con placeholder 0.00', 10, 10, 10, 10);
INSERT INTO secondanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (34, '2020-03-14', 'prova con placeholder 0.00', 10, 12, 12, 13);
INSERT INTO secondanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (36, '2020-03-14', 'nuovo nuovo', 20, 20, 11, 23);
INSERT INTO secondanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (37, '2020-03-14', 'nuovo nuovo', 20, 20, 11, 23);
INSERT INTO secondanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (38, '2020-03-14', 'nuovo nuovo', 20, 20, 11, 23);
INSERT INTO secondanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (39, '2020-03-14', 'nuovo nuovo nuovo', 20.11, 22.11, 11.11, 33.11);
INSERT INTO secondanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (40, '2020-03-15', 'nuovo nuovo nuovo nuovo', 23.23, 33.33, 34.35, 55.56);
INSERT INTO secondanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (41, '2020-03-14', 'prova decimali ok', 11.11, 22.22, 33.33, 44.44);
INSERT INTO secondanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (42, '2020-03-13', 'Nuova riga', 45.56, 66.66, 78.78, 88.78);
INSERT INTO secondanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (43, '2020-03-13', 'prova con entate uscite limitate a 13 ', 2770.99, 2222222.22, 3333333.22, 99999999.99);
INSERT INTO secondanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (44, '2020-03-13', 'prova con entate uscite limitate a 13 ', 2770.99, 2222222.22, 3333333.22, 999999.99);
INSERT INTO secondanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (46, '2020-08-06', 'da flask', 2222, 3333, 22222, 11111);
INSERT INTO secondanota (id, data, descrizione, cassa_entrate, cassa_uscite, banca_entrate, banca_uscite) VALUES (47, '2020-09-16', 'prova nuova', 33333, 33333, 333333, 33333);

-- Table: slider
CREATE TABLE IF NOT EXISTS "slider" (
	"ID" INTEGER NOT NULL DEFAULT '1' ,
	"codice" VARCHAR(24) NOT NULL  ,
	"img" VARCHAR(128) NULL  ,
	"titolo" VARCHAR(64) NULL  ,
	"caption" VARCHAR(512) NULL  ,
	"link" VARCHAR(128) NULL  ,
	PRIMARY KEY ("ID")
);
INSERT INTO slider (ID, codice, img, titolo, caption, link) VALUES (1, 'sanpiero', 'sapiero-storia-piazza.JPG', 'Piazza Colonna', 'Piazza Colonna è la Piazza centrale di San Piero a Sieve', NULL);
INSERT INTO slider (ID, codice, img, titolo, caption, link) VALUES (2, 'sanpiero', 'sapiero-storia-provinciale.JPG', 'Via Provinciale', 'La via Provinciale attraversa l''intero paese', NULL);
INSERT INTO slider (ID, codice, img, titolo, caption, link) VALUES (3, 'mugello', 'prestige1.jpg', 'Il Lago di Bilancino', 'Il lago di Bilancino situato nel comune di Barberino di Mugello', 'https://it.wikipedia.org/wiki/Lago_di_Bilancino');
INSERT INTO slider (ID, codice, img, titolo, caption, link) VALUES (4, 'mugello', 'prestige2.jpg', 'Monte Giovi', 'Il Monte Giovi (nome originario "Monte di Giove") è un complesso montuoso formato da territori della media montagna. Si trova nella provincia di Firenze ed è posto sui prolungamenti della dorsale appenninica di Monte Morello e Monte Senario, dorsale che separa il Mugello dal Valdarno e dalla bassa Val di Sieve. Rappresenta la parte più orientale di detta dorsale ed è delimitato a nord dall''alta', 'https://it.wikipedia.org/wiki/Monte_Giovi');
INSERT INTO slider (ID, codice, img, titolo, caption, link) VALUES (5, 'mugello', 'prestige3.jpg', 'Santuario di Montesenario', 'Il santuario di Monte Senario è uno dei più importanti santuari della Toscana e si trova sulla collina omonima a nord della città di Firenze, nel comune di Vaglia. Nel dicembre 1917 papa Benedetto XV lo elevò al rango di basilica minore.[1]
', 'https://it.wikipedia.org/wiki/Santuario_di_Montesenario');
INSERT INTO slider (ID, codice, img, titolo, caption, link) VALUES (6, 'index', 'trenodellabefana-92.jpg', 'Il Treno Della Befana', 'Ogni anno il treno a vapore  della Befana arriva puntuale alla Stazione Di San Piero', NULL);
INSERT INTO slider (ID, codice, img, titolo, caption, link) VALUES (7, 'index', 'estemporanea92.jpg', 'Estemporanea di Pittura', 'Estemporanea di Pittura', NULL);
INSERT INTO slider (ID, codice, img, titolo, caption, link) VALUES (8, 'index', 'mercanzie-in-piazza-92.jpg', 'Mercanzie in Piazza', 'Mercanzie in Piazza', 'https://it.wikipedia.org/wiki/Santuario_di_Montesenario');
INSERT INTO slider (ID, codice, img, titolo, caption, link) VALUES (9, 'index', 'ingorgosonoro-92.jpg', 'Ingorgo Sonoro', 'Maratona Musicale famosa in tutta Italia', NULL);
INSERT INTO slider (ID, codice, img, titolo, caption, link) VALUES (10, 'index', 'simposio-92.jpg', 'Simposio di Scultura', 'Simposio di Scultura', NULL);
INSERT INTO slider (ID, codice, img, titolo, caption, link) VALUES (11, 'sanpiero', 'stazione.jpg', 'La Stazione', 'La Stazione Ferroviaria di San Piero', NULL);
INSERT INTO slider (ID, codice, img, titolo, caption, link) VALUES (12, 'sanpiero', 'stazione2.jpg', 'Ai Binari', 'La Stazione vista dal treno.', NULL);
INSERT INTO slider (ID, codice, img, titolo, caption, link) VALUES (13, 'sanpiero', 'lapieve.jpg', 'La Pieve', 'La Pieve di San Piero a Sieve', NULL);

-- Table: submenu
CREATE TABLE IF NOT EXISTS "submenu" (
	"ID" TINYINT NOT NULL  ,
	"codice" TINYINT NOT NULL  ,
	"radice" TINYINT NOT NULL  ,
	"livello" TINYINT NOT NULL  ,
	"titolo" TINYINT NOT NULL  ,
	"descrizione" TINYINT NOT NULL  ,
	"link" TINYINT NOT NULL  ,
	"attivo" TINYINT NOT NULL  ,
	"icon" TINYINT NOT NULL  ,
	"workplace" TINYINT NOT NULL  ,
	"param1" TINYINT NOT NULL  ,
	"ordine" TINYINT NOT NULL
);

-- Table: submenu_config
CREATE TABLE IF NOT EXISTS "submenu_config" (
	"ID" TINYINT NOT NULL  ,
	"codice" TINYINT NOT NULL  ,
	"radice" TINYINT NOT NULL  ,
	"livello" TINYINT NOT NULL  ,
	"titolo" TINYINT NOT NULL  ,
	"descrizione" TINYINT NOT NULL  ,
	"link" TINYINT NOT NULL  ,
	"attivo" TINYINT NOT NULL  ,
	"icon" TINYINT NOT NULL  ,
	"workplace" TINYINT NOT NULL  ,
	"param1" TINYINT NOT NULL
);

-- Index: django_admin_log_content_type_id_c4bce8eb_fk_django_co
CREATE INDEX IF NOT EXISTS "django_admin_log_content_type_id_c4bce8eb_fk_django_co" ON "django_admin_log" ("content_type_id");

-- Index: django_admin_log_user_id_c564eba6_fk_auth_user_id
CREATE INDEX IF NOT EXISTS "django_admin_log_user_id_c564eba6_fk_auth_user_id" ON "django_admin_log" ("user_id");

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
