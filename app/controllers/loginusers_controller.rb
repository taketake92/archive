class LoginusersController < ApplicationController
  def index
    @loginusers = LoginUser.all.page(params[:page])
  end

  def show
    @loginuser = LoginUser.find(params[:id])
  end

  def new
    @loginuser = LoginUser.new
  end

  def create
    @loginuser = LoginUser.new(user_params)

    if @loginuser.save
      flash[:success] = 'ユーザを登録しました。'
      redirect_to @loginuser
    else
      flash.now[:danger] = 'ユーザの登録に失敗しました。'
      render :new
    end
  end
  
  private

  def user_params
    params.require(:loginuser).permit(:nickname, :email, :password, :password_confirmation)
  end
end
