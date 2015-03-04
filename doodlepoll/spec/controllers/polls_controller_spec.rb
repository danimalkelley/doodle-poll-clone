require 'rails_helper'

RSpec.describe PollsController, :type => :controller do
  let(:test_poll) {FactoryGirl.create(:poll)}

  describe "GET index" do
    it "responds with a good status" do
      get :index
      expect(response.status).to be(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template(:index)
    end

    it "assigns @polls" do
      get :index
      expect(assigns(:polls)).to eq([test_poll])
    end

  end

  describe "GET show" do
    it "responds with a good status" do
      get :show, id: test_poll.id
      expect(response.status).to be(200)
    end

    it "renders the show template" do
      get :show, id: test_poll.id
      expect(response).to render_template(:show)
    end

    it "assigns @poll" do
      get :show, id: test_poll.id
      expect(assigns(:poll)).to eq(test_poll)
    end
  end

  describe "GET new " do
    it "responds with a good status" do
      get :new
      expect(response.status).to be 200
    end

    it "renders thew new template" do
      get :new
      expect(response).to render_template(:new)
    end

    it "assigns @poll" do
      get :new
      expect(assigns(:poll)).to be_a(Poll)
    end
  end


end
