require 'rails_helper'

RSpec.describe "Foo::Students", type: :request do
  describe "GET /foo/students" do
    it "works! (now write some real specs)" do
      get foo_students_path
      expect(response).to have_http_status(200)
    end
  end
end
