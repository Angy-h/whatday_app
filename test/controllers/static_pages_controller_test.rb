require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Whatday Today App"
  end

  test "should get news" do
    get static_pages_news_url
    assert_response :success
    assert_select "title", "News | Whatday Today App"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | Whatday Today App"
  end
end
