crumb :root do
  link "メルカリ", root_path
end

# マイページ階層
crumb :profiles do
  link "マイページ", profiles_path
  parent :root
end

crumb :profile do |crumb_name|
  link crumb_name
  parent :profiles
end

# カテゴリ一階層

crumb :items_map do
  link "カテゴリー一覧", "/categories"
  parent :root
end

# 商品詳細ページ
crumb :item do |item|
  link "#{item.name}", item_path(item)
  parent :items_map
end


# crumb controller.action_name do
#   link @bread_name
#   parent :profiles
# end

# crumb :categorie do |categorie|
#   link categorie, categorie
#   parent :categories
# end




# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration


# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).
