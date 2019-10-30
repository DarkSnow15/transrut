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

Rails.application.config.assets.precompile += %w( icon/logo.png )
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
Rails.application.config.assets.precompile += %w( icon/avatar-06.jpg )
Rails.application.config.assets.precompile += %w( icon/avatar-02.jpg )
Rails.application.config.assets.precompile += %w( icon/avatar-03.jpg )
Rails.application.config.assets.precompile += %w( icon/avatar-04.jpg )
Rails.application.config.assets.precompile += %w( icon/avatar-05.jpg )

# Nueva plantilla

Rails.application.config.assets.precompile += %w( vendors/simple-line-icons/css/simple-line-icons.css )
Rails.application.config.assets.precompile += %w( vendors/flag-icon-css/css/flag-icon.min.css )
Rails.application.config.assets.precompile += %w( vendors/css/vendor.bundle.base.css )
Rails.application.config.assets.precompile += %w( vendors/daterangepicker/daterangepicker.css )
Rails.application.config.assets.precompile += %w( vendors/chartist/chartist.min.css )
Rails.application.config.assets.precompile += %w( css/style.css )
# JS
Rails.application.config.assets.precompile += %w( vendors/js/vendor.bundle.base.js )
Rails.application.config.assets.precompile += %w( vendors/chart.js/Chart.min.js )
Rails.application.config.assets.precompile += %w( vendors/moment/moment.min.js )
Rails.application.config.assets.precompile += %w( vendors/daterangepicker/daterangepicker.js )
Rails.application.config.assets.precompile += %w( vendors/chartist/chartist.min.js )
Rails.application.config.assets.precompile += %w( js/off-canvas.js )
Rails.application.config.assets.precompile += %w( js/misc.js )
Rails.application.config.assets.precompile += %w( js/dashboard.js )
