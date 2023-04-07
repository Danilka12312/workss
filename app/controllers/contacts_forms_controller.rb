class ContactsFormsController < ApplicationController
  before_action :set_contacts_forms, only: %i[ show ]

  def new
    @new_form = ContactsForm.new
  end

  def create
    @contacts_form = ContactsForm.new(contacts_form_params)
    @contacts_active = 'active'
    @city = '| Контакты'

    if @contacts_form.save
      redirect_to "/home/form_true"
    else
      render "home/contacts"
    end
  end

  private

    def contacts_form_params
      params.require(:contacts_form).permit(:name, :email, :theme, :message, :status)
    end

end
