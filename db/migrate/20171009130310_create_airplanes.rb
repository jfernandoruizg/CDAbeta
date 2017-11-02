class CreateAirplanes < ActiveRecord::Migration[5.1]
  def change
    create_table :airplanes do |t|
      t.string :matricula
      t.string :tipo
      t.string :modelo
      t.integer :nasientos
      t.date :fadquisicion

      t.timestamps
    end
  end
end
