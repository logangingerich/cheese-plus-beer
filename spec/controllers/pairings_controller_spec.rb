require 'rails_helper'

RSpec.describe PairingsController, type: :controller do
  before :each do
     controller.class.skip_before_action :authenticate_user!
  end
  setup do
    @request.env['HTTP_REFERER'] = 'http://test.com/sessions/new'
  end
  let(:cheese) { Cheese.create!(name: "Cheddar") }
  let(:beer) { Beer.create!(name: "Ale") }
  let(:pairing) { Pairing.create!(cheese: cheese, beer: beer) }

  describe "PUT update" do
    it "updates pairing with expected attributes" do
      new_notes = 'test'

      put :update, id: pairing.id, pairing: {notes: new_notes}

      updated_pairing = assigns(:pairing)
      expect(updated_pairing.id).to eq pairing.id
      expect(updated_pairing.notes).to eq new_notes
    end
  end
end
