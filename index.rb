require_relative 'add_text_to_readme'
require_relative 'push_on_github'

date = Time.now
file_name = "readme.md"

add_text_to_readme(date, file_name)
push_on_github(date, file_name)
