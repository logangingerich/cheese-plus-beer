class CreateCustomPairings < ActiveRecord::Migration
  def change
    create_table :custom_pairings do |t|
      t.string :beer
      t.string :cheese
      t.text :notes

      t.timestamps null: false
    end
  end
end
