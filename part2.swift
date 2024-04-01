// 1. Créer une liste de dictionnaires contenant ces personnes
var personnes = [
    ["nom": "Pierre", "sexe": "M", "annee_naissance": 2010],
    ["nom": "Michelle", "sexe": "F", "annee_naissance": 2008],
    ["nom": "Estelle", "sexe": "F", "annee_naissance": 2005],
    ["nom": "Quentin", "sexe": "M", "annee_naissance": 2010],
    ["nom": "Francois", "sexe": "M", "annee_naissance": 1980],
    ["nom": "Cristelle", "sexe": "F", "annee_naissance": 1995]
]

// 2. Afficher le nom de toutes les personnes concaténés avec leurs date de naissance
for personne in personnes {
    let nom = personne["nom"] as! String
    let sexe = personne["sexe"] as! String
    let anneeNaissance = personne["annee_naissance"] as! Int
    let genre = (sexe == "M") ? "né" : "née"
    print("\(nom) est \(genre) en \(anneeNaissance)")
}

// 3. Afficher les noms de toutes les personnes majeures (supposons que la majorité soit à partir de 18 ans)
let anneeActuelle = 2024
let ageMajorite = 18
print("Personnes majeures :")
for personne in personnes {
    let anneeNaissance = personne["annee_naissance"] as! Int
    if (anneeActuelle - anneeNaissance) >= ageMajorite {
        print(personne["nom"]!)
    }
}

// 4. Afficher toutes les filles puis tous les garçons
print("Filles :")
for personne in personnes {
    if personne["sexe"] as! String == "F" {
        print(personne["nom"]!)
    }
}

print("Garçons :")
for personne in personnes {
    if personne["sexe"] as! String == "M" {
        print(personne["nom"]!)
    }
}

// 5. Ajouter une nouvelle personne dans la liste
// Ajouter une nouvelle personne dans la liste en spécifiant le type explicite pour chaque clé-valeur
let nouvellePersonne: [String: Any] = ["nom": "Marie", "sexe": "F", "annee_naissance": 1990]
personnes.append(nouvellePersonne)

// Affichage pour vérification
print("Nouvelle liste de personnes :")
for personne in personnes {
    print(personne)
}

// Affichage pour vérification
print("Nouvelle liste de personnes :")
for personne in personnes {
    print(personne)
}
