<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="utf-8">
    <title>Ajouter une musique</title>
</head>

<body>
    <form method="POST" action="./verifAjoutMusique.php">
        <input type="text" name="titre" placeholder="Entrez le titre de votre morceau" />
        <input type="text" name="artiste" placeholder="Entrez le nom de l'artiste" />
        <input type="text" name="refrain" placeholder="Entrez le refrain de votre morceau" />
        <button type="submit">Ajouter</button>
        <?php echo $_GET["succes"]; ?>
    </form>
</body>

</html>
