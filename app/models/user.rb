class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  after_create :welcome_send

  validates :first_name,
    presence: true,
    length: { in: 2..15 },
    :format => { :with => /\A[a-zA-Z]+\z/,
    :message => "Only letters allowed & minimum of 2 characters" }

  validates :last_name,
    presence: true,
    length: { in: 2..15 },
    :format => { :with => /\A[a-zA-Z]+\z/,
    :message => "Only letters allowed & minimum of 2 characters" }

  validates :username,
    presence: true,
    length: { in: 2..15 },
    uniqueness: { message: "Nickname already in use" }


  validates :birthdate,
    presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :basket

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
end
