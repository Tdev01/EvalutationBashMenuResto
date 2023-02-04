#!/bin/bash
clear
cat  menu.txt ;
echo " " 

#déclaration de mes fonction pour les differentes partie que je vais utiliser dans ma carte
#Entreés 

function Entree () {

	read -p "Quelle entrées voulez-vous choisir entre (1,2,3): " i
    #Lecture de ma ligne en prenant dans mon fichier txt la fin de ma ligne , en lecture après le signe €
    var1=$(grep -w [-]$i menu.txt | grep -o '\([0-9]\{1,2\}\)[€]' | sed 's/€//g')
    read -p "Combien en voulez-vous ? :  " q1 

}

function plats () {

    read -p "Quelle Plats voulez-vous choisir entre (4,5,6,7): " i
    var2=$(grep -w [-]$i menu.txt | grep -o '\([0-9]\{1,2\}\)[€]' | sed 's/€//g')
    read -p " Combien en voulez-vous : " q2
    echo "Vous avez choisi : "

}

function dessert () {

    read -p "Quelle dessert voulez-vous choisir entre (8,9): " i
    var3=$(grep -w [-]$i menu.txt | grep -o '\([0-9]\{1,2\}\)[€]' | sed 's/€//g')
    read -p " Combien en voulez-vous : " q3

}

function boisson () {

    read -p "Quelle Boissons voulez-vous choisir entre (10,11): " i
    var4=$(grep -w [-]$i menu.txt | grep -o '\([0-9]\{1,2\}\)[€]' | sed 's/€//g')
    read -p " Combien en voulez-vous : " q4 

}

function calcul () {

    # tva=$(1.1136 | bc -l)
    # mtva=$(($total*$tva/100))
    # je fais une variable qui va recupérer mes variable dans mes foction précédent avec mes quantité 
    resultat=$(($var1*$q1+$var2*$q2+$var3*$q3+$var4*$q4))
    #Je fais une variable total qui prend en compte les resultats dema variable haut dessus et qui me rajoute ma tva 
    # total=$(($resultat*$mtva));
    echo "Voici votre addition : $resultat "
}

#Utilisation de mes variable 

Entree
plats
dessert 
boisson
calcul

exit 0;