Settings = OpenStruct.new(YAML.load_file(Rails.root.join('config/settings.yml'))[Rails.env])

