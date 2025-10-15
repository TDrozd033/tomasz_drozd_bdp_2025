SELECT stanowisko, SUM(kwota) FROM pensja
GROUP BY stanowisko;
