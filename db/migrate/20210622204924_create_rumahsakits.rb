class CreateRumahsakits < ActiveRecord::Migration[6.1]
  def change
    create_table :rumahsakits do |t|
      t.string :nama

      t.timestamps
    end
  end
end
