DELETE FROM pracownicy
WHERE id_pracownika IN (
    SELECT w.id_pracownika
    FROM wynagrodzenie w
    JOIN pensja p ON w.id_pensji = p.id_pensji
    WHERE p.kwota < 1200
);

