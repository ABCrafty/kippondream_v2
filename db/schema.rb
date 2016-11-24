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

ActiveRecord::Schema.define(version: 20161124112257) do

  create_table "friendly_id_slugs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree
  end

  create_table "magazines", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "titre"
    t.string   "thumbnail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
  end

  create_table "mangas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "titre"
    t.string   "thumbnail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
  end

  create_table "pages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "magazine_id"
  end

  create_table "scans", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "manga_id"
  end

end
