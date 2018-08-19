class ApplicationController < ActionController::Base
  layout 'admin'

  before_action :authenticate_admin!, except: 'pages#show'
  
  protected

    def after_sign_in_path_for(resource)
      edit_path
    end
end
