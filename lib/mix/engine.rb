require 'rails'

module Mix
  class Engine < ::Rails::Engine
    paths["app/assets"] << "src/"
  end
end
