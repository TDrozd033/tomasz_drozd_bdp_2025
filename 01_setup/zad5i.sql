SELECT prac.imie, prac.nazwisko, p.kwota from pracownicy prac
JOIN wynagrodzenie w ON prac.id_pracownika = w.id_pracownika
JOIN pensja p ON p.id_pensji = w.id_pensji
ORDER BY p.kwota DESC;

