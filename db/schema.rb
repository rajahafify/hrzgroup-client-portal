ActiveRecord::Schema[8.0].define(version: 20250101001000) do
  create_table "clients", force: :cascade do |t|
    t.string "company_name", null: false
    t.string "contact_no", null: false
    t.string "contact_email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_name"], name: "index_clients_on_company_name", unique: true
    t.index ["contact_email"], name: "index_clients_on_contact_email", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.integer "role", default: 2, null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end
end
