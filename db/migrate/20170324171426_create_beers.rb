class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.references :cheese, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
