require 'test_helper'

class ConductoresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get conductores_index_url
    assert_response :success
  end

  test "should get edit" do
    get conductores_edit_url
    assert_response :success
  end

  test "should get new" do
    get conductores_new_url
    assert_response :success
  end

end
