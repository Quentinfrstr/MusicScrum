$.ajax({
    url: "./serveur.php",
    type: "POST",
    data: ({
        fonction:'randomMusic'
    }),
    dataType: 'text',
    success: function (reponse) {
        var ligne = reponse.split('|');
        for (var i = 0; i < ligne.length - 1; i++) {
            var infos = ligne[i].split(';');
            var btn = document.createElement('button');
            btn.innerHTML = infos[0];
            btn.paroles = infos[1];
            btn.id = btn + i;
            btn.onclick = function() {
                            nomMusique = this.innerHTML;
                            afficheMusiques(this.paroles);
                        }
            document.getElementById('choixMusiques').appendChild(btn);
        }
    }
});
