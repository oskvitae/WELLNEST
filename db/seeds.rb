# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb

# Clear existing data
Service.destroy_all

# Seed data
services = [
  {
    title: "Vinyasa Flow Yoga",
    description: "A dynamic yoga class focused on connecting breath with movement.",
    category: "Yoga",
    duration: 60,
    price: 20.00,
    user_id: 1, # Adjust based on your existing user IDs
    url: ""
  },
  {
    title: "Breathwork for Relaxation",
    description: "Learn techniques to reduce stress and improve mental clarity through breathwork.",
    category: "Breathwork",
    duration: 45,
    price: 25.00,
    user_id: 2,
    url: ""
  },
  {
    title: "Reiki Healing Session",
    description: "A hands-on energy healing technique to promote overall well-being.",
    category: "Reiki",
    duration: 90,
    price: 50.00,
    user_id: 3,
    url: ""
  },
  {
    title: "Guided Meditation",
    description: "A calming session to guide you into a state of deep relaxation.",
    category: "Meditation",
    duration: 30,
    price: 15.00,
    user_id: 1,
    url: ""
  },
  {
    title: "Hatha Yoga for Beginners",
    description: "A gentle yoga class tailored for beginners to learn foundational poses.",
    category: "Yoga",
    duration: 60,
    price: 18.00,
    user_id: 2,
    url: ""
  },
  {
    title: "Sound Bath Therapy",
    description: "Experience deep relaxation through the soothing sounds of crystal bowls.",
    category: "Sound Therapy",
    duration: 60,
    price: 30.00,
    user_id: 3,
    url: ""
  }
]

# Create services
services.each do |service_data|
  Service.create!(service_data)
end

puts "Seed data created: #{Service.count} services."
