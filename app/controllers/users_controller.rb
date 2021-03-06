class UsersController < ApplicationController
  before_filter :signed_in_user, 
  only: [:uni, :index, :edit, :update, :show, :destroy, :following, :followers]
  
  before_filter :correct_user,   only: [:edit, :update]
  before_filter :admin_user,     only: :destroy

  def following
    @title = "Following"
    @user = User.find(params[:id])
    @users = @user.followed_users.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end

  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])
  end

  def new
    @user = User.new
  end

  def new_vorlesung
    @user = User.new
  end

  def new_semester
    @user = User.new
  end

  def new_uni
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Willkommen auf Uniphobia!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(params[:user])
      flash[:success] = "Dein Profil wurde upgedated!"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end

  def index
    @users = User.paginate( per_page: 20, 
                            page: params[:page],
                            conditions: ['customer = ?', true],
                            order: 'name')
  end

  def uni
    @users = User.paginate( per_page: 20, 
                            page: params[:page],
                            conditions: ['uni = ?', true],
                            order: 'name')
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_url
  end

  private

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end

    def admin_user
        redirect_to(root_path) unless current_user.admin?
    end
end