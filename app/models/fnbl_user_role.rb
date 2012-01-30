class FnblUserRole < ActiveRecord::Base
  set_table_name "fnbl_user_role"
  set_primary_key "username"
  belongs_to :fnbl_user, :foreign_key => "username"
end
