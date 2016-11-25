class Mailer < ActionMailer::Base

  layout 'mailer'

  def contact_form(contact)

    @contact = contact
    @to = 'kippondream@gmail.com'
    @from = 'kippondream.com'

    mail(to: @to, from: @from, subject: 'Nouveau contact depuis le site !') do |f|
      f.html
    end
  end
end