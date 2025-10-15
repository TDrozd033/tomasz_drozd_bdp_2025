-- ======================================
-- 1. Tabela: pracownicy
-- ======================================
INSERT INTO pracownicy (imie, nazwisko, adres, telefon) VALUES
('Jan', 'Kowalski', 'Warszawa, ul. Polna 10', '500100200'),
('Anna', 'Nowak', 'Kraków, ul. Długa 15', '501200300'),
('Piotr', 'Wiśniewski', 'Gdańsk, ul. Morska 2', '502300400'),
('Katarzyna', 'Wójcik', 'Poznań, ul. Zielona 8', '503400500'),
('Marek', 'Lewandowski', 'Łódź, ul. Piotrkowska 99', '504500600'),
('Ewa', 'Zielińska', 'Wrocław, ul. Krótka 12', '505600700'),
('Tomasz', 'Szymański', 'Lublin, ul. Lipowa 20', '506700800'),
('Magdalena', 'Dąbrowska', 'Rzeszów, ul. Rynek 5', '507800900'),
('Paweł', 'Lis', 'Bydgoszcz, ul. Leśna 7', '508900100'),
('Alicja', 'Kubiak', 'Szczecin, ul. Jasna 3', '509100200');

-- ======================================
-- 2. Tabela: godziny
-- ======================================
INSERT INTO godziny (data, liczba_godzin, id_pracownika) VALUES
('2025-10-01', 8, 1),
('2025-10-01', 7, 2),
('2025-10-02', 8, 3),
('2025-10-02', 6, 4),
('2025-10-03', 8, 5),
('2025-10-03', 5, 6),
('2025-10-04', 7, 7),
('2025-10-04', 8, 8),
('2025-10-05', 8, 9),
('2025-10-05', 7, 10);

-- ======================================
-- 3. Tabela: pensja
-- ======================================
INSERT INTO pensja (stanowisko, kwota) VALUES
('Księgowy', 5200.00),
('Asystent księgowego', 4000.00),
('Specjalista ds. finansów', 6000.00),
('Analityk', 5800.00),
('Kierownik działu', 7500.00),
('Dyrektor finansowy', 10000.00),
('Kadrowa', 4800.00),
('Praktykant', 2800.00),
('Kontroler', 6500.00),
('Administrator', 5500.00);

-- ======================================
-- 4. Tabela: premia
-- ======================================
INSERT INTO premia (rodzaj, kwota) VALUES
('Uznaniowa', 500.00),
('Świąteczna', 800.00),
('Motywacyjna', 300.00),
('Za nadgodziny', 450.00),
('Roczna', 1200.00),
('Projektowa', 700.00),
('Frekwencyjna', 250.00),
('Jubileuszowa', 1000.00),
('Okolicznościowa', 600.00),
('Specjalna', 900.00);

-- ======================================
-- 5. Tabela: wynagrodzenie
-- ======================================
INSERT INTO wynagrodzenie (data, id_pracownika, id_godziny, id_pensji, id_premii) VALUES
('2025-10-05', 1, 1, 1, 1),
('2025-10-05', 2, 2, 2, 2),
('2025-10-05', 3, 3, 3, 3),
('2025-10-05', 4, 4, 4, 4),
('2025-10-05', 5, 5, 5, 5),
('2025-10-05', 6, 6, 6, 6),
('2025-10-05', 7, 7, 7, 7),
('2025-10-05', 8, 8, 8, 8),
('2025-10-05', 9, 9, 9, 9),
('2025-10-05', 10, 10, 10, 10);
