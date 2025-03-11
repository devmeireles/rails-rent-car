module Car::Notifications
  extend ActiveSupport::Concern

  included do
    has_many :subscribers, dependent: :destroy
    after_update_commit :notify_subscribers, if: :back_in_stock?
  end

  def back_in_stock?
    inventory_count_previously_was == 0 && inventory_count > 0
  end

  def notify_subscribers
    subscribers.each do |subscriber|
      CarMailer.with(car: self, subscriber: subscriber).in_stock.deliver_later
    end
  end
end
