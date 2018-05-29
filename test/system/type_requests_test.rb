require "application_system_test_case"

class TypeRequestsTest < ApplicationSystemTestCase
  setup do
    @type_request = type_requests(:one)
  end

  test "visiting the index" do
    visit type_requests_url
    assert_selector "h1", text: "Type Requests"
  end

  test "creating a Type request" do
    visit type_requests_url
    click_on "New Type Request"

    fill_in "Nombre", with: @type_request.nombre
    fill_in "Request", with: @type_request.request_id
    click_on "Create Type request"

    assert_text "Type request was successfully created"
    click_on "Back"
  end

  test "updating a Type request" do
    visit type_requests_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @type_request.nombre
    fill_in "Request", with: @type_request.request_id
    click_on "Update Type request"

    assert_text "Type request was successfully updated"
    click_on "Back"
  end

  test "destroying a Type request" do
    visit type_requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Type request was successfully destroyed"
  end
end
