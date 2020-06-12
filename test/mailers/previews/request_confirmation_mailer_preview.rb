# Preview all emails at http://localhost:3000/rails/mailers/request_confirmation_mailer
class RequestConfirmationMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/request_confirmation_mailer/confirmation
  def confirmation
    RequestConfirmationMailer.confirmation
  end

end
