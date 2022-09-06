require 'rails_helper'
require_relative '../support/devise'

RSpec.describe AdminController, type: :controller do
    # When admin user tries to access '/admin' => 200 ok
    describe "GET /admin" do
        login_admin

        context "from login admin user" do
            it "should return 200:OK" do
                get :index
                expect(response).to have_http_status(:success)
            end
        end
    end

    # When non-admin user tries to access '/admin' => 302 redirect
    describe "GET /admin" do
        login_user

        context "from login non-admin user" do
            it "should return 302, redirect" do
                get :index
                expect(response).to have_http_status(:redirect)
            end
        end
    end
end