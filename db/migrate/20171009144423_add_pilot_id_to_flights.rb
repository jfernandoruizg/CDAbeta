class AddPilotIdToFlights < ActiveRecord::Migration[5.1]
  def change
    add_reference :flights, :pilot, foreign_key: true
  end
end
