# frozen_string_literal: true

module PriceMe
  module Parsers
    CONFIG_PATH = 'config/'
    CONFIG_FILES = {
      global: 'global.json'
    }.freeze

    # :nodoc
    class Global
      class << self
        # TODO: Make sure this sorts out the different categories
        def read_config
          load_data(:global)
        end

        private

        def load_data(config)
          JSON.parse(File.read(config_file(config)), symbolize_names: true)
        end

        def config_file(config)
          CONFIG_PATH + CONFIG_FILES[config]
        end
      end
    end
  end
end
