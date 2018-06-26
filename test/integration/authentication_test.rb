require 'test_helper'

class AuthenticationTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  
  test "get home" do
    get "/"
    assert_select "section.banner"
  end

  test "get sign_in" do
    get "/sign_in"
    assert_select "h2", "Log in"
  end

end
