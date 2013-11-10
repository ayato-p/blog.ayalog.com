# -*- coding: utf-8 -*-
class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_name params[:name]
    if user and user.authenticate params[:password]
      session[:user_id] = user.id
      redirect_to root_path
    else
      redirect_to login_url, alert: "無効なユーザー/パスワードの組み合わせｗ"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
