class AdminController < ApplicationController
    before_action :is_admin?
    def index
    end
end
