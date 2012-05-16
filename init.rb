require 'app/models/auth_source_pam'

Redmine::Plugin.register :redmine_pam_auth do
  name 'Redmine Pam Auth plugin'
  author 'Krzysztof Suszynski'
  description 'Adds PAM authorization to Redmine. Requires `rpam` gem and group `shadow` to by added to redmine user.'
  version '0.1.0'
  url 'http://github.com/cardil/redmine-pam-auth'
  author_url 'http://suszynski.org/about'
end
