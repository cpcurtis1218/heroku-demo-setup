require 'rails_helper'

RSpec.describe "Mice", type: :request do
  describe "GET /mice" do
    it "works! (now write some real specs)" do
      get mice_path
      expect(response).to have_http_status(200)
    end
  end
end
