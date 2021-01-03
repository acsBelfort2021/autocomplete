<?php
//On créé des variables pour la connexion à la BDD avec PDO
$dsn = 'mysql:host=localhost;dbname=autocomplete';
$user = 'root';
$password = '';
$options = [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'",
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
];

//On se connecte à la BDD
try {
    $pdo = new PDO($dsn, $user, $password, $options);
} catch (\Throwable $th) {
    throw $th;
}

if(!empty($_POST["movie"])) {
    $sql = "SELECT * FROM movie WHERE title LIKE :like ORDER BY title ASC LIMIT 10";
    $movie = $_POST['movie'];
    $like = "%{$movie}%";
    $stmt = $pdo->prepare($sql);
    $stmt->execute([":like" => $like]);
    $results = $stmt->fetchAll();
    echo json_encode($results);
}