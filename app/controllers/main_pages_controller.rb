class MainPagesController < ApplicationController
  
  def home
  end
  
  def support
  end
  
  def send_support_message
    if params[:message][:email].blank? || params[:message][:body].blank?
      render :action => 'support'
      flash[:notice] = "You have to at least enter your email and a message!"
    else
      SupportMailer.deliver_support_message(params[:message][:name], params[:message][:email], params[:message][:subject], params[:message][:body])
      redirect_to support_path
      flash[:notice] = "Thanks for getting in touch. We'll respond to your message as soon as possible."
    end
  end

end
