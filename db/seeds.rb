Bullet = "\u2022"
# Run all seed files in seeds/deployment directory.
# These are deployed into production.
if Rails.env != "test"
  puts "\n#{Bullet} Deployment Seeding:".green
  puts '--------------------------------------------------------------------------------------------'.green
  Dir[File.join(Rails.root, 'db', 'seeds', 'deployment', '*.rb')].sort.each { |seed| load seed }

  # Run all seed files in seeds/development directory.
  # These are not deployed into production.
  # command: 
  # rake db:seed development=yes
  # if ENV["development"] || ENV["dev"] || ENV["developer"]
  #   puts "\n#{Bullet} Development Seeding:".green
  #   puts '--------------------------------------------------------------------------------------------'.green
  #   Dir[File.join(Rails.root, 'db', 'seeds', 'development', '*.rb')].sort.each { |seed| load seed }
  # end
end