class NotificationsMailer < ActionMailer::Base

  default :from => "pjfamig@gmail.com"
  default :to => "paul@paulfamiglietti.com"

  def new_message(message)
    @message = message
    mail(:subject => "PaulFamiglietti.com: #{message.subject}")
  end

end