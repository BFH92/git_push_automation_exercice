### Les contributions ne se valent pas toutes !
Les développeurs (même juniors) peuvent travailler tous les jours sans push sur GitHub.#LhabitNeFaitPasLeMoine
#### Voici une automatisation pour que votre fil de contributions soit vert tous les jours 
Installation 

1/ Installation d'un cron 

$crontab -e 
 
insérer ensuite la ligne suivante en spécifiant le chemin où se trouve le repo que vous avez cloné

* * * * * /bin/bash -l -c 'cd /Users/Path/to/your/directory && ruby ~/your_directory/index.rb' &> /Users/Path/to/your/directory/cron.txt
 
remplacer les '* * * * *' pour ajuster la fréquence de push. Vous pouvez tester le format ici => https://crontab.tech/

2/ création de la variable d'environnement Token, pour permettre le push via un gitHub token

création d'un fichier .env
 
ajouter la variable TOKEN='Votre tokenGitHub'
 
informations sur le gitHub Token ici => https://techglimpse.com/git-push-github-token-based-passwordless/'
 
$installation de la gem dotenv
 
$ gem install dotenv
 
Et vous êtes bons ! 
 
-----Metrics-----

dernière contribution automatique - 2021-10-04 13:06:04 +0200
