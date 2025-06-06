require 'redmine'

Redmine::Plugin.register :redmine_landing_page do
  name        'Redmine Landing Page plugin'
  author      'Igor Zubkov'
  description 'Redmine Landing Page plugin'
  version     '0.3.2'
  url         'https://github.com/biow0lf/redmine_landing_page'
  author_url  'https://github.com/biow0lf'
end

# —— 以下为 Rails 5/Redmine 4.2 推荐的 to_prepare 写法 —— #
Rails.application.config.to_prepare do
  require 'redmine_landing_page/hooks/view_projects_form_hook'
  require 'redmine_landing_page/hooks/view_my_account_hook'
  require 'redmine_landing_page/hooks/view_users_form_hook'
end

