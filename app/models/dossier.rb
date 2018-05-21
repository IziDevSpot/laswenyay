class Dossier < ApplicationRecord
  has_many :consultations, :dependent => :destroy, :inverse_of => :dossier
  accepts_nested_attributes_for :consultations, :allow_destroy => true
  def sexe_enum
        # Do not select any value, or add any blank field. RailsAdmin will do it for you.
        ['masculin', 'feminin']
      end

      def groupe_sanguin_enum
        # Do not select any value, or add any blank field. RailsAdmin will do it for you.
        ['A+', 'A-','B+', 'B-','BA+', 'AB-','O+', 'O-']
      end
      def statut_matrimonial_enum
        # Do not select any value, or add any blank field. RailsAdmin will do it for you.
        ['marié(e)', 'divorcé(e)','célibataire','veuf(ve)']
      end
      def nationalite_enum
        # Do not select any value, or add any blank field. RailsAdmin will do it for you.
        ['Afghanistan',
        'Albania',
        'Algeria',
        'Andorra',
        'Angola',
        'Antigua & Deps',
        'Argentina',
        'Armenia',
        'Australia',
        'Austria',
        'Azerbaijan',
        'Bahamas',
        'Bahrain',
        'Bangladesh',
        'Barbados',
        'Belarus',
        'Belgium',
        'Belize',
        'Benin',
        'Bhutan',
        'Bolivia',
        'Bosnia Herzegovina',
        'Botswana',
        'Brazil',
        'Brunei',
        'Bulgaria',
        'Burkina',
        'Burundi',
        'Cambodia',
        'Cameroon',
        'Canada',
        'Cape Verde',
        'Central African Rep',
        'Chad',
        'Chile',
        'China',
        'Colombia',
        'Comoros',
        'Congo',
        'Congo {Democratic Rep}',
        'Costa Rica',
        'Croatia',
        'Cuba',
        'Cyprus',
        'Czech Republic',
        'Denmark',
        'Djibouti',
        'Dominica',
        'Dominican Republic',
        'East Timor',
        'Ecuador',
        'Egypt',
        'El Salvador',
        'Equatorial Guinea',
        'Eritrea',
        'Estonia',
        'Ethiopia',
        'Fiji',
        'Finland',
        'France',
        'Gabon',
        'Gambia',
        'Georgia',
        'Germany',
        'Ghana',
        'Greece',
        'Grenada',
        'Guatemala',
        'Guinea',
        'Guinea-Bissau',
        'Guyana',
        'Haiti',
        'Honduras',
        'Hungary',
        'Iceland',
        'India',
        'Indonesia',
        'Iran',
        'Iraq',
        'Ireland {Republic}',
        'Israel',
        'Italy',
        'Ivory Coast',
        'Jamaica',
        'Japan',
        'Jordan',
        'Kazakhstan',
        'Kenya',
        'Kiribati',
        'Korea North',
        'Korea South',
        'Kosovo',
        'Kuwait',
        'Kyrgyzstan',
        'Laos',
        'Latvia',
        'Lebanon',
        'Lesotho',
        'Liberia',
        'Libya',
        'Liechtenstein',
        'Lithuania',
        'Luxembourg',
        'Macedonia',
        'Madagascar',
        'Malawi',
        'Malaysia',
        'Maldives',
        'Mali',
        'Malta',
        'Marshall Islands',
        'Mauritania',
        'Mauritius',
        'Mexico',
        'Micronesia',
        'Moldova',
        'Monaco',
        'Mongolia',
        'Montenegro',
        'Morocco',
        'Mozambique',
        'Myanmar, {Burma}',
        'Namibia',
        'Nauru',
        'Nepal',
        'Netherlands',
        'New Zealand',
        'Nicaragua',
        'Niger',
        'Nigeria',
        'Norway',
        'Oman',
        'Pakistan',
        'Palau',
        'Panama',
        'Papua New Guinea',
        'Paraguay',
        'Peru',
        'Philippines',
        'Poland',
        'Portugal',
        'Qatar',
        'Romania',
        'Russian Federation',
        'Rwanda',
        'St Kitts & Nevis',
        'St Lucia',
        'Saint Vincent & the Grenadines',
        'Samoa',
        'San Marino',
        'Sao Tome & Principe',
        'Saudi Arabia',
        'Senegal',
        'Serbia',
        'Seychelles',
        'Sierra Leone',
        'Singapore',
        'Slovakia',
        'Slovenia',
        'Solomon Islands',
        'Somalia',
        'South Africa',
        'South Sudan',
        'Spain',
        'Sri Lanka',
        'Sudan',
        'Suriname',
        'Swaziland',
        'Sweden',
        'Switzerland',
        'Syria',
        'Taiwan',
        'Tajikistan',
        'Tanzania',
        'Thailand',
        'Togo',
        'Tonga',
        'Trinidad & Tobago',
        'Tunisia',
        'Turkey',
        'Turkmenistan',
        'Tuvalu',
        'Uganda',
        'Ukraine',
        'United Arab Emirates',
        'United Kingdom',
        'United States',
        'Uruguay',
        'Uzbekistan',
        'Vanuatu',
        'Vatican City',
        'Venezuela',
        'Vietnam',
        'Yemen',
        'Zambia',
        'Zimbabwe']
      end
      def lieu_de_naissance_enum
        # Do not select any value, or add any blank field. RailsAdmin will do it for you.
        ['Chapelle',
        'Desdunes',
        'Dessalines',
        'Ennery',
        'Gonaives',
        'Grande Saline',
        'Gros Morne',
        'Anse Rouge ',
        'LEstere',
        'Marmelade',
        'Petite-Riviere',
        'Saint Marc',
        'Saint-Michel',
        'Terre-Neuve',
        'Verrettes',
        'Belladere',
        'Boucan Carre',
        'Cerca Carvajal',
        'Cerca la Source',
        'Hinche',
        'Lascahobas',
        'Maissade',
        'Mirebalais',
        'Saut DEau',
        'Savanette',
        'Thomassique',
        'Thomonde',
        'Abricots',
        'Anse DHainault',
        'Beaumont',
        'Bonbon',
        'Chambellan',
        'Corail',
        'Dame-Marie',
        'Jeremie',
        'Les Irois',
        'Moron',
        'Pestel',
        'Roseaux',
        'Anse-a-Veau',
        'Arnaud',
        'Baraderes',
        'Fonds des Negres',
        'Grand Boucan',
        'Asile',
        'Miragoane',
        'Paillant',
        'Petite Riviere',
        'Petit-Trou-de-Nippes',
        'Plaisance du Sud',
        'Bahon',
        'Bas Limbe',
        'Borgne',
        'Cap Haitien',
        'Dondon',
        'Grde Riviere du Nord',
        'Acul du Nord',
        'Limbe',
        'Limonade',
        'Milot',
        'Pignon',
        'Pilate',
        'Plaine du Nord',
        'Plaisance',
        'Port Margot',
        'Quartier Morin',
        'Ranquite',
        'Saint Raphael',
        'Victoire',
        'Capotille',
        'Caracol',
        'Carice',
        'Ferrier',
        'Fort-Liberte',
        'Mombin Crochu',
        'Mont-Organise',
        'Ouanaminthe',
        'Perches',
        'Sainte Suzanne',
        'Terrier Rouge',
        'Trou du Nord',
        'Vallieres',
        'Anse-a-Foleur',
        'Baie de Henne',
        'Bassin Bleu',
        'Bombardopolis',
        'Chansolme',
        'Jean Rabel',
        'La Tortue',
        'Mole St Nicolas',
        'Port-de-Paix',
        'St Louis Nord',
        'Anse a Galets',
        'Cabaret',
        'Carrefour',
        'Cité-Soleil',
        'Cornillon',
        'Croix des Bouquets',
        'Delmas',
        'Fonds-Verrettes',
        'Ganthier',
        'Grand-Goave',
        'Gressier',
        'Kenscoff',
        'Archahaie',
        'Leogane',
        'Petion-Ville',
        'Petit-Goave',
        'Pointe a Raquette',
        'Port-au-Prince',
        'Tabarre',
        'Thomazeau',
        'Anglais',
        'Aquin',
        'Arniquet',
        'Camp Perrin',
        'Cavaillon',
        'Cayes',
        'Chantal',
        'Chardonnieres',
        'Coteaux',
        'Ile a Vache',
        'Maniche',
        'Port Salut',
        'Port-a-Piment',
        'Roche a Bateau',
        'St Jean du Sud',
        'St Louis du Sud',
        'Tiburon',
        'Torbeck',
        'Anse-a-Pitre',
        'Bainet',
        'Belle Anse',
        'Cayes Jacmel',
        'Cote-de-Fer',
        'Grand-Gosier',
        'Jacmel',
        'La Vallee',
        'Marigot',
        'Thiotte',
        ]
    end
    def asthme_heredo_collateraux_enum
        # Do not select any value, or add any blank field. RailsAdmin will do it for you.
        ['pere', 'mere','pere/mere','frere/seoeur']
      end
      def cancer_heredo_collateraux_enum
        # Do not select any value, or add any blank field. RailsAdmin will do it for you.
        ['pere', 'mere','pere/mere','frere/seoeur']
      end
      def cardiopathie_heredo_collateraux_enum
        # Do not select any value, or add any blank field. RailsAdmin will do it for you.
        ['pere', 'mere','pere/mere','frere/seoeur']
      end

      def diabete_heredo_collateraux_enum
        # Do not select any value, or add any blank field. RailsAdmin will do it for you.
        ['pere', 'mere','pere/mere','frere/seoeur']
      end

      def epilepsie_heredo_collateraux_enum
        # Do not select any value, or add any blank field. RailsAdmin will do it for you.
        ['pere', 'mere','pere/mere','frere/seoeur']
      end

      def hta_heredo_collateraux_enum
        # Do not select any value, or add any blank field. RailsAdmin will do it for you.
        ['pere', 'mere','pere/mere','frere/seoeur']
      end
      def tuberculose_heredo_collateraux_enum
        # Do not select any value, or add any blank field. RailsAdmin will do it for you.
        ['pere', 'mere','pere/mere','frere/seoeur']
      end
      def asthme_antecedents_personnels_enum
        # Do not select any value, or add any blank field. RailsAdmin will do it for you.
        ['oui','non']
      end
      def accident_cerebro_vasculaire_antecedents_personnels_enum
        # Do not select any value, or add any blank field. RailsAdmin will do it for you.
        ['oui','non']
      end
      def allergie_antecedents_personnels_enum
        # Do not select any value, or add any blank field. RailsAdmin will do it for you.
        ['oui','non']
      end
      def cancer_antecedents_personnels_enum
        # Do not select any value, or add any blank field. RailsAdmin will do it for you.
        ['oui','non']
      end
      def cardiopathie_antecedents_personnels_enum
        # Do not select any value, or add any blank field. RailsAdmin will do it for you.
        ['oui','non']
      end
      def chirurgie_antecedents_personnels_enum
        # Do not select any value, or add any blank field. RailsAdmin will do it for you.
        ['oui','non']
      end
      def diabete_antecedents_personnels_enum
        # Do not select any value, or add any blank field. RailsAdmin will do it for you.
        ['oui','non']
      end
      def epilepsie_antecedents_personnels_enum
        # Do not select any value, or add any blank field. RailsAdmin will do it for you.
        ['oui','non']
      end
      def grossesse_antecedents_personnels_enum
        # Do not select any value, or add any blank field. RailsAdmin will do it for you.
        ['oui','non']
      end
      def hemoglobinopathie_antecedents_personnels_enum
        # Do not select any value, or add any blank field. RailsAdmin will do it for you.
        ['oui','non']
      end
      def hta_antecedents_personnels_enum
        # Do not select any value, or add any blank field. RailsAdmin will do it for you.
        ['oui','non']
      end
      def hypercholesterolemie_antecedents_personnels_enum
        # Do not select any value, or add any blank field. RailsAdmin will do it for you.
        ['oui','non']
      end
      def ist_antecedents_personnels_enum
        # Do not select any value, or add any blank field. RailsAdmin will do it for you.
        ['oui','non']
      end
      def malnutrition_perte_de_poids_antecedents_personnels_enum
        # Do not select any value, or add any blank field. RailsAdmin will do it for you.
        ['oui','non']
      end
      def malaria_antecedents_personnels_enum
        # Do not select any value, or add any blank field. RailsAdmin will do it for you.
        ['oui','non']
      end
      def tuberculose_antecedents_personnels_enum
        # Do not select any value, or add any blank field. RailsAdmin will do it for you.
        ['oui','non']
      end
      def trouble_psychiatriques_antecedents_personnels_enum
        # Do not select any value, or add any blank field. RailsAdmin will do it for you.
        ['oui','non']
      end
     
      def alcool_antecedents_personnels_enum
        # Do not select any value, or add any blank field. RailsAdmin will do it for you.
        ['oui','non']
      end
      def drogue_antecedents_personnels_enum
        # Do not select any value, or add any blank field. RailsAdmin will do it for you.
        ['oui','non']
      end
      def tabac_antecedents_personnels_enum
        # Do not select any value, or add any blank field. RailsAdmin will do it for you.
        ['oui','non']
      end
end
