class LoginUsersController < ApplicationController
  def index
    @login_users = LoginUser.all.page(params[:page])
  end

  def show
    @login_user = LoginUser.find(params[:id])
  end

  def new
    @login_user = LoginUser.new
  end

  def create
    @login_user = LoginUser.new(user_params)

    if @login_user.save
      flash[:success] = 'ユーザを登録しました。'
      redirect_to @login_user
    else
      flash.now[:danger] = 'ユーザの登録に失敗しました。'
      render :new
    end
  end
  
  private

  def user_params
    params.require(:login_user).permit(:nickname, :email, :password, :password_confirmation)
  end
end
