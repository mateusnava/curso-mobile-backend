path = Rails.root.join('config', 'mongoid.yml')
Mongoid.load!(path, Rails.env)
