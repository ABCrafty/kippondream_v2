require 'test_helper'

class Admin::MangasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_manga = admin_mangas(:one)
  end

  test "should get index" do
    get admin_mangas_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_manga_url
    assert_response :success
  end

  test "should create admin_manga" do
    assert_difference('Admin::Manga.count') do
      post admin_mangas_url, params: { admin_manga: {  } }
    end

    assert_redirected_to admin_manga_url(Admin::Manga.last)
  end

  test "should show admin_manga" do
    get admin_manga_url(@admin_manga)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_manga_url(@admin_manga)
    assert_response :success
  end

  test "should update admin_manga" do
    patch admin_manga_url(@admin_manga), params: { admin_manga: {  } }
    assert_redirected_to admin_manga_url(@admin_manga)
  end

  test "should destroy admin_manga" do
    assert_difference('Admin::Manga.count', -1) do
      delete admin_manga_url(@admin_manga)
    end

    assert_redirected_to admin_mangas_url
  end
end
