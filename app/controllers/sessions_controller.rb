class SessionsController < ApplicationController

  def create
    if(request.path_info == "/auth/instagram/callback")
      auth = request.env["omniauth.auth"]
      session[:instagram_oauth_token] = auth.credentials.token
      redirect_to "/instagram", :notice => "サインイン！"
    else
      redirect_to root_url
    end
  end
 
  def destroy
    session[:instagram_oauth_token] = nil
    redirect_to root_url, :notice => "サインアウト！"
  end
end
