require 'test_helper'

class Admin::CarouselsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_carousel = admin_carousels(:one)
  end

  test "should get index" do
    get admin_carousels_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_carousel_url
    assert_response :success
  end

  test "should create admin_carousel" do
    assert_difference('Admin::Carousel.count') do
      post admin_carousels_url, params: { admin_carousel: { image: @admin_carousel.image } }
    end

    assert_redirected_to admin_carousel_url(Admin::Carousel.last)
  end

  test "should show admin_carousel" do
    get admin_carousel_url(@admin_carousel)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_carousel_url(@admin_carousel)
    assert_response :success
  end

  test "should update admin_carousel" do
    patch admin_carousel_url(@admin_carousel), params: { admin_carousel: { image: @admin_carousel.image } }
    assert_redirected_to admin_carousel_url(@admin_carousel)
  end

  test "should destroy admin_carousel" do
    assert_difference('Admin::Carousel.count', -1) do
      delete admin_carousel_url(@admin_carousel)
    end

    assert_redirected_to admin_carousels_url
  end
end
