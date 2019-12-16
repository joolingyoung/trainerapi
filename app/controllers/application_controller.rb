class ApplicationController < ActionController::API
	
	helper_method :current_user, :logged_in?

	def current_user
		@current_user ||= User.find_by_session_token(session[:session_token])
	end

	def logged_in?
		!!current_user
	end

	def log_in_user!(user)
		token = Session.generate_session_token
		user.sessions.create!(session_token: token)
		session[:session_token] = token
	end

	def log_out!
		@current_user = nil
		session_token = session[:session_token]
		Session.find_by_session_token(session_token).destroy!
		session[:session_token] = nil
	end

end
