-- Créer la table des catégories de produit
CREATE TABLE categories_produit (
 id_categorie INT NOT NULL,
 nom_categorie INT NOT NULL
)

-- Extraire les catégories uniques
CREATE OR REPLACE TABLE categories_produit AS
SELECT
 ROW_NUMBER() OVER() AS id_categorie, -- Générer un identifiant unique pour
chaque catégorie
 categorie_produit AS nom_categorie
FROM Produits
GROUP BY categorie_produit

