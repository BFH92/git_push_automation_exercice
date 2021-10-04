require 'dotenv'
Dotenv.load('.env')
url = "https://#{ENV['TOKEN']}@github.com/BFH92/git_push_automation_exercice.git"
def push_on_github(date, file_name)
  system('git add .')
  system("git commit -m 'push #{file_name} - #{date}'")
  system("git remote set-url origin #{url}")
  system("git push origin main")
end