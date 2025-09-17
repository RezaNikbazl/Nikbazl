ALTER TABLE ventes RENAME COLUMN c1 to date
ALTER TABLE ventes RENAME COLUMN c2 to Produit
ALTER TABLE ventes RENAME COLUMN c3 to Prix
ALTER TABLE ventes RENAME COLUMN c4 to qte
ALTER TABLE ventes RENAME COLUMN c5 to Region

SELECT SUM(prix * qte) AS chiffre_affaires_total
FROM ventes;

SELECT  produit,
    SUM(prix * qte) AS chiffre_affaires
FROM ventes
GROUP BY produit;

SELECT  region,
    SUM(prix * qte) AS chiffre_affaires
FROM ventes
GROUP BY region;