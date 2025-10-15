CREATE TABLE IF NOT EXISTS pracownicy (
    id_pracownika SERIAL,
    imie VARCHAR(30),
    nazwisko VARCHAR(30),
    adres VARCHAR(50),
    telefon VARCHAR(10),
	CONSTRAINT pracownicy_pkey PRIMARY KEY (id_pracownika)
);

CREATE TABLE IF NOT EXISTS godziny (
    id_godziny SERIAL,
    data DATE,
    liczba_godzin INTEGER,
    id_pracownika INTEGER,
	CONSTRAINT godziny_pkey PRIMARY KEY (id_godziny),
    CONSTRAINT godziny_id_pracownika_fkey FOREIGN KEY (id_pracownika)
		REFERENCES pracownicy (id_pracownika) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS pensja (
    id_pensji SERIAL,
    stanowisko VARCHAR(40),
    kwota NUMERIC(8, 2),
	CONSTRAINT pensja_pkey PRIMARY KEY (id_pensji)
);

CREATE TABLE IF NOT EXISTS premia (
    id_premii SERIAL,
    rodzaj VARCHAR(20),
    kwota NUMERIC(8, 2),
	CONSTRAINT premia_pkey PRIMARY KEY (id_premii)
);

CREATE TABLE IF NOT EXISTS wynagrodzenie (
    id_wynagrodzenia SERIAL,
    data DATE,
    id_pracownika INTEGER,
    id_godziny INTEGER,
    id_pensji INTEGER,
    id_premii INTEGER,
	CONSTRAINT wynagrodzenie_pkey PRIMARY KEY (id_wynagrodzenia),
    CONSTRAINT wynagrodzenie_id_pracownika_fkey FOREIGN KEY (id_pracownika)
        REFERENCES pracownicy (id_pracownika) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE,
    CONSTRAINT wynagrodzenie_id_godziny_fkey FOREIGN KEY (id_godziny)
        REFERENCES godziny (id_godziny) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT wynagrodzenie_id_pensji_fkey FOREIGN KEY (id_pensji)
        REFERENCES pensja (id_pensji) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE,
    CONSTRAINT wynagrodzenie_id_premii_fkey FOREIGN KEY (id_premii)
        REFERENCES premia (id_premii) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
);
