def add_text_to_readme(date, file_name)

  file = File.open("#{file_name}", "w")
  file.write("### Les contributions ne se valent pas toutes !\n")
  file.write("Les développeurs (même juniors) peuvent travailler tous les jours sans push sur GitHub.#LhabitNeFaitPasLeMoine\n")
  file.write("#### Voici une automatisation pour que votre fil de contributions soit vert tous les jours \n")
  file.write("#####-------INSTALL------")
  file.write("Installation d'un cron \n")
  file.write("$crontab -e \n ")
  file.write("--------------------")
  file.write("\ndernière contribution automatique - #{date}")
  file.close
end