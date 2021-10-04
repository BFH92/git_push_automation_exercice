def add_text_to_readme(date, file_name)

  file = File.open("#{file_name}", "w")
  file.write("### Les contributions ne se valent pas toutes !\n")
  file.write("Les développeurs (même juniors) peuvent travailler tous les jours sans push sur GitHub.#LhabitNeFaitPasLeMoine\n")
  file.write("#### Voici une automatisation pour que votre fil de contributions soit vert tous les jours \n")
  file.write("Installation \n")
  
  file.write("\n1/ Installation d'un cron \n")
  file.write("\n$crontab -e \n ")
  file.write("insérer ensuite la ligne suivante en spécifiant le chemin où se trouve le repo que vous avez cloné")
  file.write("* * * * * /bin/bash -l -c 'cd /Users/Path/to/your/directory && ruby ~/your_directory/index.rb' &> /Users/Path/to/your/directory/cron.txt\n ")
  file.write("remplacer les '* * * * *' pour ajuster la fréquence de push. Vous pouvez tester le format ici => https://crontab.tech/\n")
  
  file.write("2/ création de la variable d'environnement Token, pour permettre le push via un gitHub token\n")
  file.write("création d'un fichier .env\n ")
  file.write("ajouter la variable TOKEN='Votre tokenGitHub'\n ")
  file.write("informations sur le gitHub Token ici => https://techglimpse.com/git-push-github-token-based-passwordless/'\n ")
  file.write("$installation de la gem dotenv\n ")
  file.write("$ gem install dotenv\n ")
  
  file.write("Et vous êtes bons ! \n ")
  
  file.write("-----Metrics-----")
  file.write("\ndernière contribution automatique - #{date}")
  file.close
end