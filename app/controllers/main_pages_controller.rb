class MainPagesController < ApplicationController
  def support
  end
  
  def send_support_message
    if params[:support_message][:user_name].blank? || params[:support_message][:user_email].blank?
      render :action => 'support'
      flash[:notice] = "You must fill in all the required fields!"
    else
      SupportMailer.deliver_support_message(params[:support_message][:user_name], 
                                            params[:support_message][:user_email], 
                                            params[:support_message][:subject],
                                            params[:support_message][:body])
      render :action => 'support'
      flash[:notice] = "Thanks for sending us a message! We'll get back to you as soon as we can."
    end
  end

end
