# frozen_string_literal: true

require "autoprefixer-rails"
require "sassc-rails"

module FormtasticTristateRadio

	# This is standard Rails way to autoload gem’s contents dynamically as an “engine”
	# @see https://guides.rubyonrails.org/engines.html Rails guide on engines
	#
	# module Rails
	class Engine < ::Rails::Engine
		initializer "bootstrap.assets" do |app|
			app.config.assets.paths << root.join("assets", "stylesheets").to_s
		end
	end
	# end

end
