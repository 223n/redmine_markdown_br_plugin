require 'redmine'

Redmine::Plugin.register :redmine_markdown_br do
  name 'Redmine markdown br plugin'
  author '223n'
  description "Make it possible to break at Markdown"
  version '0.0.1'
end

Redmine::WikiFormatting::Macros.register do
  desc "br."
  macro :br do |obj, args|
    raw "<br />"
  end
end
