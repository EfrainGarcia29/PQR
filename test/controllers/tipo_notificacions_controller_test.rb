require 'test_helper'

class TipoNotificacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_notificacion = tipo_notificacions(:one)
  end

  test "should get index" do
    get tipo_notificacions_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_notificacion_url
    assert_response :success
  end

  test "should create tipo_notificacion" do
    assert_difference('TipoNotificacion.count') do
      post tipo_notificacions_url, params: { tipo_notificacion: { comentario: @tipo_notificacion.comentario, descripcion: @tipo_notificacion.descripcion, nombre: @tipo_notificacion.nombre, notificacion_id: @tipo_notificacion.notificacion_id } }
    end

    assert_redirected_to tipo_notificacion_url(TipoNotificacion.last)
  end

  test "should show tipo_notificacion" do
    get tipo_notificacion_url(@tipo_notificacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_notificacion_url(@tipo_notificacion)
    assert_response :success
  end

  test "should update tipo_notificacion" do
    patch tipo_notificacion_url(@tipo_notificacion), params: { tipo_notificacion: { comentario: @tipo_notificacion.comentario, descripcion: @tipo_notificacion.descripcion, nombre: @tipo_notificacion.nombre, notificacion_id: @tipo_notificacion.notificacion_id } }
    assert_redirected_to tipo_notificacion_url(@tipo_notificacion)
  end

  test "should destroy tipo_notificacion" do
    assert_difference('TipoNotificacion.count', -1) do
      delete tipo_notificacion_url(@tipo_notificacion)
    end

    assert_redirected_to tipo_notificacions_url
  end
end
