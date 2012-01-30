class FnblPimContactItem < ActiveRecord::Base
  set_table_name "fnbl_pim_contact_item1"
  set_primary_key "contact"
  belongs_to :fnbl_pim_contact, :foreign_key => "id"
end
