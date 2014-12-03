class ContactsController < ApplicationController

	def create
		@contact = Contact.find_by(params[:id])
	end

	def new
		@contact = Contact.new
	end
end
