<!DOCTYPE html>
<html lang="fr">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Musical Blind-Test</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
	<link rel="stylesheet" href="./mainstylesheet.css">
</head>

<body onload="init()">
    <div id="choixMusiques">

    </div>
    <div id="affichageParoles">
        <label id="lblParoles">
                
        </label>
    </div>
    <div id="temps">
        <label id=tempsRestant>
            
        </label>
    </div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script type="text/javascript">
        // Intialisation des variables
        var _MAX_TEMPS = 30;
        var _INTERVAL = 1;
        var temps = 0;
        var timer;

        // Fonctions

        // Affiches les paroles de la chanson séléctionnée par l'utilisateur. Fait Disparaître le div choix musique et apparaître le div de paroles.
        // Paramètres : paroles --> string : Sert à récupérer les paroles.
        function afficheParoles(paroles) {
            choixMusiques.style.display = "none";
            affichageParoles.style.display = "block";
            lblParoles.innerHTML = paroles.replace(/[\n\r]/g, '<br/>');
            lblParoles.innerHTML = paroles;
            timer = setInterval(SelectionChanson, _INTERVAL * 1000);
        }

        function randomMusic() {
            temps = 0;
            $.ajax({
                url: "./serveur.php",
                type: "POST",
                data: ({
                    fonction: 'randomMusic'
                }),
                dataType: 'text',
                success: function(reponse) {
                    var ligne = reponse.split('|');
                    for (var i = 0; i < ligne.length - 1; i++) {
                        var infos = ligne[i].split(';');
                        var btn = document.createElement('button');
                        btn.innerHTML = infos[0] + " - " + infos[2];
                        btn.paroles = infos[1];
                        btn.id = "btn";
						btn.className = "btn btn-primary btn-lg active";
                        btn.onclick = function() {
                            nomMusique = this.innerHTML;
                            afficheParoles(this.paroles);
                        }
                        document.getElementById('choixMusiques').appendChild(btn);
                    }
                }
            });
        }

        function SelectionChanson() 
        {
            tempsRestant.innerHTML = _MAX_TEMPS - temps;
            
            if (temps == _MAX_TEMPS) {
                choixMusiques.innerHTML = "";
                randomMusic();
                choixMusiques.style.display = "block";
                affichageParoles.style.display = "none";
                clearInterval(timer);
                tempsRestant.innerHTML = "";
            }
            
            temps++;

        }

        function init() {
            randomMusic();
        }

    </script>
</body>

</html>
