class ContactsFormsController < ApplicationController
  before_action :set_contacts_forms, only: %i[ show ]

  def new
    @new_form = ContactsForm.new
  end

  def create
    @new_form = ContactsForm.new(contacts_form_params)

    if @new_form.save
      redirect_to "/home/form_true"
    else

    end
  end

  private

    def contacts_form_params
      params.require(:contacts_form).permit(:name, :email, :theme, :message, :status)
    end

end
