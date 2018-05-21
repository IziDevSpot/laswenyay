class Consultation < ApplicationRecord
    belongs_to :dossier, :inverse_of => :consultations
    def general_enum
        ['Asthénie',
        'Courbature',
        'Douleurs',
        'Oedème',
        'Fièvre < 2 semaines',
        'Frissons',
        'Perte de poids']
      end
      def oreilles_nez_gorge_enum
        ['Ecoulement purulent yeux',
        'Epistaxis',
        'Œil rouge',
        'Otalgie',
        'Otorrhée']
      end
      def neurologique_musculaire_enum
        ['Aphasie',
        'Boiterie/Steppage',
        'Céphalée/Maux de têe',
        'Coma',
        'Convulsion',
        'Hémorragie',
        'Myalgie',
        'Paralysie flasque',
        'Syncope',
        'Vertiges'
        ]
      end

      def gastro_intestinale_enum
        ['Constipation',
        'Diarrhee, 2 semaines',
        'Diarrhee> 2 semaines',
        'Douleurs Abdominales',
        'Dysphagie',
        'Hématémèse',
        'Ictère/jaunisse',
        'Inappétence',
        'Méléna',
        'Nausée',
        'Pyrosis',
        'Vomissements']
      end

      def cardiovasculaire_pulmonaire_enum
        ['Douleurs Précordiales',
        'Dyspnée',
        'Hémoptysie',
        'palpations',
        'Toux < 2 semaines',
        'Toux > 2 semaines'
        ]
      end


      def dermatologique_enum
        [
        'Eruptions cutanées',
        'Prurit']
      end

      def génito_urinaire_enum
        [
            'Brulures mictionnelles',
            'Douleurs hypogastriques',
            'Dysurie',
            'Ecoulement urétral',
            'Hematurie',
            'Hemorragie vaginale',
            'Perte vaginales',
            'Pollakiurie',
            'Polyurie',
            'Prurit vulvaire',
            'Ulcération',
            'Rétard des règles']
      end

      def examen_a_effectuer_enum
        [
            'Groupe Sanguin',
'Malaria : Test Rapide',
'Selles',
'Radiographie',
'Hémogramme',
'Malaria : Frottis Sanguin',
'Test de Grossesse',
'Echographie',
'Glycémie',
'RPR',
'Frottis Vaginal/gouttes pendantes',
'Autres',
'ASAT /ALAT',
'Sérologie VIH',
'VIA',
'Autres',
'Urée/créatinine',
'Widal',
'Pap test',
'C Réactive proteine',
'Crachats en serie',
'PPD',
'Electrophorèse de l’Hb',
'Urines',
'Sickling test'
]
      end


      def impression_clinique_enum
        [
'Accident cérébro-vasculaire',
'Dengue',
'Teigne',
'Anémie',
'Fièvre hémorragique aigue',
'Tétanos',
'Asthme',
'Fièvre typhoide',
'Tuberculose',
'Cardiopathie',
'Fievre typhoide',
'Varicelle',
'Diabète type 1',
'Filariose lymphatique',
'VIH/SIDA',
'Diabète type 2',
'Gale',
'Psychiatrie',
'Diarrhee aigue aqueuse',
'Infection génito-urinaire',
'Trouble psychiatrique d’étiologie à investiguer',
'Diarrhee aigue sanguimolente',
'Infection respiratoire aigue',
'Trauma',
'Drépanocytose :SS/Sc',
'Infection des tissus mou',
'Agression sexuelle',
'Epilepsie',
'IST',
'Brulure',
'Fièvre (cause indeterminee)',
'Lèpre',
'Fracture osseuse',
'Grossesse',
'Malaria (paludisme)',
'Plaie',
'HTA',
'Méningite',
'Trauma cranien',
'Malnutrition/perte de poids',
'Otite',
'Pathologies tumorales',
'Urgence Chirurgicale',
'Parasitose',
'Cancer du col',
'Maladies infectieuses',
'Pneumonie',
'Cancer de la prostate',
'Amygdalites',
'Poliomyelite',
'Cancer du sein',
'Charbon',
'Rage']
      end





end
