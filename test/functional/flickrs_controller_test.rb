require 'test_helper'

class FlickrsControllerTest < ActionController::TestCase
  setup do
    @flickr = flickrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:flickrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flickr" do
    assert_difference('Flickr.count') do
      post :create, flickr: {  }
    end

    assert_redirected_to flickr_path(assigns(:flickr))
  end

  test "should show flickr" do
    get :show, id: @flickr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flickr
    assert_response :success
  end

  test "should update flickr" do
    put :update, id: @flickr, flickr: {  }
    assert_redirected_to flickr_path(assigns(:flickr))
  end

  test "should destroy flickr" do
    assert_difference('Flickr.count', -1) do
      delete :destroy, id: @flickr
    end

    assert_redirected_to flickrs_path
  end
end
