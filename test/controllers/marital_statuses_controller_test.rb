require 'test_helper'

class MaritalStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @marital_status = marital_statuses(:one)
  end

  test "should get index" do
    get marital_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_marital_status_url
    assert_response :success
  end

  test "should create marital_status" do
    assert_difference('MaritalStatus.count') do
      post marital_statuses_url, params: { marital_status: { status: @marital_status.status } }
    end

    assert_redirected_to marital_status_url(MaritalStatus.last)
  end

  test "should show marital_status" do
    get marital_status_url(@marital_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_marital_status_url(@marital_status)
    assert_response :success
  end

  test "should update marital_status" do
    patch marital_status_url(@marital_status), params: { marital_status: { status: @marital_status.status } }
    assert_redirected_to marital_status_url(@marital_status)
  end

  test "should destroy marital_status" do
    assert_difference('MaritalStatus.count', -1) do
      delete marital_status_url(@marital_status)
    end

    assert_redirected_to marital_statuses_url
  end
end
