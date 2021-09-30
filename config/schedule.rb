# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron
require_relative 'add_text_to_readme'
require_relative 'push_on_github'


# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
every 2.minutes do
  date = Time.now
  file_name = "readme.md"

  add_text_to_readme(date, file_name)
  push_on_github(date, file_name)
end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
