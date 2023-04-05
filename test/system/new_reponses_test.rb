require "application_system_test_case"

class NewReponsesTest < ApplicationSystemTestCase
  setup do
    @new_reponse = new_reponses(:one)
  end

  test "visiting the index" do
    visit new_reponses_url
    assert_selector "h1", text: "New reponses"
  end

  test "should create new reponse" do
    visit new_reponses_url
    click_on "New new reponse"

    fill_in "Name", with: @new_reponse.name
    fill_in "Name work", with: @new_reponse.name_work
    fill_in "Phone", with: @new_reponse.phone
    fill_in "Vk", with: @new_reponse.vk
    click_on "Create New reponse"

    assert_text "New reponse was successfully created"
    click_on "Back"
  end

  test "should update New reponse" do
    visit new_reponse_url(@new_reponse)
    click_on "Edit this new reponse", match: :first

    fill_in "Name", with: @new_reponse.name
    fill_in "Name work", with: @new_reponse.name_work
    fill_in "Phone", with: @new_reponse.phone
    fill_in "Vk", with: @new_reponse.vk
    click_on "Update New reponse"

    assert_text "New reponse was successfully updated"
    click_on "Back"
  end

  test "should destroy New reponse" do
    visit new_reponse_url(@new_reponse)
    click_on "Destroy this new reponse", match: :first

    assert_text "New reponse was successfully destroyed"
  end
end
