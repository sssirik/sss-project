# frozen_string_literal: true

# основной майлер приложения 
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
