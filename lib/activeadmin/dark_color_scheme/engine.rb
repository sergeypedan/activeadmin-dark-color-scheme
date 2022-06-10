# frozen_string_literal: true

require "sassc-rails"

module FormtasticTristateRadio

	# This is standard Rails way to autoload gem’s contents dynamically as an “engine”
	# @see https://guides.rubyonrails.org/engines.html Rails guide on engines
	#
	class Engine < ::Rails::Engine
		initializer "activeadmin_dark_color_scheme.assets" do |app|
			app.config.assets.paths << root.join("assets", "stylesheets").to_s
		end
	end

end
