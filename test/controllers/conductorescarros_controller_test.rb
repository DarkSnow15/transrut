require 'test_helper'

class ConductorescarrosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get conductorescarros_index_url
    assert_response :success
  end

  test "should get new" do
    get conductorescarros_new_url
    assert_response :success
  end

  test "should get edit" do
    get conductorescarros_edit_url
    assert_response :success
  end

  test "should get show" do
    get conductorescarros_show_url
    assert_response :success
  end

end
