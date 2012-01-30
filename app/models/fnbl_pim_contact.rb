class FnblPimContact < ActiveRecord::Base
  set_table_name "fnbl_pim_contact"
  set_primary_key "id"
  has_many :fnbl_pim_contact_items, :foreign_key => "contact"
end
