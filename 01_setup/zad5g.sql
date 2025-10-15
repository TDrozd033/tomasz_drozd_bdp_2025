SELECT imie, nazwisko from pracownicy prac
JOIN wynagrodzenie w ON prac.id_pracownika = w.id_pracownika
JOIN pensja p ON p.id_pensji = w.id_pensji
WHERE p.kwota >= 1500 and p.kwota <= 3000;
