<?php

try{
    $bdd = new PDO('mysql:host=;dbname=musique', 'root', '');
}catch(PDOException $e){
    echo 'Connexion échoué';
}

if($_POST['fonction'] == 'loadMusic'){
    $infos = $bdd->query('SELECT titre, paroles, auteur FROM chansons');
    $infos = $infos->fetchAll();
    
    $result = "";
    
    for($i = 0; $i < count($infos); $i++){
        $result .= $infos[$i]['titre'] . ';' . $infos[$i]['auteur'] . ';' . $infos[$i]['paroles']. '|';
    }
    
    echo utf8_encode($result);
    
}


