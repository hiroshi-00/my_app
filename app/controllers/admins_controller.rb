class AdminsController < ApplicationController
  
  before_action :basic_auth
  before_action :admins_user_auth, only: [:index]
  
  
  def index
  end
  
  
  private 
    def basic_auth
      authenticate_or_request_with_http_basic do |username, password|
        username == 'admins' && password == 'admins'
        # username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
      end
    end
    
    def admins_user_auth
      # ログインずみか？
      # userモデルのuser_typeカラムが数字の0かどうか
      pre_url = Rails.application.routes.recognize_path(request.referer)
      logger.debug("----------------- pre_url = #{pre_url}")
      if user_signed_in?
        if current_user.id == 0 && current_user.user_type == 0
          true
        else
          flash[:error] = "権限がありません"
          redirect_back(fallback_location: root_path)
          # redirect_to new_user_session_path
        end
      else
          flash[:alert] = "管理者としてログインしてください"
          redirect_back(fallback_location: root_path)
          # redirect_to new_user_session_path
      end
    end
end
