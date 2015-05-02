require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  test "should get index_students" do
    get :index_students
    assert_response :success
  end

end
