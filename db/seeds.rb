# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

#   movies = Movie.create([{name: 'Star Wars' }, {name: 'Lord of the Rings' }])
#   Character.createname: 'Luke', movie: movies.first)

usecases = Usecase.create([{name: "surveiller la qualité de l'air extérieur"},
  {name: "surveiller la qualité de l'air intérieur" },
  {name: "détecter un incendie"},
  {name: "surveiller un lieu"},
  {name: "contrôler la ventilation d'une pièce"},
  {name: "détecter une présence"},
  {name: "améliorer le confort intérieur"},
  {name: "surveiller les conditions météo"},
  {name: "irriguer un lieu"},
  {name: "gérer un équipement industriel (générique)"},
  {name: "suivi de la chaîne du froid"},
  {name: "surveiller une denrée périssable"},
  {name: "détecter un mouvement"},
  {name: "gérer des déchets"},
  {name: "iréceptionner de la marchandise"},
  {name: "valoriser des déchets"},
  ])

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
iotproducts = Iotproduct.create([{product_name: 'Flexidry'},
   {product_name: 'CO2 , TEMPERATURE, HUMIDITY AND BAROMETRIC PRESSURE
    SENSOR FOR LORAWAN ®'},
   {product_name: 'INDOOR AMBIANCE MONITOR INCLUDING CO₂, TVOC AND MOTION SENSOR FOR LoRaWAN®'},
   {product_name: 'ANALOG OR DIGITAL SENSOR DEVICE FOR LoRaWAN®'},
   {product_name: 'K-Hub'},
   ])
