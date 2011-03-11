require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'front'" do
    it "should be successful" do
      get 'front'
      response.should be_success
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
  end

  describe "GET 'intro'" do
    it "should be successful" do
      get 'intro'
      response.should be_success
    end
  end
  
  describe "GET 'map'" do
    it "should be successful" do
      get 'map'
      response.should be_success
    end
  end

  describe "GET 'bibli'" do
    it "should be successful" do
      get 'bibli'
      response.should be_success
    end
  end

  describe "GET 'colophon'" do
    it "should be successful" do
      get 'colophon'
      response.should be_success
    end
  end

  describe "GET 'back'" do
    it "should be successful" do
      get 'back'
      response.should be_success
    end
  end

  describe "GET 'antiquity'" do
    it "should be successful" do
      get 'antiquity'
      response.should be_success
    end
  end
  
end
