class ApplicationController < ActionController::Base
  before_action :authenticate_therapist!

  private

  def current_therapist_is_admin?
    therapist_signed_in? && current_therapist.has_role?(:admin)
  end
end
