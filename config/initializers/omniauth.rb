OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
	provider :facebook, "444933172252319", "7a1eda6714a18ac5eae08910e14c7b9d",
	{:scope => 'publish_stream, offline_access, email, user_hometown, user_about_me, user_location'}
end