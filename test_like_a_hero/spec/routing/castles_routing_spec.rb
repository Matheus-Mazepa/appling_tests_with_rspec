require "rails_helper"

RSpec.describe CastlesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/castles").to route_to("castles#index")
    end

    it "routes to #new" do
      expect(get: "/castles/new").to route_to("castles#new")
    end

    it "routes to #show" do
      expect(get: "/castles/1").to route_to("castles#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/castles/1/edit").to route_to("castles#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/castles").to route_to("castles#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/castles/1").to route_to("castles#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/castles/1").to route_to("castles#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/castles/1").to route_to("castles#destroy", id: "1")
    end
  end
end
