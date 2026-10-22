function direBonjour() {
    document.getElementById("message").textContent =
        "Bonjour ! Bienvenue sur ma page.";
}

function afficherDate() {
    var maintenant = new Date();

    var texte = "Nous sommes le " +
        maintenant.toLocaleDateString("fr-FR") +
        " et il est " +
        maintenant.toLocaleTimeString("fr-FR") + ".";

    document.getElementById("message").textContent = texte;
}

function changerCouleur() {
    var couleurs = [
        "#ffeaa7",
        "#fab1a0",
        "#81ecec",
        "#a29bfe",
        "#b2f2bb"
    ];

    var indice = Math.floor(Math.random() * couleurs.length);
    var couleurChoisie = couleurs[indice];

    document.body.style.backgroundColor = couleurChoisie;

    document.getElementById("message").textContent =
        "Nouvelle couleur de fond : " + couleurChoisie;
}

function nombreAleatoire() {
    var nombre = Math.floor(Math.random() * 100) + 1;

    document.getElementById("message").textContent =
        "Votre nombre aléatoire est : " + nombre;
}

function effacer() {

    document.getElementById("message").textContent = "";
}

function verif_age() {
    let n1 = prompt("Donnez votre âge : ")
 
    if (n1 < 18) {
        document.write("Vous êtes mineur")
  document.body.style.backgroundColor = "red"
    }
    else {
        document.write("Vous êtes majeur")
        document.body.style.backgroundColor = "green"
    }
}

function calculerNotes() {
    let n1=(prompt("Note 1:"));

     let n2=(prompt("Note 2:"));

      let n3=(prompt("Note 3:"));

      let Somme = Number(n1) + Number(n2) + Number(n3);

      let moyenne=Somme /3;

      document.getElementById("message").textContent="Somme;"+ Somme + "-Moyenne;"+ moyenne;
            }




