class ErrorController < ApplicationController

  def access_denied
    render :action => 'access_denied', :status => 403
  end

  def not_found
    render :action => 'not_found', :status => 404
  end

end
