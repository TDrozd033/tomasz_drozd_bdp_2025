SELECT stanowisko, AVG(kwota), MIN(kwota), MAX(kwota) FROM pensja
GROUP BY stanowisko
HAVING stanowisko='Analityk';
