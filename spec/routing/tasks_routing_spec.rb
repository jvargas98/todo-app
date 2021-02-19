require "rails_helper"

RSpec.describe TasksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/lists/1/tasks").to route_to("tasks#index", list_id: "1")
    end

    it "routes to #new" do
      expect(get: "/lists/1/tasks/new").to route_to("tasks#new", list_id: "1")
    end

    it "routes to #show" do
      expect(get: "/lists/1/tasks/1").to route_to("tasks#show", id: "1", list_id: "1")
    end

    it "routes to #edit" do
      expect(get: "/lists/1/tasks/1/edit").to route_to("tasks#edit", id: "1", list_id: "1")
    end

    it "routes to #create" do
      expect(post: "/lists/1/tasks").to route_to("tasks#create", list_id: "1")
    end

    it "routes to #update via PUT" do
      expect(put: "/lists/1/tasks/1").to route_to("tasks#update", id: "1", list_id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/lists/1/tasks/1").to route_to("tasks#update", id: "1", list_id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/lists/1/tasks/1").to route_to("tasks#destroy", id: "1", list_id: "1")
    end
  end
end
