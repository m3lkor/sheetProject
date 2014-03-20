require 'test_helper'

class GdrModulesControllerTest < ActionController::TestCase
  setup do
    @gdr_module = gdr_modules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gdr_modules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gdr_module" do
    assert_difference('GdrModule.count') do
      post :create, gdr_module: { module_game: @gdr_module.module_game, module_name: @gdr_module.module_name, module_type: @gdr_module.module_type }
    end

    assert_redirected_to gdr_module_path(assigns(:gdr_module))
  end

  test "should show gdr_module" do
    get :show, id: @gdr_module
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gdr_module
    assert_response :success
  end

  test "should update gdr_module" do
    put :update, id: @gdr_module, gdr_module: { module_game: @gdr_module.module_game, module_name: @gdr_module.module_name, module_type: @gdr_module.module_type }
    assert_redirected_to gdr_module_path(assigns(:gdr_module))
  end

  test "should destroy gdr_module" do
    assert_difference('GdrModule.count', -1) do
      delete :destroy, id: @gdr_module
    end

    assert_redirected_to gdr_modules_path
  end
end
