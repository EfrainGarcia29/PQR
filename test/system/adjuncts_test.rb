require "application_system_test_case"

class AdjunctsTest < ApplicationSystemTestCase
  setup do
    @adjunct = adjuncts(:one)
  end

  test "visiting the index" do
    visit adjuncts_url
    assert_selector "h1", text: "Adjuncts"
  end

  test "creating a Adjunct" do
    visit adjuncts_url
    click_on "New Adjunct"

    fill_in "Descripcion", with: @adjunct.descripcion
    fill_in "File", with: @adjunct.file
    fill_in "Nombre", with: @adjunct.nombre
    fill_in "Request", with: @adjunct.request_id
    click_on "Create Adjunct"

    assert_text "Adjunct was successfully created"
    click_on "Back"
  end

  test "updating a Adjunct" do
    visit adjuncts_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @adjunct.descripcion
    fill_in "File", with: @adjunct.file
    fill_in "Nombre", with: @adjunct.nombre
    fill_in "Request", with: @adjunct.request_id
    click_on "Update Adjunct"

    assert_text "Adjunct was successfully updated"
    click_on "Back"
  end

  test "destroying a Adjunct" do
    visit adjuncts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Adjunct was successfully destroyed"
  end
end
