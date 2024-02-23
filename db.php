<?php
// Paramètres de connexion à la base de données
$host = 'localhost'; // Serveur de base de données
$dbname = 'mds-api-ex2'; // Nom de la base de données
$username = 'root'; // Nom d'utilisateur pour la connexion
$password = ''; // Mot de passe de l'utilisateur

try {
    // Connexion à la base de données avec PDO
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
} catch (PDOException $e) {
    // Si la connexion échoue, arrête le script avec un message d'erreur
    die("Impossible de se connecter à la base de données: " . $e->getMessage());
}
