class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  after_create :welcome_send


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :basket

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

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
end
