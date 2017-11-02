class CreatePilots < ActiveRecord::Migration[5.1]
  def change
    create_table :pilots do |t|
      t.string :nombrec
      t.string :ncedula
      t.string :nlicencia
      t.date :fcontratacion

      t.timestamps
    end
  end
end
