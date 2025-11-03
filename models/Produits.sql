SELECT v.id_vente, p.nom_produit, c.nom_client, r.nom_region, v.quantite, v.montant_total
FROM `vtc-paris-etoile.Datasets.TechStore.Ventes___TechStore` v
JOIN `vtc-paris-etoile.Datasets.TechStore.Clients___TechStore` c ON v.id_client = c.id_client
JOIN `vtc-paris-etoile.Datasets.TechStore.Regions___TechStore` r ON v.id_region = r.id_region
JOIN `vtc-paris-etoile.Datasets.TechStore.Produits___TechStore` p ON v.id_produit = p.id_produit
JOIN `vtc-paris-etoile.Datasets.TechStore.Dates___TechStore` d ON v.id_date = d.id_date