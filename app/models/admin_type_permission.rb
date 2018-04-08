class AdminTypePermission < ApplicationRecord
  belongs_to :admin_type
  belongs_to :component
end
