# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

#   movies = Movie.create([{name: 'Star Wars' }, {name: 'Lord of the Rings' }])
#   Character.createname: 'Luke', movie: movies.first)

UC1 = Usecase.create({name: "surveiller la qualité de l'air extérieur"})
UC2 = Usecase.create({name: "surveiller la qualité de l'air intérieur"})
UC3 = Usecase.create({name: "détecter un incendie"})
UC4 = Usecase.create({name: "surveiller un lieu"})
UC5 = Usecase.create({name: "contrôler la ventilation d'une pièce"})
UC6 = Usecase.create({name: "détecter une présence"})
UC7 = Usecase.create({name: "améliorer le confort intérieur"})
UC8 = Usecase.create({name: "surveiller les conditions météo"})
UC9 = Usecase.create({name: "irriguer un lieu"})
UC10 = Usecase.create({name: "gérer un équipement indUCtriel (générique)"})
UC11 = Usecase.create({name: "suivi de la chaîne du froid"})
UC12 = Usecase.create({name: "surveiller une denrée périssable"})
UC13 = Usecase.create({name: "détecter un mouvement"})
UC14 = Usecase.create({name: "gérer des déchets"})
UC15 = Usecase.create({name: "réceptionner de la marchandise"})
UC16 = Usecase.create({name: "valoriser des déchets"})
UC17 = Usecase.create({name: "télégérer une machine"})

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

IOTP1 = Iotproduct.create({product_name: 'Flexidry'})
IOTP2 = Iotproduct.edit({id:2, product_name: 'CO2 , TEMPERATURE, HUMIDITY AND BAROMETRIC PRESSURE SENSOR FOR LORAWAN ®',
  product_type: "End node", constructor: "Decentlab GmbH", eco_score: "82"})
IOTP3 = Iotproduct.create({product_name: 'INDOOR AMBIANCE MONITOR INCLUDING CO₂, TVOC AND MOTION SENSOR FOR LoRaWAN®'})
IOTP4 = Iotproduct.create({product_name: 'ANALOG OR DIGITAL SENSOR DEVICE FOR LoRaWAN®'})
IOTP5 = Iotproduct.create({product_name: 'K-Hub'})

REC1_1 = Casesiot.create(iotproduct: IOTP1, usecase: UC14)
REC1_2 = Casesiot.create(iotproduct: IOTP1, usecase: UC15)
REC1_3 = Casesiot.create(iotproduct: IOTP1, usecase: UC16)
REC1_4 = Casesiot.create(iotproduct: IOTP1, usecase: UC17) # ok!

REC2_1 = Casesiot.create(iotproduct: IOTP2, usecase: UC1)
REC2_2 = Casesiot.create(iotproduct: IOTP2, usecase: UC2)
REC2_3 = Casesiot.create(iotproduct: IOTP2, usecase: UC5)
REC2_4 = Casesiot.create(iotproduct: IOTP2, usecase: UC12)
REC2_5 = Casesiot.create(iotproduct: IOTP2, usecase: UC3) # ok!

REC3_1 = Casesiot.create(iotproduct: IOTP3, usecase: UC2)
REC3_2 = Casesiot.create(iotproduct: IOTP3, usecase: UC4)
REC3_3 = Casesiot.create(iotproduct: IOTP3, usecase: UC6)
REC3_4 = Casesiot.create(iotproduct: IOTP3, usecase: UC5)
REC3_5 = Casesiot.create(iotproduct: IOTP3, usecase: UC7) # ok!

REC4_1 = Casesiot.create(iotproduct: IOTP4, usecase: UC10)
REC4_2 = Casesiot.create(iotproduct: IOTP4, usecase: UC8)
REC4_3 = Casesiot.create(iotproduct: IOTP4, usecase: UC9) # try console again

REC5_1 = Casesiot.create(iotproduct: IOTP5, usecase: UC15)
REC5_2 = Casesiot.create(iotproduct: IOTP5, usecase: UC11)
REC5_3 = Casesiot.create(iotproduct: IOTP5, usecase: UC12)
REC5_4 = Casesiot.create(iotproduct: IOTP5, usecase: UC13) # ok!
