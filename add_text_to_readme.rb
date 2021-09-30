def add_text_to_readme(date, file_name)

  file = File.open("#{file_name}", "w")
  file.write("### Les contributions ne se valent pas toutes !\n")
  file.write("Les développeurs (même juniors) peuvent travailler tous les jours sans push sur GitHub. L'habit ne fait pas le moine...\n")
  file.write("#### Voici une automatisation pour que votre fil de contributions soit vert tous les jours \n")
  
  file.write("--------------------")
  file.write("\nruby ~/GitHub_automation/index.rbdernière contribution automatique - #{date}")
  file.close
end