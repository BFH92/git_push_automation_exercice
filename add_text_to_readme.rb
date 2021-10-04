def add_text_to_readme(date, file_name)

  file = File.open("#{file_name}", "w")
  file.write("### Les contributions ne se valent pas toutes !\n")
  file.write("Les développeurs (même juniors) peuvent travailler tous les jours sans push sur GitHub.#LhabitNeFaitPasLeMoine\n")
  file.write("#### Voici une automatisation pour que votre fil de contributions soit vert tous les jours \n")
  file.write("Installation \n")
  
  file.write("\n1/ Installation d'un cron \n")
  file.write("\n$crontab -e \n ")
  file.write("\ninsérer ensuite la ligne suivante en spécifiant le chemin où se trouve le repo que vous avez cloné\n")
  file.write("\n * * * * * /bin/bash -l -c 'cd /Users/Path/to/your/directory && ruby ~/your_directory/index.rb' &> /Users/Path/to/your/directory/cron.txt\n ")
  file.write("\nremplacer les '* * * * *' pour ajuster la fréquence de push. Vous pouvez tester le format ici => https://crontab.tech/\n")
  
  file.write("\n2/ création de la variable d'environnement Token, pour permettre le push via un gitHub token\n")
  file.write("\ncréation d'un fichier .env\n ")
  file.write("\najouter la variable TOKEN='Votre tokenGitHub'\n ")
  file.write("\ninformations sur le gitHub Token ici => https://techglimpse.com/git-push-github-token-based-passwordless/'\n ")
  file.write("\n$installation de la gem dotenv\n ")
  file.write("\n$gem install dotenv\n ")
  
  file.write("\nEt vous êtes bons ! \n ")
  
  file.write("\n-----Metrics-----\n")
  file.write("\ndernière contribution automatique - #{date}\n")
  file.close
end