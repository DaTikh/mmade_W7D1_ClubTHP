**lien prod : https://club-tests-thp-bdx.herokuapp.com/**

# Week 7 - Day 1 - THP by Team BDX - PrivateClub TDD


## Cher·ère correcteur·rice , j'espère que mon app te plaira ! Merci d'avance du temps précieux que tu passeras à la tester. :)


## Projet du jour :

Le projet du jour consiste à appréhender le Test Driven Development (autrement dit le Développement Dirigé par des Tests). Cette méthode plébiscitée dans le travail en entreprise nous oblige à définir clairement l'objectif de chaque nouvelle feature avant de la coder. En effet nous commencerons par établir une batterie de tests qui vérifie une ou plusieurs conditions, puis nous écrirons le code qui permet d'effectuer les tâches demandées en veillant à conserver l'intégrité de l'application tout au long du développement.


## Pré-requis et installation :

Clone le repo et effectue cette commande :

```
  $ bundle install --without production && rails db:migrate
```


## Fonctionnement de l'application :

Pour tester l'application en local, une fois dans le dossier cloné :

  - Pour lancer la vérification par les tests écrits par mes soins avec la gem 'minitest' :
  
      +  Exo 2.1 : 
      ```
        @ rails test
      ```
      +  Exos 2.2 à 2.4.1 :
      ```
       @ rails test:system
      ```
       * **Attention : L'intégralité des tests des exos 2.2 à la fin sont des tests system, n'oublie pas de le préciser dans la commande ! ;)**

  - Si tu veux naviguer un peu sur l'application en local, pour lancer le serveur :
```
  $ rails s
```
   Puis rendez-vous sur ton web browser préféré à l'adresse :
```
  @ http://localhost:3000/
```

*NOTA : $ = terminal || > = console rails || @ = web browser*

## Versions

**Ruby 2.5.1**
**Rails 5.2.0**
**Bundle 1.16.1**

## Contributeurs

@bab - Baptiste Rogeon

... et un bisou à @Massimo qui m'a empêché de jeter mon ordi par la fenêtre ! :D
