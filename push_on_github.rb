def push_on_github(date, file_name)
  system('git add .')
  system("git commit -m 'push #{file_name} - #{date}'")
end