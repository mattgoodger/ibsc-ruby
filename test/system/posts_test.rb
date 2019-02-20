require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test "visiting the index" do
    visit posts_url
    assert_selector "h1", text: "Posts"
  end

  test "creating a Post" do
    visit posts_url
    click_on "New Post"

    fill_in "Company description", with: @post.company_description
    fill_in "Company email", with: @post.company_email
    fill_in "Company head quarters", with: @post.company_head_quarters
    fill_in "Company logo", with: @post.company_logo
    fill_in "Company name", with: @post.company_name
    fill_in "Company statement", with: @post.company_statement
    fill_in "Company url", with: @post.company_url
    fill_in "Feature job", with: @post.feature_job
    fill_in "Highlight job", with: @post.highlight_job
    fill_in "Job apply link", with: @post.job_apply_link
    fill_in "Job category", with: @post.job_category
    fill_in "Job description", with: @post.job_description
    fill_in "Job region", with: @post.job_region
    fill_in "Job title", with: @post.job_title
    fill_in "Job type", with: @post.job_type
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "updating a Post" do
    visit posts_url
    click_on "Edit", match: :first

    fill_in "Company description", with: @post.company_description
    fill_in "Company email", with: @post.company_email
    fill_in "Company head quarters", with: @post.company_head_quarters
    fill_in "Company logo", with: @post.company_logo
    fill_in "Company name", with: @post.company_name
    fill_in "Company statement", with: @post.company_statement
    fill_in "Company url", with: @post.company_url
    fill_in "Feature job", with: @post.feature_job
    fill_in "Highlight job", with: @post.highlight_job
    fill_in "Job apply link", with: @post.job_apply_link
    fill_in "Job category", with: @post.job_category
    fill_in "Job description", with: @post.job_description
    fill_in "Job region", with: @post.job_region
    fill_in "Job title", with: @post.job_title
    fill_in "Job type", with: @post.job_type
    click_on "Update Post"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "destroying a Post" do
    visit posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post was successfully destroyed"
  end
end
