# frozen_string_literal: true

# This is standard Rails way to autoload gem’s contents dynamically as an “engine”
# @see https://guides.rubyonrails.org/engines.html Rails guide on engines
#
require "rails"

module Activeadmin
	class Engine < ::Rails::Engine
	end
end
