#app/controllers/sessions_controller.rb
class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:session][:name].downcase)

    #Handle login
    if user
      if user.password == params[:session][:password]
        redirect_to :controller => 'squares', :action => 'list'
        login user
      else
        puts user.id
        flash[:notice] = 'Invalid user name / password'
        render 'new'
      end
    end
  end
end
