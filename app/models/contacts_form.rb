class ContactsForm < ApplicationRecord
	validates :name, presence: true 
end