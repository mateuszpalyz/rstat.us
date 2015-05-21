seed_file = "#{Rails.root}/db/seeds/#{Rails.env}.rb"
require seed_file if File.exists?(seed_file)
