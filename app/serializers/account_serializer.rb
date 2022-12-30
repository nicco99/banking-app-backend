class AccountSerializer < ActiveModel::Serializer
  attributes :id,:balance,:user_id
  belongs_to :user
end
