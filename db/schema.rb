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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180408174956) do

  create_table "admin_permissions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "admin_id"
    t.integer  "component_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["admin_id", "component_id"], name: "index_admin_permissions_on_admin_id_and_component_id", unique: true, using: :btree
    t.index ["admin_id"], name: "index_admin_permissions_on_admin_id", using: :btree
    t.index ["component_id"], name: "index_admin_permissions_on_component_id", using: :btree
  end

  create_table "admin_type_permissions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "admin_type_id"
    t.integer  "component_id"
    t.integer  "updated_by_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["admin_type_id", "component_id"], name: "index_admin_type_permissions_on_admin_type_id_and_component_id", unique: true, using: :btree
    t.index ["admin_type_id"], name: "index_admin_type_permissions_on_admin_type_id", using: :btree
    t.index ["component_id"], name: "index_admin_type_permissions_on_component_id", using: :btree
    t.index ["updated_by_id"], name: "index_admin_type_permissions_on_updated_by_id", using: :btree
  end

  create_table "admin_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",        null: false
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "admins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "admin_type_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["admin_type_id"], name: "index_admins_on_admin_type_id", using: :btree
    t.index ["user_id"], name: "index_admins_on_user_id", using: :btree
  end

  create_table "components", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",        null: false
    t.string   "description"
    t.string   "url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "desc"
    t.string   "icon"
    t.string   "url"
    t.boolean  "mac",        default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "user_roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_user_roles_on_role_id", using: :btree
    t.index ["user_id", "role_id"], name: "index_user_roles_on_user_id_and_role_id", unique: true, using: :btree
    t.index ["user_id"], name: "index_user_roles_on_user_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "provider",                             default: "email", null: false
    t.string   "uid",                                  default: "",      null: false
    t.string   "encrypted_password",                   default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                        default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "firstname",                                              null: false
    t.string   "middlename"
    t.string   "lastname",                                               null: false
    t.string   "image"
    t.string   "email"
    t.text     "tokens",                 limit: 65535
    t.datetime "created_at",                                             null: false
    t.datetime "updated_at",                                             null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree
  end

  add_foreign_key "admin_permissions", "admins"
  add_foreign_key "admin_permissions", "components"
  add_foreign_key "admin_type_permissions", "admin_types"
  add_foreign_key "admin_type_permissions", "components"
  add_foreign_key "admin_type_permissions", "users", column: "updated_by_id"
  add_foreign_key "admins", "admin_types"
  add_foreign_key "admins", "users"
  add_foreign_key "user_roles", "roles"
  add_foreign_key "user_roles", "users"
end
