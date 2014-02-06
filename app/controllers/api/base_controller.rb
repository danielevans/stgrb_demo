class Api::BaseController < ActionController::API
  include ActionController::MimeResponds
  include ActionController::StrongParameters
  include ActionController::ImplicitRender

  respond_to :json

  serialization_scope :view_context

  protected

  def self.inherit_resources # le-hack
    InheritedResources::Base.inherit_resources(self)
    initialize_resources_class_accessors!
    create_resources_url_helpers!
  end
end
