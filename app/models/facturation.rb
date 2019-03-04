class Facturation < ApplicationRecord
  after_create :bill_send
  belongs_to :basket


  def bill_send
    UserMailer.bill_email(self).deliver_now

  end
end
