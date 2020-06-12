class RequestConfirmationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.request_confirmation_mailer.confirmation.subject
  #
  def confirmation(user_id, lai_request_id)
    @user = User.find(user_id)
    @lai_request = LaiRequest.find(lai_request_id)
    @first_name = @user.first_name 

    mail to: @user.email, subject: '[ Pedido de Acesso a Informação foi enviado com sucesso ]'
  end

  def send_request(lai_request_id)
  	@lai_request = LaiRequest.find(lai_request_id)

  	mail to: @lai_request.branch.email, subject: '[ Novo pedido de Acesso à Informação ]', cc: @lai_request.user.email
  end
end
