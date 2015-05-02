class StudentMailer < ApplicationMailer
  def sample_email(game)
    @game = game
    
    mail(to: @to, subject: 'Sample Email')
  end
end
