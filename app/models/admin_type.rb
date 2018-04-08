class AdminType < ApplicationRecord
  has_many :admin_type_permissions, dependent: :destroy
end
