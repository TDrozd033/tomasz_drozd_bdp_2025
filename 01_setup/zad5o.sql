SELECT stanowisko, COUNT(*) FROM pracownicy prac
JOIN wynagrodzenie w ON prac.id_pracownika=w.id_pracownika
JOIN pensja p ON p.id_pensji=w.id_pensji
JOIN premia pr ON pr.id_premii=w.id_premii
WHERE pr.kwota <> 0.00
GROUP BY stanowisko;
