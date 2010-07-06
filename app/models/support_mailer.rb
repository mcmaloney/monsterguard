class SupportMailer < ActionMailer::Base
  def support_message(user_name, user_email, user_subject, message_body)
    recipients "maloney.mc@gmail.com"
    sent_on Time.now
    from "support_robot@getmonsterguard.com"
    subject "MESSAGE FROM MONSTERGUARD SUPPORT PAGE"
    body :user_name => user_name, :user_email => user_email, :message_body => message_body
  end

end
