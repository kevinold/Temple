require 'test_helper'

class SermonsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Sermon.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Sermon.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Sermon.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to sermon_url(assigns(:sermon))
  end
  
  def test_edit
    get :edit, :id => Sermon.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Sermon.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Sermon.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Sermon.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Sermon.first
    assert_redirected_to sermon_url(assigns(:sermon))
  end
  
  def test_destroy
    sermon = Sermon.first
    delete :destroy, :id => sermon
    assert_redirected_to sermons_url
    assert !Sermon.exists?(sermon.id)
  end
end
