class UsersController < ApplicationController
	
	before_action :set_user, only: [:show, :edit, :update, :destory]
	
	def index
		
		@couponlists = CouponListMaster.all.page(params[:page]).per(3)
		
	end
	
	def show
  end
	
	def new
		@user = User.new
	end
	
	def create
		@user = User.new(message_params)
		
		if @user.save
			flash[:success] = 'User が正常に投稿されました。'
			redirect_to @user
		else
			flash.now[:danger] = 'User が投稿できませんでした。'
			render :new
		end
	end
	
	def edit
  end
	
	def update
    if @user.update(user_params)
      flash[:success] = 'User は正常に更新されました'
      redirect_to @user
    else
      flash.now[:danger] = 'User は更新されませんでした'
      render :edit
    end
  end
	
	 def destroy
    @user.destroy
    flash[:success] = 'User は正常に削除されました'
    redirect_to users_url
  end
	
	private
	def set_user
		# @user = User.find(params[:id])
		# @user = User.find(1)
		
		# user_accesstoken = User.find(1).insta_access_token_id
		# @user = myprofile(user_accesstoken)
		# @users_list = mylist(user_accesstoken)
	end

	#strong parameter
	def user_params
		# params.require(:user).permit(:client_id, :insta_access_token_id)
	end

end
