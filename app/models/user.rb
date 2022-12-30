class User < ApplicationRecord
    has_many :transactions, dependent: :destroy
    has_one :account
    has_secure_password
end
