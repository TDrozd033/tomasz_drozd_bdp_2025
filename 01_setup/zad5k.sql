SELECT p.stanowisko, COUNT(*) FROM pracownicy prac
JOIN wynagrodzenie w ON prac.id_pracownika=w.id_pracownika
JOIN pensja p ON w.id_pensji=p.id_pensji
GROUP BY p.stanowisko;
