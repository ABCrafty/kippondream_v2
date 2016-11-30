require 'test_helper'

class BlogControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blog = blog(:one)
  end

  test "should get index" do
    get blog_index_url
    assert_response :success
  end

  test "should get new" do
    get new_blog_url
    assert_response :success
  end

  test "should create blog" do
    assert_difference('Blog.count') do
      post blog_index_url, params: { blog: { contenu: @blog.contenu, titre: @blog.titre } }
    end

    assert_redirected_to blog_url(Blog.last)
  end

  test "should show blog" do
    get blog_url(@blog)
    assert_response :success
  end

  test "should get edit" do
    get edit_blog_url(@blog)
    assert_response :success
  end

  test "should update blog" do
    patch blog_url(@blog), params: { blog: { contenu: @blog.contenu, titre: @blog.titre } }
    assert_redirected_to blog_url(@blog)
  end

  test "should destroy blog" do
    assert_difference('Blog.count', -1) do
      delete blog_url(@blog)
    end

    assert_redirected_to blog_index_url
  end
end
