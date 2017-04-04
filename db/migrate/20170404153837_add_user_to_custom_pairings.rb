class AddUserToCustomPairings < ActiveRecord::Migration
  def change
    add_column :custom_pairings, :user_id, :integer
  end
end
