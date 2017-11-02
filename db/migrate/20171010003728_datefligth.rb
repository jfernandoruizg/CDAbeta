class Datefligth < ActiveRecord::Migration[5.1]
  def change
add_column :flights,:fsalida,:date
  end
end
