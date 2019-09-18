require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  let(:my_user) { create(:user) }

  describe "GET new" do 
    it "returns http success" do 
      get :new 
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST sessions" do 
    it "flashes #error with bad email address" do 
      post :create, params: { session: { email: "does not exist" } }
      expect(flash.now[:alert]).to be_present
    end

    it "renders #new with bad email address" do 
      post :create, params: { session: { email: "does not exist" } }
      expect(response).to render_template :new
    end
  end
end