# frozen_string_literal: true

module PriceMe
  module Reducers
    # :nodoc
    class Global
      class << self
        def base_price(config)
          @config = config
          materials_cost
        end

        # TODO: Have a base public interface and move from there
        def materials_cost
          @config[:materials].reduce(0) do |sum, material|
            sum + material_list_price(material)
          end
        end

        def material_list_price(material)
          material[:unit_price] * material[:quantity]
        end
      end
    end
  end
end
