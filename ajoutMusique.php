<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="utf-8">
    <title>Ajouter une musique</title>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

	<link rel="stylesheet" href="./addstylesheet.css"></head>

<body>
<div class="form-group"><h1>Ajout de musiques</h1></div>
<?php if(isset($_GET["succes"])){echo "<p id='succes'>s".$_GET["succes"]."</p>";} ?>
    <div class="form-group" id="form"><form method="POST" action="./verifAjoutMusique.php">
        <input class="form-control" type="text" name="titre" placeholder="Entrez le titre de votre morceau" />
        <input class="form-control" type="text" name="artiste" placeholder="Entrez le nom de l'artiste" />
		<textarea class="form-control" name="refrain" id="exampleFormControlTextarea1" placeholder="Entrez le refrain de votre morceau"rows="5"></textarea>
        <button id="btn" type="submit" class="btn btn-primary btn-lg active">Ajouter</button>
        
    </form></div>
	<div class="form-group"><a href="menu.php" id="btn" class="btn btn-primary btn-lg active">Retour au menu</a></div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>

	</body>

</html>
