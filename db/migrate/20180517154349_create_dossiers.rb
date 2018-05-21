class CreateDossiers < ActiveRecord::Migration[5.2]
  def change
    create_table :dossiers do |t|
      t.string :nom
      t.string :prenom
      t.date :date_naisance
      t.integer :sexe
      t.integer :groupe_sanguin
      t.text :adresse
      t.integer :telephone
      t.string :profession
      t.integer:statut_matrimonial
      t.integer :nationalite
      t.integer :lieu_de_naissance
      t.integer :asthme_heredo_collateraux
      t.integer :cancer_heredo_collateraux
      t.integer :cardiopathie_heredo_collateraux
      t.integer :diabete_heredo_collateraux
      t.integer :epilepsie_heredo_collateraux
      t.integer :hta_heredo_collateraux
      t.integer :tuberculose_heredo_collateraux
      t.integer :asthme_antecedents_personnels
      t.integer :accident_cerebro_vasculaire_antecedents_personnels
      t.integer :allergie_antecedents_personnels
      t.integer :cancer_antecedents_personnels
      t.integer :cardiopathie_antecedents_personnels
      t.integer :chirurgie_antecedents_personnels
      t.integer :diabete_antecedents_personnels
      t.integer :epilepsie_antecedents_personnels
      t.integer :grossesse_antecedents_personnels
      t.integer :hemoglobinopathie_antecedents_personnels
      t.integer :hta_antecedents_personnels
      t.integer :hypercholesterolemie_antecedents_personnels
      t.integer :ist_antecedents_personnels
      t.integer :malnutrition_perte_de_poids_antecedents_personnels
      t.integer :malaria_antecedents_personnels
      t.integer :tuberculose_antecedents_personnels
      t.integer :trouble_psychiatriques_antecedents_personnels
      t.integer :alcool_antecedents_personnels
      t.integer :drogue_antecedents_personnels
      t.integer :tabac_antecedents_personnels
      t.text :remarques

      
      
      
      

      t.timestamps
    end
  end
end
