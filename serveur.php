<?php

try{
    $bdd = new PDO('mysql:host=;dbname=blindTest', 'root', '');
}catch(PDOException $e){
    echo 'Connexion échoué';
}

if($_POST['fonction'] == 'randomMusic'){
    $infos = $bdd->query('SELECT titre, parole FROM blindtest');
    $infos = $infos->fetchAll();
    
    $result = "";
    
    for($i = 0; $i < 3; $i++){
        $numChanson = rand(0, count($infos));
        $result .= $infos[$numChanson]['titre'] . ';' .$infos[$numChanson]['parole']. '|';
    }
    
    echo $result;
    
}


