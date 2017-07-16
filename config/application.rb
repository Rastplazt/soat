require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Soat
  class Application < Rails::Application
  	config.encoding = "utf-8"
    config.time_zone = 'America/Caracas'
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.action_mailer.delivery_method = :smtp
	# SMTP settings for gmail
	config.action_mailer.default_url_options = { :host => 'smtp.gmail.com' }
    config.action_mailer.perform_deliveries = true
    config.action_mailer.raise_delivery_errors = true
    config.action_mailer.default :charset => 'utf-8'
	ActionMailer::Base.smtp_settings = {
	 :address              => "smtp.gmail.com",
	 :port                 => 587,
	 :user_name            => 'efreitez.itecnologica@gmail.com',
	 :password             => 'Inicio2016',
	 :authentication       => "plain",
	 :enable_starttls_auto => true,
	 :domain               => 'gmail.com'
	}

  end
end
