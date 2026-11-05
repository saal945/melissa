// Fonction somme
function somme() {

    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;

    a = parseFloat(a);
    b = parseFloat(b);

    if (isNaN(a) || isNaN(b)) {
        document.getElementById("resultat").value = "Erreur";
    }
    else {
        var c = a + b;
        document.getElementById("resultat").value = c;
    }
}


// Fonction soustraction
function soustraction() {

    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;

    a = parseFloat(a);
    b = parseFloat(b);

    if (isNaN(a) || isNaN(b)) {
        document.getElementById("resultat").value = "Erreur";
    }
    else {
        var c = a - b;
        document.getElementById("resultat").value = c;
    }
}


// Fonction produit
function produit() {

    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;

    a = parseFloat(a);
    b = parseFloat(b);

    if (isNaN(a) || isNaN(b)) {
        document.getElementById("resultat").value = "Erreur";
    }
    else {
        var c = a * b;
        document.getElementById("resultat").value = c;
    }
}


// Fonction division
function division() {

    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;

    a = parseFloat(a);
    b = parseFloat(b);

    if (isNaN(a) || isNaN(b)) {
        document.getElementById("resultat").value = "Erreur";
    }
    else if (b == 0) {
        document.getElementById("resultat").value = "Division impossible";
    }
    else {
        var c = a / b;
        document.getElementById("resultat").value = c;
    }
}


// Fonction permutation
function permutation() {

    var n1 = document.getElementById("t1").value;
    var n2 = document.getElementById("t2").value;

    var temp = n1;

    n1 = n2;
    n2 = temp;

    document.getElementById("t1").value = n1;
    document.getElementById("t2").value = n2;
}


// Fonction parité
function parite() {

    var a = document.getElementById("t1").value;

    a = parseFloat(a);

    if (isNaN(a)) {
        document.getElementById("resultat").value = "Erreur";
    }
    else if (a % 1 != 0) {
        document.getElementById("resultat").value = "Nombre non entier";
    }
    else if (a % 2 == 0) {
        document.getElementById("resultat").value = "Pair";
    }
    else {
        document.getElementById("resultat").value = "Impair";
    }
}


// Fonction effacer
function effacer() {

    document.getElementById("t1").value = "";
    document.getElementById("t2").value = "";
    document.getElementById("resultat").value = "";

}