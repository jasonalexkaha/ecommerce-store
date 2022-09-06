require 'rails_helper'
require_relative '../support/devise'

RSpec.describe BrandsController, type: :controller do
    describe "GET /brands" do
        login_user

        context "from basic user" do
            it "should return 200:OK" do
                get :index
                expect(response).to have_http_status(:success)
            end
        end
    end

    describe "GET /brands/new" do
        login_user

        context "from non-admin user" do
            it "should return 302, redirect" do
                get :new
                expect(response).to have_http_status(:redirect)
            end
        end
    end

    describe "GET /brands/new" do
        login_admin

        context "from admin user" do
            it "should return 200, ok" do
                get :new
                expect(response).to have_http_status(:success)
            end
        end
    end
end