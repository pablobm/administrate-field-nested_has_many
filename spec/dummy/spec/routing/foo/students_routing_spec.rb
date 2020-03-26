require "rails_helper"

RSpec.describe Foo::StudentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/foo/students").to route_to("foo/students#index")
    end

    it "routes to #new" do
      expect(:get => "/foo/students/new").to route_to("foo/students#new")
    end

    it "routes to #show" do
      expect(:get => "/foo/students/1").to route_to("foo/students#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/foo/students/1/edit").to route_to("foo/students#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/foo/students").to route_to("foo/students#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/foo/students/1").to route_to("foo/students#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/foo/students/1").to route_to("foo/students#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/foo/students/1").to route_to("foo/students#destroy", :id => "1")
    end
  end
end
