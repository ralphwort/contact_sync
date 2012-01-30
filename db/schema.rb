# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120119102257) do

  create_table "fnbl_client_mapping", :id => false, :force => true do |t|
    t.integer "principal",   :limit => 8,   :null => false
    t.string  "sync_source", :limit => 128, :null => false
    t.string  "luid",        :limit => 200, :null => false
    t.string  "guid",        :limit => 200, :null => false
    t.string  "last_anchor", :limit => 20
  end

  add_index "fnbl_client_mapping", ["principal", "sync_source"], :name => "ind_client_mapping"
  add_index "fnbl_client_mapping", ["sync_source"], :name => "fk_source_cm"

  create_table "fnbl_connector", :force => true do |t|
    t.string "name",        :limit => 200, :null => false
    t.string "description", :limit => 200
    t.string "admin_class"
  end

  create_table "fnbl_connector_source_type", :id => false, :force => true do |t|
    t.string "connector",  :limit => 128, :null => false
    t.string "sourcetype", :limit => 128, :null => false
  end

  create_table "fnbl_device", :force => true do |t|
    t.string  "description"
    t.string  "type"
    t.string  "client_nonce"
    t.string  "server_nonce"
    t.string  "server_password"
    t.string  "timezone",             :limit => 32
    t.string  "convert_date",         :limit => 1
    t.string  "charset",              :limit => 16
    t.string  "address",              :limit => 50
    t.string  "msisdn",               :limit => 50
    t.string  "notification_builder"
    t.string  "notification_sender"
    t.integer "id_caps",              :limit => 8
    t.boolean "sent_server_caps",                   :default => false
  end

  create_table "fnbl_device_caps", :force => true do |t|
    t.string "version", :limit => 16,  :null => false
    t.string "man",     :limit => 100
    t.string "model",   :limit => 100
    t.string "fwv",     :limit => 100
    t.string "swv",     :limit => 100
    t.string "hwv",     :limit => 100
    t.string "utc",     :limit => 1,   :null => false
    t.string "lo",      :limit => 1,   :null => false
    t.string "noc",     :limit => 1,   :null => false
  end

  create_table "fnbl_device_config", :id => false, :force => true do |t|
    t.string  "username",                                      :null => false
    t.integer "principal",   :limit => 8,                      :null => false
    t.string  "uri",         :limit => 128,                    :null => false
    t.string  "value",                                         :null => false
    t.integer "last_update", :limit => 8,                      :null => false
    t.string  "status",      :limit => 1,                      :null => false
    t.boolean "encrypted",                  :default => false
  end

  create_table "fnbl_device_datastore", :force => true do |t|
    t.integer "caps",        :limit => 8
    t.string  "sourceref",   :limit => 128, :null => false
    t.string  "label",       :limit => 128
    t.integer "maxguidsize"
    t.string  "dsmem",       :limit => 1,   :null => false
    t.string  "shs",         :limit => 1,   :null => false
    t.string  "synccap",     :limit => 32,  :null => false
  end

  add_index "fnbl_device_datastore", ["caps"], :name => "ind_datastore"

  create_table "fnbl_device_ext", :force => true do |t|
    t.integer "caps",   :limit => 8
    t.string  "xname"
    t.string  "xvalue"
  end

  add_index "fnbl_device_ext", ["caps"], :name => "ind_device_ext"

  create_table "fnbl_ds_ctcap", :force => true do |t|
    t.integer "datastore", :limit => 8,  :null => false
    t.string  "type",      :limit => 64, :null => false
    t.string  "version",   :limit => 16, :null => false
    t.string  "field",     :limit => 1,  :null => false
  end

  add_index "fnbl_ds_ctcap", ["datastore"], :name => "ind_ctcap"

  create_table "fnbl_ds_ctcap_prop", :force => true do |t|
    t.integer "ctcap",     :limit => 8,   :null => false
    t.string  "name",      :limit => 64,  :null => false
    t.string  "label",     :limit => 128
    t.string  "type",      :limit => 32
    t.integer "maxoccur"
    t.integer "maxsize"
    t.string  "truncated", :limit => 1,   :null => false
    t.string  "valenum"
  end

  add_index "fnbl_ds_ctcap_prop", ["ctcap"], :name => "ind_ctcap_prop"

  create_table "fnbl_ds_ctcap_prop_param", :id => false, :force => true do |t|
    t.integer "property", :limit => 8,   :null => false
    t.string  "name",     :limit => 64,  :null => false
    t.string  "label",    :limit => 128
    t.string  "type",     :limit => 32
    t.string  "valenum"
  end

  add_index "fnbl_ds_ctcap_prop_param", ["property"], :name => "ind_ctcappropparam"

  create_table "fnbl_ds_cttype_rx", :id => false, :force => true do |t|
    t.integer "datastore", :limit => 8,  :null => false
    t.string  "type",      :limit => 64, :null => false
    t.string  "version",   :limit => 16, :null => false
    t.string  "preferred", :limit => 1,  :null => false
  end

  add_index "fnbl_ds_cttype_rx", ["datastore"], :name => "ind_cttype_rx"

  create_table "fnbl_ds_cttype_tx", :id => false, :force => true do |t|
    t.integer "datastore", :limit => 8,  :null => false
    t.string  "type",      :limit => 64, :null => false
    t.string  "version",   :limit => 16, :null => false
    t.string  "preferred", :limit => 1,  :null => false
  end

  add_index "fnbl_ds_cttype_tx", ["datastore"], :name => "ind_cttype_tx"

  create_table "fnbl_ds_filter_cap", :id => false, :force => true do |t|
    t.integer "datastore",  :limit => 8,  :null => false
    t.string  "type",       :limit => 64, :null => false
    t.string  "version",    :limit => 16, :null => false
    t.string  "keywords"
    t.string  "properties"
  end

  add_index "fnbl_ds_filter_cap", ["datastore"], :name => "ind_filter_cap"

  create_table "fnbl_ds_filter_rx", :id => false, :force => true do |t|
    t.integer "datastore", :limit => 8,  :null => false
    t.string  "type",      :limit => 64, :null => false
    t.string  "version",   :limit => 16, :null => false
  end

  add_index "fnbl_ds_filter_rx", ["datastore"], :name => "ind_filter_rx"

  create_table "fnbl_ds_mem", :id => false, :force => true do |t|
    t.integer "datastore", :limit => 8
    t.string  "shared",    :limit => 1, :null => false
    t.integer "maxmem"
    t.integer "maxid"
  end

  add_index "fnbl_ds_mem", ["datastore"], :name => "ind_mem"

  create_table "fnbl_email_account", :id => false, :force => true do |t|
    t.integer "account_id",     :limit => 8,  :null => false
    t.string  "username",       :limit => 50, :null => false
    t.string  "ms_login",       :limit => 50, :null => false
    t.string  "ms_password",    :limit => 50, :null => false
    t.string  "ms_address",     :limit => 70, :null => false
    t.string  "ms_mailboxname", :limit => 64
    t.string  "push",           :limit => 1
    t.string  "soft_delete",    :limit => 1
    t.integer "max_num_email"
    t.integer "max_imap_email"
    t.string  "mailserver_id",  :limit => 20, :null => false
    t.string  "server_public",  :limit => 1
    t.string  "server_type",    :limit => 20
    t.string  "description",    :limit => 50
    t.string  "protocol",       :limit => 5
    t.string  "out_server",     :limit => 30
    t.integer "out_port"
    t.string  "out_auth",       :limit => 1
    t.string  "in_server",      :limit => 30
    t.integer "in_port"
    t.string  "sslin",          :limit => 1
    t.string  "sslout",         :limit => 1
    t.string  "inbox_name",     :limit => 30
    t.string  "inbox_active",   :limit => 1
    t.string  "outbox_name",    :limit => 30
    t.string  "outbox_active",  :limit => 1
    t.string  "sent_name",      :limit => 30
    t.string  "sent_active",    :limit => 1
    t.string  "drafts_name",    :limit => 30
    t.string  "drafts_active",  :limit => 1
    t.string  "trash_name",     :limit => 30
    t.string  "trash_active",   :limit => 1
    t.string  "out_login",      :limit => 50
    t.string  "out_password",   :limit => 50
  end

  create_table "fnbl_email_cache", :id => false, :force => true do |t|
    t.string  "guid",       :limit => 200, :null => false
    t.string  "source_uri", :limit => 128, :null => false
    t.integer "principal",  :limit => 8,   :null => false
    t.integer "last_crc",   :limit => 8
    t.string  "invalid",    :limit => 1
    t.string  "internal",   :limit => 1
    t.string  "messageid",  :limit => 700
    t.string  "headerdate", :limit => 20
    t.string  "received",   :limit => 20
    t.string  "subject",    :limit => 700
    t.string  "sender",     :limit => 300
    t.string  "isemail",    :limit => 1
  end

  add_index "fnbl_email_cache", ["principal"], :name => "fk_principal_email_cache"
  add_index "fnbl_email_cache", ["source_uri", "principal"], :name => "ind_fnbl_email_cache_uri_principal"

  create_table "fnbl_email_enable_account", :id => false, :force => true do |t|
    t.integer "account_id", :limit => 8,  :null => false
    t.string  "username",   :limit => 50, :null => false
  end

  add_index "fnbl_email_enable_account", ["username"], :name => "ind_fnbl_email_enable_account_username"

  create_table "fnbl_email_folder", :id => false, :force => true do |t|
    t.string  "guid",       :limit => 50,  :null => false
    t.string  "source_uri", :limit => 128, :null => false
    t.integer "principal",  :limit => 8,   :null => false
    t.string  "parentid",   :limit => 50
    t.string  "path",       :limit => 500
  end

  add_index "fnbl_email_folder", ["principal"], :name => "fk_principal_email_folder"
  add_index "fnbl_email_folder", ["source_uri", "principal"], :name => "ind_fnbl_email_folder_uri_principal"

  create_table "fnbl_email_inbox", :id => false, :force => true do |t|
    t.string  "guid",       :limit => 200, :null => false
    t.string  "username",   :limit => 50,  :null => false
    t.string  "protocol",   :limit => 4,   :null => false
    t.integer "last_crc",   :limit => 8
    t.string  "invalid",    :limit => 1
    t.string  "internal",   :limit => 1
    t.string  "messageid",  :limit => 700
    t.string  "headerdate", :limit => 20
    t.string  "received",   :limit => 20
    t.string  "subject",    :limit => 700
    t.string  "sender",     :limit => 300
    t.string  "token",      :limit => 200
    t.string  "status",     :limit => 1
  end

  add_index "fnbl_email_inbox", ["token"], :name => "ind_fnbl_email_inbox_token"
  add_index "fnbl_email_inbox", ["username", "protocol"], :name => "ind_fnbl_email_inbox_user_prot"

  create_table "fnbl_email_mailserver", :primary_key => "mailserver_id", :force => true do |t|
    t.string  "server_public", :limit => 1
    t.string  "server_type",   :limit => 20
    t.string  "description",   :limit => 50
    t.string  "protocol",      :limit => 5
    t.string  "out_server",    :limit => 30
    t.integer "out_port"
    t.string  "out_auth",      :limit => 1
    t.string  "in_server",     :limit => 30
    t.integer "in_port"
    t.string  "sslin",         :limit => 1
    t.string  "sslout",        :limit => 1
    t.string  "inbox_name",    :limit => 30
    t.string  "inbox_active",  :limit => 1
    t.string  "outbox_name",   :limit => 30
    t.string  "outbox_active", :limit => 1
    t.string  "sent_name",     :limit => 30
    t.string  "sent_active",   :limit => 1
    t.string  "drafts_name",   :limit => 30
    t.string  "drafts_active", :limit => 1
    t.string  "trash_name",    :limit => 30
    t.string  "trash_active",  :limit => 1
    t.string  "soft_delete",   :limit => 1
  end

  create_table "fnbl_email_push_registry", :force => true do |t|
    t.integer "period",         :limit => 8
    t.string  "active",         :limit => 1
    t.integer "last_update",    :limit => 8
    t.string  "status",         :limit => 1
    t.string  "task_bean_file"
  end

  add_index "fnbl_email_push_registry", ["last_update", "status"], :name => "ind_fnbl_email_push_registry_lastupdate_status"
  add_index "fnbl_email_push_registry", ["status"], :name => "ind_fnbl_email_push_registry_status"

  create_table "fnbl_email_sentpop", :id => false, :force => true do |t|
    t.string  "id",         :limit => 200,      :null => false
    t.string  "source_uri", :limit => 128,      :null => false
    t.integer "principal",  :limit => 8,        :null => false
    t.string  "messageid",  :limit => 700
    t.binary  "mail",       :limit => 16777215
  end

  add_index "fnbl_email_sentpop", ["principal"], :name => "fk_principal_email_sentpop"

  create_table "fnbl_file_data_object", :force => true do |t|
    t.string   "userid"
    t.string   "source_uri"
    t.integer  "last_update",     :limit => 8
    t.string   "status",          :limit => 1
    t.string   "upload_status",   :limit => 1
    t.string   "local_name"
    t.integer  "crc",             :limit => 8
    t.string   "true_name"
    t.datetime "created"
    t.datetime "modified"
    t.datetime "accessed"
    t.string   "h",               :limit => 1
    t.string   "s",               :limit => 1
    t.string   "a",               :limit => 1
    t.string   "d",               :limit => 1
    t.string   "w",               :limit => 1
    t.string   "r",               :limit => 1
    t.string   "x",               :limit => 1
    t.string   "cttype"
    t.integer  "object_size",     :limit => 8
    t.integer  "size_on_storage", :limit => 8
    t.string   "deleted_owner"
  end

  add_index "fnbl_file_data_object", ["userid", "source_uri", "last_update", "status"], :name => "ind_file_data_object"

  create_table "fnbl_file_data_object_property", :force => true do |t|
    t.integer "fdo_id", :limit => 8
    t.string  "name"
    t.text    "value"
  end

  add_index "fnbl_file_data_object_property", ["fdo_id"], :name => "fdo_id"

  create_table "fnbl_id", :primary_key => "idspace", :force => true do |t|
    t.integer "counter",      :limit => 8,                  :null => false
    t.integer "increment_by",              :default => 100
  end

  create_table "fnbl_last_sync", :id => false, :force => true do |t|
    t.integer "principal",          :limit => 8,   :null => false
    t.string  "sync_source",        :limit => 128, :null => false
    t.integer "sync_type",                         :null => false
    t.integer "status"
    t.string  "last_anchor_server", :limit => 20
    t.string  "last_anchor_client", :limit => 20
    t.integer "start_sync",         :limit => 8
    t.integer "end_sync",           :limit => 8
  end

  add_index "fnbl_last_sync", ["sync_source"], :name => "fk_source"

  create_table "fnbl_module", :force => true do |t|
    t.string "name",        :limit => 200, :null => false
    t.string "description", :limit => 200
  end

  create_table "fnbl_module_connector", :id => false, :force => true do |t|
    t.string "module",    :limit => 128, :null => false
    t.string "connector", :limit => 128, :null => false
  end

  create_table "fnbl_pending_notification", :force => true do |t|
    t.string  "username",                    :null => false
    t.string  "device",       :limit => 128, :null => false
    t.string  "sync_source",  :limit => 128, :null => false
    t.string  "content_type", :limit => 128, :null => false
    t.integer "sync_type",                   :null => false
    t.integer "ui_mode",                     :null => false
    t.integer "time",         :limit => 8,   :null => false
  end

  add_index "fnbl_pending_notification", ["device"], :name => "fk_pn_device"
  add_index "fnbl_pending_notification", ["username"], :name => "fk_pn_username"

  create_table "fnbl_pim_address", :id => false, :force => true do |t|
    t.integer "contact",          :limit => 8,   :default => 0, :null => false
    t.integer "type",             :limit => 2,   :default => 0, :null => false
    t.string  "street",           :limit => 128
    t.string  "city",             :limit => 64
    t.string  "state",            :limit => 64
    t.string  "postal_code",      :limit => 16
    t.string  "country",          :limit => 32
    t.string  "po_box",           :limit => 16
    t.string  "extended_address"
  end

  create_table "fnbl_pim_calendar", :force => true do |t|
    t.string   "userid"
    t.integer  "last_update",            :limit => 8
    t.string   "status",                 :limit => 1
    t.integer  "type",                   :limit => 2
    t.string   "all_day",                :limit => 1
    t.text     "body"
    t.integer  "busy_status",            :limit => 2
    t.string   "categories"
    t.string   "companies"
    t.string   "birthday",               :limit => 16
    t.integer  "duration"
    t.datetime "dstart"
    t.datetime "dend"
    t.string   "folder"
    t.integer  "importance",             :limit => 2
    t.string   "location"
    t.integer  "meeting_status",         :limit => 2
    t.string   "mileage",                :limit => 16
    t.datetime "reminder_time"
    t.string   "reminder",               :limit => 1
    t.string   "reminder_sound_file"
    t.integer  "reminder_options"
    t.integer  "reminder_repeat_count"
    t.integer  "sensitivity",            :limit => 2
    t.string   "subject",                :limit => 1000
    t.integer  "rec_type",               :limit => 2
    t.integer  "rec_interval"
    t.integer  "rec_month_of_year",      :limit => 2
    t.integer  "rec_day_of_month",       :limit => 2
    t.string   "rec_day_of_week_mask",   :limit => 16
    t.integer  "rec_instance",           :limit => 2
    t.string   "rec_start_date_pattern", :limit => 32
    t.string   "rec_no_end_date",        :limit => 1
    t.string   "rec_end_date_pattern",   :limit => 32
    t.integer  "rec_occurrences",        :limit => 2
    t.string   "dstart_tz"
    t.string   "dend_tz"
    t.string   "reminder_tz"
    t.datetime "reply_time"
    t.datetime "completed"
    t.integer  "percent_complete",       :limit => 2
  end

  add_index "fnbl_pim_calendar", ["userid", "dstart"], :name => "ind_pim_calendar_userid_dstart"
  add_index "fnbl_pim_calendar", ["userid", "last_update", "status"], :name => "ind_pim_calendar"

  create_table "fnbl_pim_calendar_exception", :id => false, :force => true do |t|
    t.integer  "calendar",        :limit => 8, :default => 0,  :null => false
    t.string   "addition",        :limit => 1, :default => "", :null => false
    t.datetime "occurrence_date",                              :null => false
  end

  create_table "fnbl_pim_contact", :force => true do |t|
    t.string  "userid"
    t.integer "last_update",     :limit => 8
    t.string  "status",          :limit => 1
    t.integer "photo_type",      :limit => 2
    t.integer "importance",      :limit => 2
    t.integer "sensitivity",     :limit => 2
    t.string  "subject"
    t.string  "folder"
    t.string  "anniversary",     :limit => 16
    t.string  "first_name",      :limit => 64
    t.string  "middle_name",     :limit => 64
    t.string  "last_name",       :limit => 64
    t.string  "display_name",    :limit => 128
    t.string  "birthday",        :limit => 16
    t.text    "body"
    t.string  "categories"
    t.string  "children"
    t.string  "hobbies"
    t.string  "initials",        :limit => 16
    t.string  "languages"
    t.string  "nickname",        :limit => 64
    t.string  "spouse",          :limit => 128
    t.string  "suffix",          :limit => 32
    t.string  "title",           :limit => 32
    t.string  "gender",          :limit => 1
    t.string  "assistant",       :limit => 128
    t.string  "company"
    t.string  "department"
    t.string  "job_title",       :limit => 128
    t.string  "manager",         :limit => 128
    t.string  "mileage",         :limit => 16
    t.string  "office_location", :limit => 64
    t.string  "profession",      :limit => 64
    t.string  "companies"
  end

  add_index "fnbl_pim_contact", ["userid", "last_update", "status"], :name => "ind_pim_contact"

  create_table "fnbl_pim_contact_item", :id => false, :force => true do |t|
    t.integer "contact", :limit => 8, :default => 0, :null => false
    t.integer "type",    :limit => 2, :default => 0, :null => false
    t.string  "value"
  end

  create_table "fnbl_pim_contact_photo", :primary_key => "contact", :force => true do |t|
    t.string "type",  :limit => 64
    t.binary "photo", :limit => 2147483647
    t.string "url"
  end

  create_table "fnbl_pim_listener_registry", :force => true do |t|
    t.string "username"
    t.string "push_contacts",  :limit => 1
    t.string "push_calendars", :limit => 1
    t.string "push_notes",     :limit => 1
  end

  add_index "fnbl_pim_listener_registry", ["username"], :name => "ind_pim_listener_username"

  create_table "fnbl_pim_note", :force => true do |t|
    t.string  "userid"
    t.integer "last_update",     :limit => 8
    t.string  "status",          :limit => 1
    t.integer "crc",             :limit => 8
    t.string  "subject"
    t.text    "textdescription", :limit => 16777215
    t.string  "categories"
    t.string  "folder"
    t.integer "color"
    t.integer "height"
    t.integer "width"
    t.integer "top"
    t.integer "leftmargin"
  end

  add_index "fnbl_pim_note", ["userid", "last_update", "status"], :name => "ind_pim_note"

  create_table "fnbl_principal", :force => true do |t|
    t.string "username",                :null => false
    t.string "device",   :limit => 128, :null => false
  end

  add_index "fnbl_principal", ["device"], :name => "fk_device"
  add_index "fnbl_principal", ["username", "device"], :name => "ind_principal"
  add_index "fnbl_principal", ["username"], :name => "ind_principal_user"

  create_table "fnbl_push_listener_registry", :force => true do |t|
    t.integer "period",         :limit => 8
    t.string  "active",         :limit => 1
    t.integer "last_update",    :limit => 8
    t.string  "status",         :limit => 1
    t.string  "task_bean_file"
  end

  add_index "fnbl_push_listener_registry", ["last_update", "status"], :name => "ind_push_listener_lastupdate_status"
  add_index "fnbl_push_listener_registry", ["status"], :name => "ind_push_listener_status"

  create_table "fnbl_role", :primary_key => "role", :force => true do |t|
    t.string "description", :limit => 200, :null => false
  end

  create_table "fnbl_sync_source", :primary_key => "uri", :force => true do |t|
    t.string "config",                    :null => false
    t.string "name",       :limit => 200, :null => false
    t.string "sourcetype", :limit => 128, :null => false
  end

  create_table "fnbl_sync_source_type", :force => true do |t|
    t.string "description", :limit => 200
    t.string "class",                      :null => false
    t.string "admin_class"
  end

  create_table "fnbl_user", :primary_key => "username", :force => true do |t|
    t.string "password",   :null => false
    t.string "email"
    t.string "first_name"
    t.string "last_name"
  end

  add_index "fnbl_user", ["username", "password"], :name => "ind_user"

  create_table "fnbl_user_role", :id => false, :force => true do |t|
    t.string "username",                :null => false
    t.string "role",     :limit => 128, :null => false
  end

  create_table "posts", :force => true do |t|
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rwtables", :force => true do |t|
    t.string   "col1"
    t.string   "col2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
