class CreateTypeairplanes < ActiveRecord::Migration[5.1]
  def change
    create_table :typeairplanes do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
