class AddTypeairplaneIdToAirplanes < ActiveRecord::Migration[5.1]
  def change
    add_reference :airplanes, :typeairplane, foreign_key: true
  end
end
