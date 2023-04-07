class ContactsForm < ApplicationRecord
	validates :name, :email, :theme, :message, presence: true 
	validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
end