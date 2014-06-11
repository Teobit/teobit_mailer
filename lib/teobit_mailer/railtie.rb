require 'teobit_mailer/mailer_helper'

module TeobitMailer
  class Railtie < Rails::Railtie
    initializer "teobit_mailer.mailer_helper" do
      ActionView::Base.send :include, MailerHelper
    end
  end
end
