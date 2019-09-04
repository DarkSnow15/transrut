# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w( main.js )

Rails.application.config.assets.precompile += %w( font-face.css )
Rails.application.config.assets.precompile += %w( theme.css )
Rails.application.config.assets.precompile += %w( vendor/font-awesome-4.7/css/font-awesome.min.css )
Rails.application.config.assets.precompile += %w( vendor/font-awesome-5/css/fontawesome-all.min.css )
Rails.application.config.assets.precompile += %w( vendor/mdi-font/css/material-design-iconic-font.min.css )
Rails.application.config.assets.precompile += %w( vendor/bootstrap-4.1/bootstrap.min.css )
Rails.application.config.assets.precompile += %w( vendor/animsition/animsition.min.css )
Rails.application.config.assets.precompile += %w( vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css )
Rails.application.config.assets.precompile += %w( vendor/wow/animate.css )
Rails.application.config.assets.precompile += %w( vendor/css-hamburgers/hamburgers.min.css )
Rails.application.config.assets.precompile += %w( vendor/slick/slick.css )
Rails.application.config.assets.precompile += %w( vendor/css-hamburgers/hamburgers.min.css )
Rails.application.config.assets.precompile += %w( vendor/select2/select2.min.css)
Rails.application.config.assets.precompile += %w( vendor/perfect-scrollbar/perfect-scrollbar.css)
Rails.application.config.assets.precompile += %w( vendor/vector-map/jqvmap.min.css)
Rails.application.config.assets.precompile += %w( icon/logo-white.png )
Rails.application.config.assets.precompile += %w( icon/avatar-01.jpg )
