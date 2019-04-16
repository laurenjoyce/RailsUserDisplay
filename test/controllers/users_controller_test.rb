require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { name: "Tarzan" } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { id: @user.id, name: @user.name } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end

  test "should get index in json format" do
    get users_url(format: :json)
    assert_response :success
  end

  test "should create user json format" do
    assert_difference('User.count') do
      post users_url(format: :json), params: { user: { name: "Tarzan" } }
    end

    assert_equal JSON.parse(response.body)["id"], User.find_by(name: "Tarzan").id
  end

  test "should show user in json format" do
    get users_url(format: :json), params: { user: { id: @user.id } }
    assert_response :success
  end

  test "should update user in json format" do
    patch user_url(@user, format: :json), params: { user: { id: @user.id, name: "Tarzan" } }

    assert_response :success
  end

  test "should destroy user in json format" do
    assert_difference('User.count', -1) do
      delete user_url(@user, format: :json)
    end

    assert_equal 200, response.status 
  end
end
