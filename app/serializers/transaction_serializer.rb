class TransactionSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :drawing
end
