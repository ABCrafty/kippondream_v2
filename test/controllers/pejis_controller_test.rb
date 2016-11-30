require 'test_helper'

class PejisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @peji = pejis(:one)
  end

  test "should get index" do
    get pejis_url
    assert_response :success
  end

  test "should get new" do
    get new_peji_url
    assert_response :success
  end

  test "should create peji" do
    assert_difference('Peji.count') do
      post pejis_url, params: { peji: { image: @peji.image, manga_id: @peji.manga_id } }
    end

    assert_redirected_to peji_url(Peji.last)
  end

  test "should show peji" do
    get peji_url(@peji)
    assert_response :success
  end

  test "should get edit" do
    get edit_peji_url(@peji)
    assert_response :success
  end

  test "should update peji" do
    patch peji_url(@peji), params: { peji: { image: @peji.image, manga_id: @peji.manga_id } }
    assert_redirected_to peji_url(@peji)
  end

  test "should destroy peji" do
    assert_difference('Peji.count', -1) do
      delete peji_url(@peji)
    end

    assert_redirected_to pejis_url
  end
end
