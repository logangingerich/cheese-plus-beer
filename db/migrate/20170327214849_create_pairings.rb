class CreatePairings < ActiveRecord::Migration
  def change
    create_table :pairings do |t|
      t.references :cheese, index: true, foreign_key: true
      t.references :beer, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.integer :votes
      t.text :notes

      t.timestamps null: false
    end
  end
end
