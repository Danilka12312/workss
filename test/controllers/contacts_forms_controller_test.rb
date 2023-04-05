require "test_helper"

class ContactsFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contacts_form = contacts_forms(:one)
  end

  test "should get index" do
    get contacts_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_contacts_form_url
    assert_response :success
  end

  test "should create contacts_form" do
    assert_difference("ContactsForm.count") do
      post contacts_forms_url, params: { contacts_form: { email: @contacts_form.email, message: @contacts_form.message, name: @contacts_form.name, status: @contacts_form.status, theme: @contacts_form.theme } }
    end

    assert_redirected_to contacts_form_url(ContactsForm.last)
  end

  test "should show contacts_form" do
    get contacts_form_url(@contacts_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_contacts_form_url(@contacts_form)
    assert_response :success
  end

  test "should update contacts_form" do
    patch contacts_form_url(@contacts_form), params: { contacts_form: { email: @contacts_form.email, message: @contacts_form.message, name: @contacts_form.name, status: @contacts_form.status, theme: @contacts_form.theme } }
    assert_redirected_to contacts_form_url(@contacts_form)
  end

  test "should destroy contacts_form" do
    assert_difference("ContactsForm.count", -1) do
      delete contacts_form_url(@contacts_form)
    end

    assert_redirected_to contacts_forms_url
  end
end
