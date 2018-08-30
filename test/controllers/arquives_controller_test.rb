require 'test_helper'

class ArquivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @arquife = arquives(:one)
  end

  test "should get index" do
    get arquives_url
    assert_response :success
  end

  test "should get new" do
    get new_arquife_url
    assert_response :success
  end

  test "should create arquife" do
    assert_difference('Arquive.count') do
      post arquives_url, params: { arquife: { classe_id: @arquife.classe_id, course_id: @arquife.course_id, path: @arquife.path } }
    end

    assert_redirected_to arquife_url(Arquive.last)
  end

  test "should show arquife" do
    get arquife_url(@arquife)
    assert_response :success
  end

  test "should get edit" do
    get edit_arquife_url(@arquife)
    assert_response :success
  end

  test "should update arquife" do
    patch arquife_url(@arquife), params: { arquife: { classe_id: @arquife.classe_id, course_id: @arquife.course_id, path: @arquife.path } }
    assert_redirected_to arquife_url(@arquife)
  end

  test "should destroy arquife" do
    assert_difference('Arquive.count', -1) do
      delete arquife_url(@arquife)
    end

    assert_redirected_to arquives_url
  end
end
