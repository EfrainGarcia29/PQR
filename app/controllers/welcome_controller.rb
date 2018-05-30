class WelcomeController < ApplicationController
  def index
	  @users= User.all
	  @rols= Rol.all
  end
end
