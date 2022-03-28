require "test_helper"

class MenusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @menu = menus(:one)
  end

  test "should get index" do
    get menus_url, as: :json
    assert_response :success
  end

  test "should create menu" do
    assert_difference("Menu.count") do
      post menus_url, params: { menu: { description: @menu.description, last_name: @menu.last_name, name: @menu.name, prize: @menu.prize } }, as: :json
    end

    assert_response :created
  end

  test "should show menu" do
    get menu_url(@menu), as: :json
    assert_response :success
  end

  test "should update menu" do
    patch menu_url(@menu), params: { menu: { description: @menu.description, last_name: @menu.last_name, name: @menu.name, prize: @menu.prize } }, as: :json
    assert_response :success
  end

  test "should destroy menu" do
    assert_difference("Menu.count", -1) do
      delete menu_url(@menu), as: :json
    end

    assert_response :no_content
  end
end
