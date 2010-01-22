require 'test_helper'

class WedNightSuppersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wed_night_suppers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wed_night_supper" do
    assert_difference('WedNightSupper.count') do
      post :create, :wed_night_supper => { }
    end

    assert_redirected_to wed_night_supper_path(assigns(:wed_night_supper))
  end

  test "should show wed_night_supper" do
    get :show, :id => wed_night_suppers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => wed_night_suppers(:one).to_param
    assert_response :success
  end

  test "should update wed_night_supper" do
    put :update, :id => wed_night_suppers(:one).to_param, :wed_night_supper => { }
    assert_redirected_to wed_night_supper_path(assigns(:wed_night_supper))
  end

  test "should destroy wed_night_supper" do
    assert_difference('WedNightSupper.count', -1) do
      delete :destroy, :id => wed_night_suppers(:one).to_param
    end

    assert_redirected_to wed_night_suppers_path
  end
end
