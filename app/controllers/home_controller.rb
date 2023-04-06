class HomeController < ApplicationController
  def chelyabinsk
    @works = Work.all
    @city = ''
    @home_active = 'active'
  end

  def about
    @city = ' | О нас'
    @about_active = 'active'
  end

  def contacts
    @city = '| Контакты'
    @contacts_active = 'active'
    @contacts_form = ContactsForm.new
  end

  def reponse_true
  end

  def form_true
    
  end
end
