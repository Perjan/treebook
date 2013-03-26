require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
	test "that /login route ope the login page" do
		get '/login'
		assert_response :success
	end	

	test "that /logout route ope the login page" do
		get '/logout'
		assert_response :redirect

		assert_redirected_to '/'
	end	

	test "that /register route open the login page" do
		get '/register'
		assert_response :success
	end	

	test "that a profile page works" do
		get '/perjanduro'
		assert_response :success		
	end


end