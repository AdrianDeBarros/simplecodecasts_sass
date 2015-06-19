# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
    :port           => ENV['25'],
    :address        => ENV['smtp.mailgun.org'],
    :user_name      => ENV['MAILGUN_SMTP_LOGIN'],
    :password       => ENV['MAILGUN_SMTP_PASSWORD'],
    :domain         => 'heroku.com', #eg: 'yourappname.herokuapp.com'
    :authentication => :plain,
    :enable_startstls_auto => true
  
}
