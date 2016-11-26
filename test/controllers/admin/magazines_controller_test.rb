require 'test_helper'

class Admin::MagazinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_magazine = admin_magazines(:one)
  end

  test "should get index" do
    get admin_magazines_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_magazine_url
    assert_response :success
  end

  test "should create admin_magazine" do
    assert_difference('Admin::Magazine.count') do
      post admin_magazines_url, params: { admin_magazine: { thumbnail: @admin_magazine.thumbnail, titre: @admin_magazine.titre } }
    end

    assert_redirected_to admin_magazine_url(Admin::Magazine.last)
  end

  test "should show admin_magazine" do
    get admin_magazine_url(@admin_magazine)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_magazine_url(@admin_magazine)
    assert_response :success
  end

  test "should update admin_magazine" do
    patch admin_magazine_url(@admin_magazine), params: { admin_magazine: { thumbnail: @admin_magazine.thumbnail, titre: @admin_magazine.titre } }
    assert_redirected_to admin_magazine_url(@admin_magazine)
  end

  test "should destroy admin_magazine" do
    assert_difference('Admin::Magazine.count', -1) do
      delete admin_magazine_url(@admin_magazine)
    end

    assert_redirected_to admin_magazines_url
  end
end
