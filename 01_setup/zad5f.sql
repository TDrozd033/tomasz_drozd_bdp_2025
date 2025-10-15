
SELECT imie, nazwisko, (liczba_godzin-160) AS nadgodziny FROM pracownicy prac
JOIN wynagrodzenie w ON prac.id_pracownika=w.id_pracownika
JOIN godziny g ON g.id_godziny=w.id_godziny
WHERE liczba_godzin > 160;
