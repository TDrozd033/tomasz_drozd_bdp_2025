SELECT imie, nazwisko, p.kwota, pr.kwota FROM pracownicy prac
JOIN wynagrodzenie w ON prac.id_pracownika=w.id_pracownika
JOIN pensja p ON w.id_pensji=p.id_pensji
JOIN premia pr ON pr.id_premii=w.id_premii
ORDER BY p.kwota DESC, pr.kwota DESC;
