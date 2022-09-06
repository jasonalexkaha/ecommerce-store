require 'rails_helper'
require_relative '../support/devise'

RSpec.describe AdminController, type: :controller do
    describe "GET /admin" do
        login_admin

        context "from login user" do
            it "should return 200:OK" do
                get :index
                expect(response).to have_http_status(:success)
            end
        end
    end
end