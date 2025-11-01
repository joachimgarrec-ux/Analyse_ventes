WITH t AS (
  SELECT *
  FROM {{ source('Dataset', 'trajets') }}
),
d AS (
  SELECT
    id_date,
    DATE(annee, mois, jour) AS date_trajet
  FROM {{ source('Dataset', 'dates') }}
)
SELECT
  t.*,
  d.date_trajet
FROM t
LEFT JOIN d ON t.id_date = d.id_date