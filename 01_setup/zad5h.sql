SELECT imie, nazwisko FROM pracownicy prac
JOIN wynagrodzenie w ON prac.id_pracownika=w.id_pracownika
JOIN godziny g ON g.id_godziny=w.id_godziny
JOIN premia pr ON pr.id_premii=w.id_premii
WHERE pr.kwota = 0.00 AND g.liczba_godzin>160;
