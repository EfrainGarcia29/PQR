require "application_system_test_case"

class NotificacionsTest < ApplicationSystemTestCase
  setup do
    @notificacion = notificacions(:one)
  end

  test "visiting the index" do
    visit notificacions_url
    assert_selector "h1", text: "Notificacions"
  end

  test "creating a Notificacion" do
    visit notificacions_url
    click_on "New Notificacion"

    fill_in "Fecha", with: @notificacion.fecha
    fill_in "Mensaje", with: @notificacion.mensaje
    click_on "Create Notificacion"

    assert_text "Notificacion was successfully created"
    click_on "Back"
  end

  test "updating a Notificacion" do
    visit notificacions_url
    click_on "Edit", match: :first

    fill_in "Fecha", with: @notificacion.fecha
    fill_in "Mensaje", with: @notificacion.mensaje
    click_on "Update Notificacion"

    assert_text "Notificacion was successfully updated"
    click_on "Back"
  end

  test "destroying a Notificacion" do
    visit notificacions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Notificacion was successfully destroyed"
  end
end
