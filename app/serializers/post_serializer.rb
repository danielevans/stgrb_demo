class PostSerializer < ActiveModel::Serializer
  attributes :id, :body, :title, :rating
end
