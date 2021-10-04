require 'dotenv'
Dotenv.load('.env')
def push_on_github(date, file_name)
  username = ENV['USERNAME']
  password = ENV['PASSWWORD']
  puts password
  system('git add .')
  system("git commit -m 'push #{file_name} - #{date}'")
  system("git remote set-url origin 'https://BFH92:#{password}@github.com/BFH92/git_push_automation_exercice.git'")
  system("git push origin main")
end