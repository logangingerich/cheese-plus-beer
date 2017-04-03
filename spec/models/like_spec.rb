require 'rails_helper'

RSpec.describe Like, type: :model do
  describe "attributes" do
    it { should belong_to(:pairing) }
    it { should belong_to(:user) }
    it { should have_db_column(:pairing_id) }
    it { should have_db_column(:user_id) }
    it { should have_db_column(:created_at) }
    it { should have_db_column(:updated_at) }
  end
end
