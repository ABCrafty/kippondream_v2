require 'test_helper'

class Admin::ScansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_scan = admin_scans(:one)
  end

  test "should get index" do
    get admin_scans_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_scan_url
    assert_response :success
  end

  test "should create admin_scan" do
    assert_difference('Admin::Scan.count') do
      post admin_scans_url, params: { admin_scan: { image: @admin_scan.image } }
    end

    assert_redirected_to admin_scan_url(Admin::Scan.last)
  end

  test "should show admin_scan" do
    get admin_scan_url(@admin_scan)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_scan_url(@admin_scan)
    assert_response :success
  end

  test "should update admin_scan" do
    patch admin_scan_url(@admin_scan), params: { admin_scan: { image: @admin_scan.image } }
    assert_redirected_to admin_scan_url(@admin_scan)
  end

  test "should destroy admin_scan" do
    assert_difference('Admin::Scan.count', -1) do
      delete admin_scan_url(@admin_scan)
    end

    assert_redirected_to admin_scans_url
  end
end
