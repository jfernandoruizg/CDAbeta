class Airplanes < ActiveRecord::Migration[5.1]
  def change
    add_column :airplanes,:pilot_id,:integer
  end
end
