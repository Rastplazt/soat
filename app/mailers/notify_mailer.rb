class NotifyMailer < ApplicationMailer
	default from: "from@example.com"

  def send_email(purchase,user)
  	@purchase = purchase
    @user = user
    mail(to: @user.email, subject: 'Notificacion')
  end

end
