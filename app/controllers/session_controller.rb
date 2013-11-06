class SessionController < ApplicationController
  def login
    @user = User.new
  end
end
