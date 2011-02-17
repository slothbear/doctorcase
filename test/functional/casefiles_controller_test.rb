require 'test_helper'

class CasefilesControllerTest < ActionController::TestCase
  setup do
    @casefile = casefiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:casefiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create casefile" do
    assert_difference('Casefile.count') do
      post :create, :casefile => @casefile.attributes
    end

    assert_redirected_to casefile_path(assigns(:casefile))
  end

  test "should show casefile" do
    get :show, :id => @casefile.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @casefile.to_param
    assert_response :success
  end

  test "should update casefile" do
    put :update, :id => @casefile.to_param, :casefile => @casefile.attributes
    assert_redirected_to casefile_path(assigns(:casefile))
  end

  test "should destroy casefile" do
    assert_difference('Casefile.count', -1) do
      delete :destroy, :id => @casefile.to_param
    end

    assert_redirected_to casefiles_path
  end
end
