require 'test_helper'

class CorrespondentsControllerTest < ActionController::TestCase
  setup do
    @correspondent = correspondents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:correspondents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create correspondent" do
    assert_difference('Correspondent.count') do
      post :create, correspondent: { description: @correspondent.description, name: @correspondent.name, postcode: @correspondent.postcode, state: @correspondent.state, street: @correspondent.street, town: @correspondent.town }
    end

    assert_redirected_to correspondent_path(assigns(:correspondent))
  end

  test "should show correspondent" do
    get :show, id: @correspondent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @correspondent
    assert_response :success
  end

  test "should update correspondent" do
    patch :update, id: @correspondent, correspondent: { description: @correspondent.description, name: @correspondent.name, postcode: @correspondent.postcode, state: @correspondent.state, street: @correspondent.street, town: @correspondent.town }
    assert_redirected_to correspondent_path(assigns(:correspondent))
  end

  test "should destroy correspondent" do
    assert_difference('Correspondent.count', -1) do
      delete :destroy, id: @correspondent
    end

    assert_redirected_to correspondents_path
  end
end
