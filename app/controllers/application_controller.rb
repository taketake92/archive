class ApplicationController < ActionController::Base

	require 'net/http'
	require 'uri'
	require 'json'
  
  protect_from_forgery with: :exception
  
  private
  def myprofile(myAccessToken)
  	json = "https://api.instagram.com/v1/users/self/?access_token=#{myAccessToken}"
		uri = URI.parse(json)
		json = Net::HTTP.get(uri)
		result = JSON.parse(json)
		return result
  end
  
  
  	
end
