class HomeController < ApplicationController
  def chelyabinsk
    @works = Work.all
    @city = 'PW'
    @home_active = 'active'
  end

  def about
    @city = 'О нас'
    @about_active = 'active'
  end

  def contacts
    @city = 'Контакты'
    @contacts_active = 'active'
    @contacts_form = ContactsForm.new
  end
end
