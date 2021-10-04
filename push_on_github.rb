require 'dotenv'
Dotenv.load('.env')
def push_on_github(date, file_name)
  system('git add .')
  system("git commit -m 'push #{file_name} - #{date}'")
  system("git push origin main")
end