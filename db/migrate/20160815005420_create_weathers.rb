class CreateWeathers < ActiveRecord::Migration[5.0]
  def change
    create_table :weathers do |t|
      t.string :location
      t.string :sensor
      t.integer :humidity
      t.integer :temperature

      t.timestamps
    end
  end
end
