class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  include Response
  include ExceptionHandler

  protect_from_forgery with: :null_session,
    if: Proc.new { |c| c.request.format =~ %r{application/json} }
end
