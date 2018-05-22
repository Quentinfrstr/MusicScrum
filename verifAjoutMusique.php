<?php

$titre = filter_input(INPUT_POST, 'titre', FILTER_SANITIZE_STRING);
$artiste = filter_input(INPUT_POST, 'artiste', FILTER_SANITIZE_STRING);
$refrain = filter_input(INPUT_POST, 'refrain', FILTER_SANITIZE_STRING);

$db = new PDO('mysql:host=localhost;dbname=musique', 'root');

if($titre != "" && $artiste != "" && $refrain != "")
{
    $db->query('INSERT INTO chansons (titre, auteur, paroles) VALUES ("' . $titre .'", "' . $artiste .'", "' . $refrain .'")');
    $succes = "Votre musique a bien été ajoutée !";
    
}
else
{
    $succes = "Votre musique n'a pas put être ajoutée";
}

$titre = "";

//include 'ajoutMusique.php';
header('Location: ajoutMusique.php?succes=Votre musique a bien été ajoutée !');
?>