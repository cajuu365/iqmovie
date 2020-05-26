require 'test_helper'

class MovieshowsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get movieshows_index_url
    assert_response :success
  end

  test "should get show" do
    get movieshows_show_url
    assert_response :success
  end

  test "should get search" do
    get movieshows_search_url
    assert_response :success
  end

end
