ActiveRecord::Schema.define(version: 2022_02_15_082422) do

  enable_extension "plpgsql"

  create_table "feeds", force: :cascade do |t|
    t.text "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.text "content"
    t.index ["user_id"], name: "index_feeds_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "feeds", "users"
end
