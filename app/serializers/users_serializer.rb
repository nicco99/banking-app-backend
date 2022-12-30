class UsersSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :profile_image
  has_one :account
  has_many :transactions
end
