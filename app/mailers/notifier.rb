class Notifier < ActionMailer::Base
  default :from => "jack@bookofjack.org"
  
  def reg_confirm(user)
    @user = user
    attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
    mail(:to => "#{user.name} <#{user.email}>", :subject => "Registered")
  end
end

