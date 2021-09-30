require_relative 'add_text_to_readme'
require_relative 'push_on_github'

random = [2,4,6,8,10,12]
date = Time.now
file_name = "readme.md"

random.sample.times do
  add_text_to_readme(date, file_name)
  push_on_github(date, file_name)
end