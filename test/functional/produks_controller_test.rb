require 'test_helper'

class ProduksControllerTest < ActionController::TestCase
  setup do
    @produk = produks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:produks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create produk" do
    assert_difference('Produk.count') do
      post :create, :produk => @produk.attributes
    end

    assert_redirected_to produk_path(assigns(:produk))
  end

  test "should show produk" do
    get :show, :id => @produk.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @produk.to_param
    assert_response :success
  end

  test "should update produk" do
    put :update, :id => @produk.to_param, :produk => @produk.attributes
    assert_redirected_to produk_path(assigns(:produk))
  end

  test "should destroy produk" do
    assert_difference('Produk.count', -1) do
      delete :destroy, :id => @produk.to_param
    end

    assert_redirected_to produks_path
  end
end
