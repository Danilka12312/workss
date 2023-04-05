ActiveAdmin.register ContactsForm do

  permit_params :name, :email, :theme, :message, :status
  
end
