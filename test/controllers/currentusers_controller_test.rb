require 'test_helper'

class CurrentusersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @currentuser = currentusers(:one)
  end

  test "should get index" do
    get currentusers_url
    assert_response :success
  end

  test "should get new" do
    get new_currentuser_url
    assert_response :success
  end

  test "should create currentuser" do
    assert_difference('Currentuser.count') do
      post currentusers_url, params: { currentuser: { cp: @currentuser.cp, dir: @currentuser.dir, dni: @currentuser.dni, email: @currentuser.email, name: @currentuser.name, number: @currentuser.number, password: @currentuser.password, telephone: @currentuser.telephone } }
    end

    assert_redirected_to currentuser_url(Currentuser.last)
  end

  test "should show currentuser" do
    get currentuser_url(@currentuser)
    assert_response :success
  end

  test "should get edit" do
    get edit_currentuser_url(@currentuser)
    assert_response :success
  end

  test "should update currentuser" do
    patch currentuser_url(@currentuser), params: { currentuser: { cp: @currentuser.cp, dir: @currentuser.dir, dni: @currentuser.dni, email: @currentuser.email, name: @currentuser.name, number: @currentuser.number, password: @currentuser.password, telephone: @currentuser.telephone } }
    assert_redirected_to currentuser_url(@currentuser)
  end

  test "should destroy currentuser" do
    assert_difference('Currentuser.count', -1) do
      delete currentuser_url(@currentuser)
    end

    assert_redirected_to currentusers_url
  end
end
