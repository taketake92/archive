class ApplicationController < ActionController::Base

# 	require 'net/http'
# 	require 'uri'
# 	require 'json'
  
#   protect_from_forgery with: :exception
  
#   private
#   def myprofile(myAccessToken)
#   	url = "https://api.instagram.com/v1/users/3952372017/?access_token=#{myAccessToken}"
  	
# #   	url = "https://api.instagram.com/v1/users/3952372017/follows/access_token=#{myAccessToken}&count=3"
  	
#   	    url = "https://api.instagram.com/v1/users/self/requested-by?access_token=#{myAccessToken}&count=3&response_type=token&scope=public_content"
  	
# 		return JSON.parse(Net::HTTP.get(URI.parse(url)))
#   end
  
#   def mylist(myAccessToken)
#   	url = "https://api.instagram.com/v1/users/self/media/recent?access_token=#{myAccessToken}"
# 		return JSON.parse(Net::HTTP.get(URI.parse(url)))
#   end
  
  	
end
