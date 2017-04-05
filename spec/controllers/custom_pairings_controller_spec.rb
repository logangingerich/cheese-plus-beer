require 'rails_helper'

RSpec.describe CustomPairingsController, type: :controller do
  before :each do
     controller.class.skip_before_action :authenticate_user!
  end
  setup do
    @request.env['HTTP_REFERER'] = 'http://test.com/sessions/new'
  end
  let(:custom_pairing) { CustomPairing.create!(cheese: "cheese", beer: "beer") }
  let(:user) { User.create!(email: "user@bloccit.com", password: "password", password_confirmation: "password") }

  describe "PUT update" do
    it "updates custom_pairing with expected attributes" do
      new_notes = 'test'

      put :update, id: custom_pairing.id, custom_pairing: {notes: new_notes}

      updated_custom_pairing = assigns(:custom_pairing)
      expect(updated_custom_pairing.id).to eq custom_pairing.id
      expect(updated_custom_pairing.notes).to eq new_notes
    end
  end

  describe "DELETE destroy" do
    it "deletes the custom_pairing" do
      delete :destroy, {id: custom_pairing.id}
      count = CustomPairing.where({id: custom_pairing.id}).size
      expect(count).to eq 0
    end
  end
end
