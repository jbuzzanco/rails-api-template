class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :quoteText, :author, :user
end
