class ApplicationMailer < ActionMailer::Base
  default from: 'service@mystore.com'
  layout 'mailer'
end
