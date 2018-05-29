require 'test_helper'

class TypeRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_request = type_requests(:one)
  end

  test "should get index" do
    get type_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_type_request_url
    assert_response :success
  end

  test "should create type_request" do
    assert_difference('TypeRequest.count') do
      post type_requests_url, params: { type_request: { nombre: @type_request.nombre, request_id: @type_request.request_id } }
    end

    assert_redirected_to type_request_url(TypeRequest.last)
  end

  test "should show type_request" do
    get type_request_url(@type_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_request_url(@type_request)
    assert_response :success
  end

  test "should update type_request" do
    patch type_request_url(@type_request), params: { type_request: { nombre: @type_request.nombre, request_id: @type_request.request_id } }
    assert_redirected_to type_request_url(@type_request)
  end

  test "should destroy type_request" do
    assert_difference('TypeRequest.count', -1) do
      delete type_request_url(@type_request)
    end

    assert_redirected_to type_requests_url
  end
end
