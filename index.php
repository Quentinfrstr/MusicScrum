<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="utf-8">
    <title>Musical Blind-Test</title>
</head>

<body>
    <div id="choixMusiques">
        <button id="btn1" onclick="afficheParoles('p1')">
                Bouton 1
            </button>
        <button id="btn2" onclick="afficheParoles('p2')">
                Bouton 2
            </button>
        <button id="btn3" onclick="afficheParoles('p3')">
                Bouton 3
            </button>
    </div>
    <div id="affichageParoles">
        <label id="lblParoles">
                
        </label>
    </div>
    <script type="text/javascript">
        // Intialisation des variables


        // Fonctions
        
        // Affiches les paroles de la chanson séléctionnée par l'utilisateur. Fait Disparaître le div choix musique et apparaître le div de paroles.
        // Paramètres : paroles --> string : Sert à récupérer les paroles.
        function afficheParoles(paroles) 
        {
            choixMusiques.style.display = "none";
            affichageParoles.style.display = "block";
            lblParoles.innerHTML = paroles;
        }

    </script>
</body>

</html>
