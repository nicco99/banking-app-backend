class TransactionSerializer < ActiveModel::Serializer
  attributes :id,:name,:amount,:date, :user_id
end
