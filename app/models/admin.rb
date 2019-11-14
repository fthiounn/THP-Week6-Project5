class Admin < ApplicationRecord
  after_create :welcome_send
  has_one_attached :avatar

  def welcome_send
    AdminMailer.welcome_send(self).deliver_now
  end
end
