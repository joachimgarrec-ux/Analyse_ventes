-- Création de la table categorie_produits
-- models/categorie_produit.sql

{{ config(
    materialized='table',
    schema='TechStore' 
) }}
SELECT
    ROW_NUMBER() OVER(ORDER BY categorie_produit) AS id_categorie,
    
    categorie_produit AS nom_categorie
FROM
    {{ source('tech_store_data', 'Produits___TechStore') }} 
GROUP BY
    categorie_produit


