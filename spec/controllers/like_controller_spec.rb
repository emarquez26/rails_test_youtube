require "rails_helper"

RSpec.describe LikesController, :type => :controller do
  let(:user){ FactoryGirl.create(:user) }
  let(:user_like){ FactoryGirl.create(:like) }

  describe "GET likes#index" do
    it "responds successfully with an HTTP 200 status code" do
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
    it "renders the index template" do
      expect(response).to render_template("devise/mailer/confirmation_instructions")
    end
  end

  before(:each) do
    sign_in user
  end

  describe "POST #create" do
    it "create new like for a video" do
      expect{
        post :create, video_id: user_like.video_id
      }.to change(Like, :count).by(1)
    end
    it "not create new like for a video" do
      expect{
        post :create
      }.to_not change(Like, :count)
    end
  end
  describe "delete #destroy" do
    it "not delete the like" do
      expect{
       delete :destroy, :id => 1
      }.to change(Like,:count).by(0)
    end
  end
end