class UsersController < ApplicationController
  layout "user"
    # You can override the automatic layout conventions in your controllers
    # by using the layout declaration in the controller.
    # With this declaration, all methods within UsersController 
    # will use app/views/layouts/user.html.erb for their layout.

    before_filter :authenticate, :only => [:index, :edit, :update, :destroy]
    before_filter :correct_user, :only => [:edit, :update]
    before_filter :admin_user,   :only => :destroy


  def index
    @users = User.paginate(:page => params[:page])
    @title = "All users"
  end

  def show
    @user = User.find(params[:id])
    @title = @user.name
  end

  def new
    @user = User.new
    @title = "SignUp"
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      redirect_to @user, :flash => { :success => "Welcome to the Book of Jack!" }
    else
      @title = "SignUp"
      render 'new'
    end      
  end

  def edit
    @title = "Edit user"
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = "Profile updated."
      redirect_to @user
    else
      @title = "Edit user"
      render 'edit'
    end
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_path
  end
  

  private
    
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end
    
    def authenticate
      deny_access unless signed_in?
    end

    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end
end


