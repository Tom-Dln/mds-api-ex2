<?php
include 'db.php'; // Inclut le script de connexion à la base de données

header('Content-Type: application/json'); // Définit le type de contenu de la réponse comme JSON

// ----- Traitement des requêtes GET
if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    // Exécute une requête SQL pour sélectionner toutes les entrées du carnet
    $stmt = $pdo->query('SELECT * FROM carnet');
    // Récupère les résultats sous forme de tableau associatif
    $entries = $stmt->fetchAll(PDO::FETCH_ASSOC);
    // Encode les données en JSON et les envoie en réponse
    echo json_encode($entries);
}

// ----- Traitement des requêtes POST
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Récupère les données JSON envoyées par le client et les convertit en tableau PHP
    $data = json_decode(file_get_contents('php://input'), true);

    // Prépare une requête SQL pour insérer une nouvelle entrée dans le carnet
    $stmt = $pdo->prepare('INSERT INTO carnet (date, titre, recit) VALUES (:date, :titre, :recit)');
    // Exécute la requête avec les données fournies
    $stmt->execute([
        ':date' => $data['date'],
        ':titre' => $data['titre'],
        ':recit' => $data['recit'],
    ]);
    // Envoie une réponse JSON confirmant l'ajout de l'entrée
    echo json_encode(['message' => 'Entrée ajoutée avec succès']);
}
