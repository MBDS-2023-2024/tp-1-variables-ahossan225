// 1. Créer un tableau en Swift représentant ces mots
let moyensDeTransport = ["bateau", "voiture", "vélo", "avion", "bus", "train", "moto"]

// 2. Afficher les mots se trouvant aux indices 2, 3 et 20 (si 20 dépasse la longueur du tableau, rien ne sera affiché)
if moyensDeTransport.indices.contains(2) {
    print(moyensDeTransport[2])
}
if moyensDeTransport.indices.contains(3) {
    print(moyensDeTransport[3])
}
if moyensDeTransport.indices.contains(20) {
    print(moyensDeTransport[20])
}

// 3. Afficher tous les mots de la liste sous la forme `Moyen de transport numéro [i] est [mot]`
for (index, moyen) in moyensDeTransport.enumerated() {
    print("Moyen de transport numéro \(index) est \(moyen)")
}

// 4. Trouver et afficher les mots aux indices impairs puis pairs
print("Mots aux indices impairs :")
for i in stride(from: 1, to: moyensDeTransport.count, by: 2) {
    print(moyensDeTransport[i])
}

print("Mots aux indices pairs :")
for i in stride(from: 0, to: moyensDeTransport.count, by: 2) {
    print(moyensDeTransport[i])
}

// 5. Inverser l’ordre du tableau puis stocker le résultat dans un nouveau tableau
let reversedArray = moyensDeTransport.reversed()
print("Tableau inversé : \(reversedArray)")

// 6. Insérer les mots suivants ‘camion’, ‘taxi’
var nouveauxMoyensDeTransport = moyensDeTransport
// En tête de liste
nouveauxMoyensDeTransport.insert("camion", at: 0)
nouveauxMoyensDeTransport.insert("taxi", at: 0)
// En fin de liste
nouveauxMoyensDeTransport.append("camion")
nouveauxMoyensDeTransport.append("taxi")
// À partir de l’indice 2
nouveauxMoyensDeTransport.insert(contentsOf: ["camion", "taxi"], at: 2)

print("Nouveaux moyens de transport : \(nouveauxMoyensDeTransport)")
