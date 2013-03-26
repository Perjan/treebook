require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "a user should enter their first name" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:first_name].empty?
  end

  test "a user should enter their last name" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:last_name].empty?
  end

  test "a user should enter their profile name" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:profile_name].empty?
  end

  test "a user should have a unique profile name" do
    user = User.new

    user.profile_name = users(:perjan).profile_name

  	assert !user.save
  	assert !user.errors[:profile_name].empty?
  end

  test "a user should have a profile name without spaces" do
  	user = User.new

  	user.profile_name = "my ori sdsd"

  	assert !user.save
  	assert !user.errors[:profile_name].empty?

  	assert user.errors[:profile_name].include?("Must be formated correctly.")
  end

  test "a user should have a correctly formated profile name" do
    user = User.new(first_name: "Perjan", last_name: "Duro", email: 'perjan@me.com')
    user.password = user.password_confirmation = "password"

    user.profile_name = 'perjanduro1'
    assert user.valid?
  end


end
