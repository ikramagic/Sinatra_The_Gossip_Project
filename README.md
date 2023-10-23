Salut à toi, moussaillon.

Voici un projet qui utilise Sinatra, un framework minimaliste de Ruby.

Voici ce que vous trouverez dans ce repo.

├── Gemfile 
    On utilisera principalement la gem 'sinatra' pour le framework, la gem 'puma' pour le serveur, la gem 'csv' pour pouvoir utiliser une base de données, et la gem 'pry' pour le débugage.
├── Gemfile.lock
├── config.ru
    Ce fichier config.ru qui contient les informations nécessaires au lancement de notre serveur.
    On y demande simplement au serveur d'exécuter le contenu de la classe ApplicationController.
├── db
└── gossip.csv
    Il s'agit de notre base de données, un fichier csv qui stockera les potins et servira pour la navigation.

    └── lib
    ├── controller.rb
    Il coordonne les GET et les POST. Un GET servira à récupérer et afficher une page HTML, là où un POST va plutôt gérer l'envoi de données vers une page HTML.
    C'est notre chef d'orchestre.
    ├── gossip.rb
    C'est notre modèle. Il s'occupe de gérer les données (initiation, stockage, suppression par exemple)
    └── views
        Ici, on trouvera nos pages HTML qui contiennent aussi du code en Ruby.
        Ce sont les pages codées de la façon dont elles s'afficheront dans le navigateur.
        ├── index.erb
        ├── all_gossips.erb
        ├── new_gossip.erb
        ├── show.erb
        └── edit.erb

Installation :

Pensez à bien effectuer un bundle install pour pouvoir utiliser le programme.
Ensuite, utilisez la commande 'rackup' dans le terminal pour ouvrir la page dans votre serveur local.

Fonctionnement du programme :

1. Vous atterirez sur la page d'acceuil qui se compose d'un message simple de bienvenue et de deux liens.

2. Vous pouvez choisir de cliquer sur le premier lien pour ajouter un potin à la base de données.
    -> Une fois le potin envoyé, vous serez redirigé vers la page d'acceuil.

3. Vous pouvez choisir de consulter les potins déjà postés en cliquant sur le deuxième lien.
    -> Vous atterirez sur une page globale contenant tous les potins.
    -> Vous pouvez cliquer sur l'un des potins, ce sont tous des liens.
    -> Si vous accédez à un potin spécifique, vous serez redirigé vers une page présentant le potin.

En chantier :

4. Vous avez déjà un formulaire de modification dans la page d'un potin en cliquant sur "Lien pour modifier le potin".
    -> Ce formulaire est visible mais n'est pas encore fonctionnel. Les modifications ne seront pas prises en compte.

Stay tuned! 

⠀⠠⠴⠶⠾⠿⠿⠿⢶⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⢿⣿⣆⠐⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠿⠿⠆⠹⠦⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣤⣤⣤⣀⠐⣶⣶⣶⣶⣶⣶⡀⢀⣀⣀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠻⢿⣿⡆⢹⡿⠻⢿⣿⣿⣷⠈⠿⠛⠁⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣴⣾⣷⣤⣉⣠⣾⣷⣦⣼⣿⣿⣿⣧⠀⠀⠀⠀⠀
⠀⣶⣶⣶⣶⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀
⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀
⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣛⠻⢧⣘⡷⠀⠀⠀
⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⣉⠛⠿⣷⣦⣌⠁⠀⠀⠀
⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⣠⠘⠀⠀⢹⣿⣶⣶⠀⠀⠀⠀⠀⠀
⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⢺⣿⠀⠀⠀⠘⣿⣿⡟⠀⠀⠀⠀⠀⠀
⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠁⠀⠀⠀⠀⠻⡟⠃⠀⠀⠀⠀⠀⠀
⠀⠛⠛⠛⠛⠛⠛⠛⠛⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀