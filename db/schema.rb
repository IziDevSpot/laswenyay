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

ActiveRecord::Schema.define(version: 2018_05_20_023248) do

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "consultations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "dossier_id"
    t.integer "general"
    t.integer "oreilles_nez_gorge"
    t.integer "neurologique_musculaire"
    t.integer "gastro_intestinale"
    t.integer "dermatologique"
    t.integer "génito_urinaire"
    t.integer "cardiovasculaire_pulmonaire"
    t.text "remarques"
    t.integer "examen_a_effectuer"
    t.text "prescription"
    t.text "recommandation"
    t.integer "impression_clinique"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dossiers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nom"
    t.string "prenom"
    t.date "date_naisance"
    t.integer "sexe"
    t.integer "groupe_sanguin"
    t.text "adresse"
    t.integer "telephone"
    t.string "profession"
    t.integer "statut_matrimonial"
    t.integer "nationalite"
    t.integer "lieu_de_naissance"
    t.integer "asthme_heredo_collateraux"
    t.integer "cancer_heredo_collateraux"
    t.integer "cardiopathie_heredo_collateraux"
    t.integer "diabete_heredo_collateraux"
    t.integer "epilepsie_heredo_collateraux"
    t.integer "hta_heredo_collateraux"
    t.integer "tuberculose_heredo_collateraux"
    t.integer "asthme_antecedents_personnels"
    t.integer "accident_cerebro_vasculaire_antecedents_personnels"
    t.integer "allergie_antecedents_personnels"
    t.integer "cancer_antecedents_personnels"
    t.integer "cardiopathie_antecedents_personnels"
    t.integer "chirurgie_antecedents_personnels"
    t.integer "diabete_antecedents_personnels"
    t.integer "epilepsie_antecedents_personnels"
    t.integer "grossesse_antecedents_personnels"
    t.integer "hemoglobinopathie_antecedents_personnels"
    t.integer "hta_antecedents_personnels"
    t.integer "hypercholesterolemie_antecedents_personnels"
    t.integer "ist_antecedents_personnels"
    t.integer "malnutrition_perte_de_poids_antecedents_personnels"
    t.integer "malaria_antecedents_personnels"
    t.integer "tuberculose_antecedents_personnels"
    t.integer "trouble_psychiatriques_antecedents_personnels"
    t.integer "alcool_antecedents_personnels"
    t.integer "drogue_antecedents_personnels"
    t.integer "tabac_antecedents_personnels"
    t.text "remarques"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
