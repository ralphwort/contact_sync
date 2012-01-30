class FnblUser < ActiveRecord::Base
  set_table_name "fnbl_user"
  set_primary_key "username"
  has_many :fnbl_user_roles, :foreign_key => "username", dependent: :destroy
end
