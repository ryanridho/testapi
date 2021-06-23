class CreateDokters < ActiveRecord::Migration[6.1]
  def change
    create_table :dokters do |t|
      t.references :rumahsakit, null: false, foreign_key: true
      t.string :nama

      t.timestamps
    end
  end
end
