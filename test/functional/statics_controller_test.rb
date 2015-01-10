require 'test_helper'

class StaticsControllerTest < ActionController::TestCase
  setup do
    @static = statics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:statics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create static" do
    assert_difference('Static.count') do
      post :create, static: { body_en: @static.body_en, body_ru: @static.body_ru, short_en: @static.short_en, short_ru: @static.short_ru, title_en: @static.title_en, title_ru: @static.title_ru }
    end

    assert_redirected_to static_path(assigns(:static))
  end

  test "should show static" do
    get :show, id: @static
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @static
    assert_response :success
  end

  test "should update static" do
    put :update, id: @static, static: { body_en: @static.body_en, body_ru: @static.body_ru, short_en: @static.short_en, short_ru: @static.short_ru, title_en: @static.title_en, title_ru: @static.title_ru }
    assert_redirected_to static_path(assigns(:static))
  end

  test "should destroy static" do
    assert_difference('Static.count', -1) do
      delete :destroy, id: @static
    end

    assert_redirected_to statics_path
  end
end
