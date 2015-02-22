class SecuredController < ApplicationController
  before_filter :authenticate
  
  def authenticate
    authenticate_or_request_with_http_basic() do |username, password|
      md5_of_password = Digest::MD5.hexdigest(password)
      username == 'admin' && md5_of_password == '5f4dcc3b5aa765d61d8327deb882cf99'
    end
  end
end
