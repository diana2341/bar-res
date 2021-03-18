require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  test "should get indeex," do
    get tasks_indeex,_url
    assert_response :success
  end

  test "should get new," do
    get tasks_new,_url
    assert_response :success
  end

  test "should get create," do
    get tasks_create,_url
    assert_response :success
  end

  test "should get update," do
    get tasks_update,_url
    assert_response :success
  end

  test "should get edit," do
    get tasks_edit,_url
    assert_response :success
  end

  test "should get destroy" do
    get tasks_destroy_url
    assert_response :success
  end

end
