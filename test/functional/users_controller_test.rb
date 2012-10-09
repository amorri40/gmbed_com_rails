require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { aim: @user.aim, bio: @user.bio, dob: @user.dob, dst: @user.dst, email: @user.email, homepage: @user.homepage, last_activity: @user.last_activity, last_visit: @user.last_visit, msn: @user.msn, occ: @user.occ, password: @user.password, reg_time: @user.reg_time, timezone: @user.timezone, username: @user.username, yim: @user.yim }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    put :update, id: @user, user: { aim: @user.aim, bio: @user.bio, dob: @user.dob, dst: @user.dst, email: @user.email, homepage: @user.homepage, last_activity: @user.last_activity, last_visit: @user.last_visit, msn: @user.msn, occ: @user.occ, password: @user.password, reg_time: @user.reg_time, timezone: @user.timezone, username: @user.username, yim: @user.yim }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
