SELECT pr.id_pracownika from pracownicy pr
JOIN wynagrodzenie w ON pr.id_pracownika = w.id_pracownika
JOIN pensja pen ON pen.id_pensji = w.id_pensji
WHERE pen.kwota >1000;
