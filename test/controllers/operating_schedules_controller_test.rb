require 'test_helper'

class OperatingSchedulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @operating_schedule = operating_schedules(:one)
  end

  test "should get index" do
    get operating_schedules_url
    assert_response :success
  end

  test "should get new" do
    get new_operating_schedule_url
    assert_response :success
  end

  test "should create operating_schedule" do
    assert_difference('OperatingSchedule.count') do
      post operating_schedules_url, params: { operating_schedule: { col_days: @operating_schedule.col_days, monthID: @operating_schedule.monthID, staffID: @operating_schedule.staffID } }
    end

    assert_redirected_to operating_schedule_url(OperatingSchedule.last)
  end

  test "should show operating_schedule" do
    get operating_schedule_url(@operating_schedule)
    assert_response :success
  end

  test "should get edit" do
    get edit_operating_schedule_url(@operating_schedule)
    assert_response :success
  end

  test "should update operating_schedule" do
    patch operating_schedule_url(@operating_schedule), params: { operating_schedule: { col_days: @operating_schedule.col_days, monthID: @operating_schedule.monthID, staffID: @operating_schedule.staffID } }
    assert_redirected_to operating_schedule_url(@operating_schedule)
  end

  test "should destroy operating_schedule" do
    assert_difference('OperatingSchedule.count', -1) do
      delete operating_schedule_url(@operating_schedule)
    end

    assert_redirected_to operating_schedules_url
  end
end
