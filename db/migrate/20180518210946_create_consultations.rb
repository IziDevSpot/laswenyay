class CreateConsultations < ActiveRecord::Migration[5.2]
  def change
    create_table :consultations do |t|
      t.integer :dossier_id
      t.integer :general
      t.integer :oreilles_nez_gorge
      t.integer :neurologique_musculaire
      t.integer :gastro_intestinale
      t.integer :dermatologique
      t.integer :génito_urinaire
      t.integer :cardiovasculaire_pulmonaire
      t.text    :remarques
      t.integer :examen_a_effectuer
      t.text    :prescription
      t.text    :recommandation
      t.integer :impression_clinique
      t.timestamps
      
    end
  end
end
