# frozen_string_literal: true

require 'rubygems'
require 'bundler'
Bundler.require(:default, ENV['ENV'].to_sym)
require 'json'

require 'price_me/parsers/global'
require 'price_me/reducers/global'

# :nodoc
module PriceMe
  class << self
    def bootstrap
      @global_config = PriceMe::Parsers::Global.read_config
    end

    def base_price
      PriceMe::Reducers::Global.base_price(@global_config)
    end
  end
end
