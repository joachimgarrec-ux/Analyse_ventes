SELECT
  sc.segment_client,
  tv.type_vehicule,
  COUNT(t.id_trajet) AS nombre_trajets,
  SUM(t.montant_total) AS total_revenus
FROM `Dataset.trajets` t
JOIN `Dataset.clients` c ON t.id_client = c.id_client
JOIN `Dataset.segments_clients` sc ON c.id_segment = sc.id_segment
JOIN `Dataset.vehicules` v ON t.id_vehicule = v.id_vehicule
JOIN `Dataset.Type_vehicules` tv ON v.id_type = tv.id_type
GROUP BY sc.segment_client, tv.type_vehicule
ORDER BY total_revenus DESC