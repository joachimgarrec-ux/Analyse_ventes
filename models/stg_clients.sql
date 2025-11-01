{{ config(
    materialized='table'
) }}
SELECT
  id_client,
  nom_client,
  prenom_client,
  email_client,
  id_segment
FROM {{ source('Dataset', 'clients') }}
WHERE email_client IS NOT NULL