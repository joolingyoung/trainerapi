class User < ActiveRecord::Base

	validates :first_name, :last_name, :email, presence: true
	validates :email, format: { with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/ }

	has_one :trainer

	has_many :sessions

  def self.find_by_credentials(email, password)
    user = User.find_by_email(email)
    user && user.is_password?(password) ? user : nil
  end

  def self.find_by_session_token(session_token)
    return nil unless session_token
    session = Session.includes(:user).find_by_session_token(session_token)
    session ? session.user : nil
  end

  def is_password?(password)
    self.password_digest.is_password?(password)
  end

  def password_digest
    BCrypt::Password.new(super)
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

end
