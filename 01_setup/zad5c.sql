SELECT pr.id_pracownika from pracownicy pr
JOIN wynagrodzenie w ON pr.id_pracownika = w.id_pracownika
JOIN premia prem ON prem.id_premii = w.id_premii
JOIN pensja pen ON pen.id_pensji = w.id_pensji
WHERE pen.kwota > 2000 AND prem.kwota = 0.00;
