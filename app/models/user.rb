class User < ActiveRecord::Base
  validates :name,
             format: { with: /[A-Za-z0-9_\\-]{3,}/ }
  validates :email,
              format: { with: /[A-Za-z0-9_\\.\\-]+@[A-Za-z-0-9_\\-]+\.[A-Za-z]{2,4}/ }
  has_many :microposts
end
