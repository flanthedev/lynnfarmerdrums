class ApplicationController < ActionController::Base
  layout 'admin'
  
  protected

    def after_sign_in_path_for(resource)
      edit_path
    end
end
