crumb :root do
  link "Inicio", root_path
end
# breadcrumbs conductores
crumb :conductores do
  link "Conductores", conductores_path
end

crumb :conductor_new do
   link "Nuevo conductor", new_conductor_path
   parent :conductores
end

crumb :conductor_show do |conductor|
 link "#{conductor.nombre}", conductor_path(conductor)
 parent :conductores, conductor
end

# breadcrumbs carros

crumb :carros do
  link "carros", carros_path
end

crumb :carro_new do
   link "Nuevo carro", new_carro_path
   parent :carros
end

# breadcrumb clientes
crumb :clientes do
  link "Clientes", conductores_path
end

crumb :cliente_new do
   link "Nuevo cliente", new_cliente_path
   parent :clientes
end
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
