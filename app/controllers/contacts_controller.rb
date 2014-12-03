class ContactsController < ApplicationController

	def index
		@contact = Contact.all
	end

	def create
		@contact = Contact.new(user_params)
		@contact.save
		if @contact.save
			flash[:success] = "Your message has been sent."
			UserMailer.contact.deliver
			redirect_to root_path
		else
			render 'contact'
		end
	end

	def new
		@contact = Contact.new
	end

	private
	def user_params
		params.require(:contact).permit(:email, :message)
	end

end
