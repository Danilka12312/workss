require "application_system_test_case"

class ContactsFormsTest < ApplicationSystemTestCase
  setup do
    @contacts_form = contacts_forms(:one)
  end

  test "visiting the index" do
    visit contacts_forms_url
    assert_selector "h1", text: "Contacts forms"
  end

  test "should create contacts form" do
    visit contacts_forms_url
    click_on "New contacts form"

    fill_in "Email", with: @contacts_form.email
    fill_in "Message", with: @contacts_form.message
    fill_in "Name", with: @contacts_form.name
    fill_in "Status", with: @contacts_form.status
    fill_in "Theme", with: @contacts_form.theme
    click_on "Create Contacts form"

    assert_text "Contacts form was successfully created"
    click_on "Back"
  end

  test "should update Contacts form" do
    visit contacts_form_url(@contacts_form)
    click_on "Edit this contacts form", match: :first

    fill_in "Email", with: @contacts_form.email
    fill_in "Message", with: @contacts_form.message
    fill_in "Name", with: @contacts_form.name
    fill_in "Status", with: @contacts_form.status
    fill_in "Theme", with: @contacts_form.theme
    click_on "Update Contacts form"

    assert_text "Contacts form was successfully updated"
    click_on "Back"
  end

  test "should destroy Contacts form" do
    visit contacts_form_url(@contacts_form)
    click_on "Destroy this contacts form", match: :first

    assert_text "Contacts form was successfully destroyed"
  end
end
