class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name,  presence: true
  validates :last_name,   presence: true
  validates :name,  presence: true
  validates :email,               presence: true
  
  before_validation :set_name

  protected
  def set_name
    self.name = "#{first_name} #{last_name}"
  end
end
