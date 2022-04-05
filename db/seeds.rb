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
