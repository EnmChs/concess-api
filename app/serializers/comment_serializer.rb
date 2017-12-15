class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :commented_id, :commented_type
  # embed :ids
  belongs_to :commented, polymorphic: true
end
