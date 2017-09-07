require 'test_helper'

class TuristsControllerTest < ActionController::TestCase
  setup do
    @turist = turists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:turists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create turist" do
    assert_difference('Turist.count') do
      post :create, turist: { cost: @turist.cost, crust: @turist.crust, image: @turist.image, name: @turist.name, sauce: @turist.sauce, toppings: @turist.toppings }
    end

    assert_redirected_to turist_path(assigns(:turist))
  end

  test "should show turist" do
    get :show, id: @turist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @turist
    assert_response :success
  end

  test "should update turist" do
    patch :update, id: @turist, turist: { cost: @turist.cost, crust: @turist.crust, image: @turist.image, name: @turist.name, sauce: @turist.sauce, toppings: @turist.toppings }
    assert_redirected_to turist_path(assigns(:turist))
  end

  test "should destroy turist" do
    assert_difference('Turist.count', -1) do
      delete :destroy, id: @turist
    end

    assert_redirected_to turists_path
  end
end
