# frozen_string_literal: true

# :nodoc
class PriceMe
  CONFIG_PATH = 'config/'
  CONFIG_FILES = {
    global: 'global.json'
  }.freeze

  def read_config
    @global = load_data(:global)
  end

  def materials_cost
    @global[:materials].reduce(0) do |sum, material|
      sum + material_list_price(material)
    end
  end

  private

  def material_list_price(material)
    material[:unit_price] * material[:quantity]
  end

  def load_data(config)
    JSON.parse(File.read(config_file(config)), symbolize_names: true)
  end

  def config_file(config)
    CONFIG_PATH + CONFIG_FILES[config]
  end
end
