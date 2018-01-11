# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User roles
roles = [
  ['Sys Admin', 'Technical Sys Admin', 'fa-database', 'sys_admin'],
  ['Admin', 'Administrative', 'fa-lock', 'admin']
]


roles.each do | name, desc, icon, url |
  role = {
    :name => name,
    :desc => desc,
    :icon => icon,
    :url => url
  }
  if Role.where("url = :url", { url: url }).empty?
    Role.create(role)
  end
end
