# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

# Create Garages
garages = 5.times.map do
  Garage.create!(
    nom: Faker::Company.name,
    adresse: Faker::Address.full_address,
    capacite: rand(10..100)
  )
end

# Create Voitures
voitures = 50.times.map do
  Voiture.create!(
    numero_immatriculation: Faker::Vehicle.license_plate,
    couleur: Faker::Color.color_name,
    statut: ["Disponible", "Vendu", "En réparation"].sample,
    anee: rand(1990..2023),
    marque: Faker::Vehicle.make,
    garage: garages.sample
  )
end

# Create Proprietaires
proprietaires = voitures.map do |voiture|
  Proprietaire.create!(
    nom: Faker::Name.name,
    email: Faker::Internet.email,
    telephone: Faker::PhoneNumber.phone_number,
    voiture: voiture
  )
end

# Create Employes
employes = 28.times.map do
  Employe.create!(
    nom: Faker::Name.name,
    specialite: ["Carrosserie", "Moteur", "Peinture", "Électronique"].sample,
    garage: garages.sample
  )
end

# Create Services
20.times do
  Service.create!(
    date: Faker::Date.backward(days: 365),
    type_service: ["Vidange", "Freins", "Alignement", "Diagnostic"].sample,
    cout: rand(50.0..500.0).round(2),
    voiture: voitures.sample,
    employe: employes.sample
  )
end

# Create Parties
parties = 21.times.map do
  Partie.create!(
    nom: Faker::Vehicle.standard_specs.sample,
    prix: rand(20.0..300.0).round(2),
    stock: rand(1..50),
    voiture: voitures.sample
  )
end

# Create Fournisseurs
fournisseurs = 5.times.map do
  Fournisseur.create!(
    nom: Faker::Company.name,
    adresse: Faker::Address.full_address,
    telephone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email
  )
end

# Create Transporteurs
transporteurs = 3.times.map do
  Transporteur.create!(
    nom: Faker::Company.name,
    telephone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.email
  )
end

# Create Commandes
commandes = 21.times.map do
  Commande.create!(
    partie: parties.sample,
    date: Faker::Date.backward(days: 100),
    fournisseur: fournisseurs.sample,
    transporteur: transporteurs.sample
  )
end

# Create InfoCommandes
commandes.each do |commande|
  InfoCommande.create!(
    commande: commande,
    details: Faker::Lorem.sentence(word_count: 10),
    statut: ["En cours", "Livré", "Retardé"].sample,
    raison_retard: ["Problème logistique", "Météo", "Douanes", nil].sample
  )
end
