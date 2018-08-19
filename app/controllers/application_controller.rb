class ApplicationController < ActionController::Base
  layout 'admin'

  before_action :authenticate_admin!

  def home
    render 'layouts/admin', layout: false
  end
  
  protected

    def after_sign_in_path_for(resource)
      :home
    end
end
