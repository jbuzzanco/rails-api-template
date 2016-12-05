class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :quoteText, :author, :user, :editable

  def editable
    scope == object.user
  end
end
