class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.string :destino
      t.string :origen
      t.time :hsalida
      t.string :clasesdisponibles
      t.money :precio
      t.time :tevuelo

      t.timestamps
    end
  end
end
