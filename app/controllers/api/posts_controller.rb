class Api::PostsController < Api::BaseController
  inherit_resources
  has_scope :page, default: 1

  protected
  def permitted_params
    params.permit post: [:text, :title, :rating]
  end
end
