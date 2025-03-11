# Preview all emails at http://localhost:3000/rails/mailers/car_mailer
class CarMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/car_mailer/in_stock
  def in_stock
    CarMailer.in_stock
  end
end
