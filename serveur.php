<?php

try{
    $bdd = new PDO('mysql:host=;dbname=musique', 'root', '');
}catch(PDOException $e){
    echo 'Connexion échoué';
}

if($_POST['fonction'] == 'randomMusic'){
    $infos = $bdd->query('SELECT titre, paroles FROM chansons');
    $infos = $infos->fetchAll();
    
    $result = "";
    
    for($i = 0; $i < 3; $i++){
        $numChanson = rand(0, count($infos));
        $result .= $infos[$numChanson]['titre'] . ';' .$infos[$numChanson]['paroles']. '|';
    }
    
    echo $result;
    
}


