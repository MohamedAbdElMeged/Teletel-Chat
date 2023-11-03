# == Schema Information
#
# Table name: permissions
#
#  id         :bigint           not null, primary key
#  action     :string
#  model      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Permission < ApplicationRecord
  has_many :custom_role_permissions, dependent: :destroy
  has_many :custom_roles, through: :custom_role_permissions

  validates :action, uniqueness: { scope: :model }
end
