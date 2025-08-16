require "rails_helper"

RSpec.describe PsicologosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/psicologos").to route_to("psicologos#index")
    end

    it "routes to #show" do
      expect(get: "/psicologos/1").to route_to("psicologos#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/psicologos").to route_to("psicologos#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/psicologos/1").to route_to("psicologos#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/psicologos/1").to route_to("psicologos#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/psicologos/1").to route_to("psicologos#destroy", id: "1")
    end
  end
end
