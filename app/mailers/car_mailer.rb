class CarMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.car_mailer.in_stock.subject
  #
  def in_stock
    @car = params[:car]
    mail to: params[:subscriber].email
  end
end
