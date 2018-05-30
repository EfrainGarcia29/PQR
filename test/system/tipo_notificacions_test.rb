require "application_system_test_case"

class TipoNotificacionsTest < ApplicationSystemTestCase
  setup do
    @tipo_notificacion = tipo_notificacions(:one)
  end

  test "visiting the index" do
    visit tipo_notificacions_url
    assert_selector "h1", text: "Tipo Notificacions"
  end

  test "creating a Tipo notificacion" do
    visit tipo_notificacions_url
    click_on "New Tipo Notificacion"

    fill_in "Comentario", with: @tipo_notificacion.comentario
    fill_in "Descripcion", with: @tipo_notificacion.descripcion
    fill_in "Nombre", with: @tipo_notificacion.nombre
    fill_in "Notificacion", with: @tipo_notificacion.notificacion_id
    click_on "Create Tipo notificacion"

    assert_text "Tipo notificacion was successfully created"
    click_on "Back"
  end

  test "updating a Tipo notificacion" do
    visit tipo_notificacions_url
    click_on "Edit", match: :first

    fill_in "Comentario", with: @tipo_notificacion.comentario
    fill_in "Descripcion", with: @tipo_notificacion.descripcion
    fill_in "Nombre", with: @tipo_notificacion.nombre
    fill_in "Notificacion", with: @tipo_notificacion.notificacion_id
    click_on "Update Tipo notificacion"

    assert_text "Tipo notificacion was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo notificacion" do
    visit tipo_notificacions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo notificacion was successfully destroyed"
  end
end
