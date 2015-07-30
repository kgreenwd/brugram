class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @photos = Photo.where(public: true).order(created_at: :desc)
  end

end