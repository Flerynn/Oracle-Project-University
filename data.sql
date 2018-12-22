-------------- MOVIE DATA

insert into Movies values(1,
	'Avengers: Infinity War',
	'Anthony Russo',
	149,
	TO_DATE('02-04-2018','dd-mm-yyyy'),
	8.5
);

insert into Movies values(2,
	'Fantastic Beasts: The Crimes',
	'David Yates',
	134,
	TO_DATE('16-Nov-2018','dd-MON-yyyy'),
	6.9
);

insert into Movies values(3,
	'Jurassic World: Fallen Kingdom',
	'J.A. Bayona',
	128,
	TO_DATE('22-01-2018','dd-mm-yyyy'),
	6.2
);

insert into Movies values(4,
	'Despicable Me 3',
	'Kyle Balda',
	89,
	TO_DATE('30-01-2017','dd-mm-yyyy'),
	6.3
);

insert into Movies values(5,
	'The Jungle Book',
	'Jon Favreau',
	106,
	TO_DATE('15-04-2016','dd-mm-yyyy'),
	6.3
);

-------------- Stars DATA

insert into Stars values(1,'Yosef','Darwish',
    TO_DATE('02-07-1997','dd-mm-yyyy'),1,'Y'
);

insert into Stars values(2,'Chris','Hemsworth',
    TO_DATE('11-09-1983','dd-mm-yyyy'),1,'Y'
);

insert into Stars values(3,'Johnny','Depp',
    TO_DATE('09-06-1963','dd-mm-yyyy'),2,'Y'
);

insert into Stars values(4,'Carmen','Ejogo',
    TO_DATE('22-10-1973','dd-mm-yyyy'),2,'N'
);

insert into Stars values(1,'Yosef','Darwish',
    TO_DATE('02-07-1997','dd-mm-yyyy'),3,'N'
);

insert into Stars values(5,'Chris','Pratt',
    TO_DATE('21-06-1979','dd-mm-yyyy'),3,'Y'
);

insert into Stars values(6,'Steve','Carell',
    TO_DATE('16-09-1962','dd-mm-yyyy'),4,'Y'
);

insert into Stars values(7,'Neel','Sethi',
    TO_DATE('22-11-2003','dd-mm-yyyy'),5,'Y'
);

-------------- GENRE DATA

insert into GENRE values(1,'Action');
insert into GENRE values(1,'Adventure');
insert into GENRE values(1,'Fantasy');
insert into GENRE values(2,'Adventure');
insert into GENRE values(2,'Family');
insert into GENRE values(3,'Adventure');
insert into GENRE values(3,'Sci-Fi');
insert into GENRE values(4,'Animation');
insert into GENRE values(4,'Action');
insert into GENRE values(5,'Drama');

-------------- EMP DATA

insert into Login_EMP values(1,'flerynn','123','N');
insert into CUSTOMER values(1,'Test','Test');
insert into Login_CUS values(1,'test','123','N',1);






	