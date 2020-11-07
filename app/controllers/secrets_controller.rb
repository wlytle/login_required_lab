class SecretsController < ApplicationController
  before_action :authorize

    def index

    end

  def authorize
    redirect_to home_path unless logged_in?
  end
end
