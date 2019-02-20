require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get posts_url
    assert_response :success
  end

  test "should get new" do
    get new_post_url
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post posts_url, params: { post: { company_description: @post.company_description, company_email: @post.company_email, company_head_quarters: @post.company_head_quarters, company_logo: @post.company_logo, company_name: @post.company_name, company_statement: @post.company_statement, company_url: @post.company_url, feature_job: @post.feature_job, highlight_job: @post.highlight_job, job_apply_link: @post.job_apply_link, job_category: @post.job_category, job_description: @post.job_description, job_region: @post.job_region, job_title: @post.job_title, job_type: @post.job_type } }
    end

    assert_redirected_to post_url(Post.last)
  end

  test "should show post" do
    get post_url(@post)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_url(@post)
    assert_response :success
  end

  test "should update post" do
    patch post_url(@post), params: { post: { company_description: @post.company_description, company_email: @post.company_email, company_head_quarters: @post.company_head_quarters, company_logo: @post.company_logo, company_name: @post.company_name, company_statement: @post.company_statement, company_url: @post.company_url, feature_job: @post.feature_job, highlight_job: @post.highlight_job, job_apply_link: @post.job_apply_link, job_category: @post.job_category, job_description: @post.job_description, job_region: @post.job_region, job_title: @post.job_title, job_type: @post.job_type } }
    assert_redirected_to post_url(@post)
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete post_url(@post)
    end

    assert_redirected_to posts_url
  end
end
