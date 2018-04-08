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
  ['Admin', 'Administrative', 'fa-lock', 'admin'],
  ['Student', 'Admitted Students', 'fa-graduation-cap', 'student'],
  ['Teacher', 'Teaching staff', 'fa-diagnoses', 'teacher'],
  ['Staff', 'Support staff', 'fa-address-card', 'staff'],
  ['Parents', 'Parents to Students', 'fa-users', 'parent']
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


# Test Users
roles.each do | name, desc, icon, url |
  1.upto(5) do |i|
    num = i.to_s
    count = User.where(:email => "#{url}_#{num}@sch_sys.com").count
    if count < 1 
      User.create(
        :firstname => "#{url}_#{num}", 
        :middlename => "#{url}_#{num}", 
        :lastname => "#{url}_#{num}",
        :email => "#{url}_#{num}@sys.com",
        :password => 'password'
      )
    end
  end
end 


# Test user Roles
roles.each do | name, desc, icon, url |
  role = Role.where(:url => url).first
  users = User.where('email LIKE ?', "%#{url}%")
  users.each do | user |
    count = UserRole.where(:user_id => user.id).count
    if count < 1
      UserRole.create(:user => user, :role => role)
    end 
  end
end
