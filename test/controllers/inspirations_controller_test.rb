require 'test_helper'

class InspirationsControllerTest < ActionController::TestCase
  setup do
    @inspiration = inspirations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inspirations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inspiration" do
    assert_difference('Inspiration.count') do
      post :create, inspiration: { date: @inspiration.date, desc: @inspiration.desc, name: @inspiration.name }
    end

    assert_redirected_to inspiration_path(assigns(:inspiration))
  end

  test "should show inspiration" do
    get :show, id: @inspiration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inspiration
    assert_response :success
  end

  test "should update inspiration" do
    patch :update, id: @inspiration, inspiration: { date: @inspiration.date, desc: @inspiration.desc, name: @inspiration.name }
    assert_redirected_to inspiration_path(assigns(:inspiration))
  end

  test "should destroy inspiration" do
    assert_difference('Inspiration.count', -1) do
      delete :destroy, id: @inspiration
    end

    assert_redirected_to inspirations_path
  end
end
