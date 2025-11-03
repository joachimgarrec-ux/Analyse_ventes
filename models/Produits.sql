-- Créer la table des catégories de produit
CREATE TABLE `vtc-paris-etoile.Datasets.TechStore.categories_produits`(
    id_categorie INT NOT NULL,
    nom_categorie INT NOT NULL
)

-- Extraire les catégories uniques
CREATE OR REPLACE categories_produits AS 
SELECT
ROW NUMBER() OVER() AS id_categorie,
categorie_produit AS nom_categorie
FROM Produits
GROUP BY categorie_produit

