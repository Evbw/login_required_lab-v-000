require 'pry'

class SessionsController < ApplicationController
  
  def new
  end

  def create
    binding.pry
    if !params[:name].present?
      redirect_to root_path
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    if session[:name]
      session.delete :name
    else
      session[:name] = nil
    end
  end

end
