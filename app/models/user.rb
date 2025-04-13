class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :projects
  belongs_to :labor

  validates :nickname, :goal, presence: true

  validates :labor_id, numericality: { other_than: 1, message: "can't be blank" }
end
