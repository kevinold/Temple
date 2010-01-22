require 'test_helper'

class PrayerandpraisesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prayerandpraises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prayerandpraise" do
    assert_difference('Prayerandpraise.count') do
      post :create, :prayerandpraise => { }
    end

    assert_redirected_to prayerandpraise_path(assigns(:prayerandpraise))
  end

  test "should show prayerandpraise" do
    get :show, :id => prayerandpraises(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => prayerandpraises(:one).to_param
    assert_response :success
  end

  test "should update prayerandpraise" do
    put :update, :id => prayerandpraises(:one).to_param, :prayerandpraise => { }
    assert_redirected_to prayerandpraise_path(assigns(:prayerandpraise))
  end

  test "should destroy prayerandpraise" do
    assert_difference('Prayerandpraise.count', -1) do
      delete :destroy, :id => prayerandpraises(:one).to_param
    end

    assert_redirected_to prayerandpraises_path
  end
end
