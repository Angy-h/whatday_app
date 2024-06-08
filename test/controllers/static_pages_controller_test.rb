require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Whatday Today App"
  end

  test "should get news" do
    get news_path
    assert_response :success
    assert_select "title", "News | Whatday Today App"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Whatday Today App"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Whatday Today App"
  end
end
