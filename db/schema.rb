# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_06_18_151946) do
  create_table "commandes", force: :cascade do |t|
    t.bigint "partie_id", null: false
    t.date "date"
    t.bigint "fournisseur_id", null: false
    t.bigint "transporteur_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fournisseur_id"], name: "index_commandes_on_fournisseur_id"
    t.index ["partie_id"], name: "index_commandes_on_partie_id"
    t.index ["transporteur_id"], name: "index_commandes_on_transporteur_id"
  end

  create_table "employes", force: :cascade do |t|
    t.string "nom"
    t.string "specialite"
    t.bigint "garage_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["garage_id"], name: "index_employes_on_garage_id"
  end

  create_table "fournisseurs", force: :cascade do |t|
    t.string "nom"
    t.string "adresse"
    t.string "telephone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "garages", force: :cascade do |t|
    t.string "nom"
    t.string "adresse"
    t.integer "capacite"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "info_commandes", force: :cascade do |t|
    t.bigint "commande_id", null: false
    t.text "details"
    t.string "statut"
    t.string "raison_retard"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commande_id"], name: "index_info_commandes_on_commande_id"
  end

  create_table "parties", force: :cascade do |t|
    t.string "nom"
    t.decimal "prix"
    t.integer "stock"
    t.bigint "voiture_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["voiture_id"], name: "index_parties_on_voiture_id"
  end

  create_table "proprietaires", force: :cascade do |t|
    t.string "nom"
    t.string "email"
    t.string "telephone"
    t.bigint "voiture_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["voiture_id"], name: "index_proprietaires_on_voiture_id"
  end

  create_table "services", force: :cascade do |t|
    t.date "date"
    t.string "type_service"
    t.decimal "cout"
    t.bigint "voiture_id", null: false
    t.bigint "employe_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employe_id"], name: "index_services_on_employe_id"
    t.index ["voiture_id"], name: "index_services_on_voiture_id"
  end

  create_table "transporteurs", force: :cascade do |t|
    t.string "nom"
    t.string "telephone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "voitures", force: :cascade do |t|
    t.string "numero_immatriculation"
    t.string "couleur"
    t.string "statut"
    t.integer "anee"
    t.string "marque"
    t.bigint "garage_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["garage_id"], name: "index_voitures_on_garage_id"
  end

  add_foreign_key "commandes", "fournisseurs"
  add_foreign_key "commandes", "parties", column: "partie_id"
  add_foreign_key "commandes", "transporteurs"
  add_foreign_key "employes", "garages"
  add_foreign_key "info_commandes", "commandes"
  add_foreign_key "parties", "voitures"
  add_foreign_key "proprietaires", "voitures"
  add_foreign_key "services", "employes"
  add_foreign_key "services", "voitures"
  add_foreign_key "voitures", "garages"
end
