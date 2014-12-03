class UserMailer < ActionMailer::Base
  default from: "noreply@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.contact.subject
  #
  def contact(var)
    @user_email = var.email
    @user_message = var.message
    mail to: "rajanjamu@gmail.com", subject: "Contact Us"
  end
end
