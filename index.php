<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="utf-8">
    <title>Musical Blind-Test</title>
</head>

<body onload="init()">
    <div id="choixMusiques">
        
    </div>
    <div id="affichageParoles">
        <label id="lblParoles">
                
        </label>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script type="text/javascript">
        // Intialisation des variables


        // Fonctions

        // Affiches les paroles de la chanson séléctionnée par l'utilisateur. Fait Disparaître le div choix musique et apparaître le div de paroles.
        // Paramètres : paroles --> string : Sert à récupérer les paroles.
        function afficheParoles(paroles) {
            choixMusiques.style.display = "none";
            affichageParoles.style.display = "block";
            lblParoles.innerHTML = paroles;
        }

        function randomMusic() {
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
                        btn.innerHTML = infos[0];
                        btn.paroles = infos[1];
                        btn.id = btn + i;
                        btn.onclick = function() {
                            nomMusique = this.innerHTML;
                            afficheParoles(this.paroles);
                        }
                        document.getElementById('choixMusiques').appendChild(btn);
                    }
                }
            });
        }
        
        function init(){
            randomMusic();
        }

    </script>
</body>

</html>
