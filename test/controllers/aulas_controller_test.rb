require 'test_helper'

class AulasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get aulas_index_url
    assert_response :success
  end

end
