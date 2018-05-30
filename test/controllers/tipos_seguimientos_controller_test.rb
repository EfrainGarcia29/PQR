require 'test_helper'

class TiposSeguimientosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipos_seguimiento = tipos_seguimientos(:one)
  end

  test "should get index" do
    get tipos_seguimientos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipos_seguimiento_url
    assert_response :success
  end

  test "should create tipos_seguimiento" do
    assert_difference('TiposSeguimiento.count') do
      post tipos_seguimientos_url, params: { tipos_seguimiento: { comentario: @tipos_seguimiento.comentario, nombre: @tipos_seguimiento.nombre } }
    end

    assert_redirected_to tipos_seguimiento_url(TiposSeguimiento.last)
  end

  test "should show tipos_seguimiento" do
    get tipos_seguimiento_url(@tipos_seguimiento)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipos_seguimiento_url(@tipos_seguimiento)
    assert_response :success
  end

  test "should update tipos_seguimiento" do
    patch tipos_seguimiento_url(@tipos_seguimiento), params: { tipos_seguimiento: { comentario: @tipos_seguimiento.comentario, nombre: @tipos_seguimiento.nombre } }
    assert_redirected_to tipos_seguimiento_url(@tipos_seguimiento)
  end

  test "should destroy tipos_seguimiento" do
    assert_difference('TiposSeguimiento.count', -1) do
      delete tipos_seguimiento_url(@tipos_seguimiento)
    end

    assert_redirected_to tipos_seguimientos_url
  end
end
