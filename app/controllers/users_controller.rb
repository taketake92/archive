class UsersController < ApplicationController
	
	require 'net/http'
	require 'uri'
	require 'json'
	
	def index
		myAccessToken = "3952372017.ca31a89.4fe957eeb5394da38982ed1dab967b7e"
		@user = myprofile(myAccessToken)
	end
	

end
