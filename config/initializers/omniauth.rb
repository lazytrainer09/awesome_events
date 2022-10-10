Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rail.env.test?
    provider :github, "774abf9f9f97c420f577", "1ca540afc506c28894c1ee5b30338450854dbbd2"
  else
    provider :github,
      Rails.application.credentials.github[:client_id],
      Rails.application.credentials.github[:client_secret]
  end
end
