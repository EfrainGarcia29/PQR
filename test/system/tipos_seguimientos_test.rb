require "application_system_test_case"

class TiposSeguimientosTest < ApplicationSystemTestCase
  setup do
    @tipos_seguimiento = tipos_seguimientos(:one)
  end

  test "visiting the index" do
    visit tipos_seguimientos_url
    assert_selector "h1", text: "Tipos Seguimientos"
  end

  test "creating a Tipos seguimiento" do
    visit tipos_seguimientos_url
    click_on "New Tipos Seguimiento"

    fill_in "Comentario", with: @tipos_seguimiento.comentario
    fill_in "Nombre", with: @tipos_seguimiento.nombre
    click_on "Create Tipos seguimiento"

    assert_text "Tipos seguimiento was successfully created"
    click_on "Back"
  end

  test "updating a Tipos seguimiento" do
    visit tipos_seguimientos_url
    click_on "Edit", match: :first

    fill_in "Comentario", with: @tipos_seguimiento.comentario
    fill_in "Nombre", with: @tipos_seguimiento.nombre
    click_on "Update Tipos seguimiento"

    assert_text "Tipos seguimiento was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipos seguimiento" do
    visit tipos_seguimientos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipos seguimiento was successfully destroyed"
  end
end
