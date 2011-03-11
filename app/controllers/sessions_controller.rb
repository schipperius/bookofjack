class SessionsController < ApplicationController
  layout "user"
    # You can override the automatic layout conventions in your controllers
    # by using the layout declaration in the controller.
    # With this declaration, all methods within UsersController 
    # will use app/views/layouts/user.html.erb for their layout.

  def new
    @title = "SignIn"
  end
  
  def create
    user = User.authenticate(params[:session][:email],
                             params[:session][:password])
    if user.nil?
      flash.now[:error] = "Invalid email/password combination."
      @title = "SignIn"
      render 'new' 
    else
      sign_in user
      redirect_back_or user
    end
  end
  
  def destroy
    sign_out
    redirect_to root_path
  end
end

