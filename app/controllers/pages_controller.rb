class PagesController < ApplicationController
  before_action :authenticate_user!
  def home
    @days = Day.all
    @user = current_user
  end
end
