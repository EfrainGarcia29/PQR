require 'test_helper'

class AdjunctsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adjunct = adjuncts(:one)
  end

  test "should get index" do
    get adjuncts_url
    assert_response :success
  end

  test "should get new" do
    get new_adjunct_url
    assert_response :success
  end

  test "should create adjunct" do
    assert_difference('Adjunct.count') do
      post adjuncts_url, params: { adjunct: { descripcion: @adjunct.descripcion, file: @adjunct.file, nombre: @adjunct.nombre, request_id: @adjunct.request_id } }
    end

    assert_redirected_to adjunct_url(Adjunct.last)
  end

  test "should show adjunct" do
    get adjunct_url(@adjunct)
    assert_response :success
  end

  test "should get edit" do
    get edit_adjunct_url(@adjunct)
    assert_response :success
  end

  test "should update adjunct" do
    patch adjunct_url(@adjunct), params: { adjunct: { descripcion: @adjunct.descripcion, file: @adjunct.file, nombre: @adjunct.nombre, request_id: @adjunct.request_id } }
    assert_redirected_to adjunct_url(@adjunct)
  end

  test "should destroy adjunct" do
    assert_difference('Adjunct.count', -1) do
      delete adjunct_url(@adjunct)
    end

    assert_redirected_to adjuncts_url
  end
end
