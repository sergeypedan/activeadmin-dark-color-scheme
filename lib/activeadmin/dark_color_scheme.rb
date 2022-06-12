# frozen_string_literal: true

require_relative "dark_color_scheme/version"
require_relative "dark_color_scheme/engine"

module Activeadmin
	module DarkColorScheme
		class << self

			def gem_path
				@gem_path ||= File.expand_path "../../app", File.dirname(__FILE__)
			end

			def assets_path
				@assets_path ||= File.join gem_path, "assets"
			end

			def stylesheets_path
				File.join assets_path, "stylesheets"
			end

		end
	end
end
