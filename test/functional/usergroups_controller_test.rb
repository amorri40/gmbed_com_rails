require 'test_helper'

class UsergroupsControllerTest < ActionController::TestCase
  setup do
    @usergroup = usergroups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usergroups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usergroup" do
    assert_difference('Usergroup.count') do
      post :create, usergroup: { html_post: @usergroup.html_post, html_pre: @usergroup.html_pre, name: @usergroup.name, perms: @usergroup.perms, user_title: @usergroup.user_title }
    end

    assert_redirected_to usergroup_path(assigns(:usergroup))
  end

  test "should show usergroup" do
    get :show, id: @usergroup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usergroup
    assert_response :success
  end

  test "should update usergroup" do
    put :update, id: @usergroup, usergroup: { html_post: @usergroup.html_post, html_pre: @usergroup.html_pre, name: @usergroup.name, perms: @usergroup.perms, user_title: @usergroup.user_title }
    assert_redirected_to usergroup_path(assigns(:usergroup))
  end

  test "should destroy usergroup" do
    assert_difference('Usergroup.count', -1) do
      delete :destroy, id: @usergroup
    end

    assert_redirected_to usergroups_path
  end
end
