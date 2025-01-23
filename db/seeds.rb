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
# db/seeds.rb

# Clear existing data
User.destroy_all

# Seed data for users
users = [
  {
    first_name: "Alice",
    last_name: "Johnson",
    email: "alice.johnson@example.com",
    password: "password123",
    avatar: "https://cdn.pixabay.com/photo/2023/06/02/21/24/portrait-8036356_1280.jpg"
  },
  {
    first_name: "Bob",
    last_name: "Smith",
    email: "bob.smith@example.com",
    password: "password123",
    avatar: "https://cdn.pixabay.com/photo/2023/06/02/21/24/portrait-8036356_1280.jpg"
  },
  {
    first_name: "Charlie",
    last_name: "Brown",
    email: "charlie.brown@example.com",
    password: "password123",
    avatar: "https://cdn.pixabay.com/photo/2023/06/02/21/24/portrait-8036356_1280.jpg"
  },
  {
    first_name: "Diana",
    last_name: "Miller",
    email: "diana.miller@example.com",
    password: "password123",
    avatar: "https://cdn.pixabay.com/photo/2023/06/02/21/24/portrait-8036356_1280.jpg"
  },
  {
    first_name: "Ethan",
    last_name: "Clark",
    email: "ethan.clark@example.com",
    password: "password123",
    avatar: "https://cdn.pixabay.com/photo/2023/06/02/21/24/portrait-8036356_1280.jpg"
  },
  {
    first_name: "Fiona",
    last_name: "Davis",
    email: "fiona.davis@example.com",
    password: "password123",
    avatar: "https://cdn.pixabay.com/photo/2023/06/02/21/24/portrait-8036356_1280.jpg"
  },
  {
    first_name: "Oskar",
    last_name: "Filip",
    email: "oskvitae@gmail.com",
    password: "password123",
    avatar: "https://cdn.pixabay.com/photo/2023/06/02/21/24/portrait-8036356_1280.jpg"
  }
]

# Create users
users.each do |user_data|
  User.create!(user_data)
end

puts "Seed data created: #{User.count} users."




Service.destroy_all

# Seed data
Service.create!([
  {
    "title": "Vinyasa Flow Yoga",
    "description": "A dynamic yoga class focused on connecting breath with movement.",
    "category": "Yoga",
    "duration": 60,
    "price": 20.00,
    "user_id": 1,
    "image": "https://images.pexels.com/photos/917732/pexels-photo-917732.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "date": "2024-07-15",
    "time": "18:30",
    "location": "Manchester",
    "class_size": 20
  },
  {
    "title": "Breathwork for Relaxation",
    "description": "Learn techniques to reduce stress and improve mental clarity through breathwork.",
    "category": "Breathwork",
    "duration": 45,
    "price": 25.00,
    "user_id": 2,
    "image": "https://images.pexels.com/photos/8981392/pexels-photo-8981392.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "date": "2024-07-22",
    "time": "19:00",
    "location": "Bristol",
    "class_size": 15
  },
  {
    "title": "Reiki Healing Session",
    "description": "A hands-on energy healing technique to promote overall well-being.",
    "category": "Reiki",
    "duration": 90,
    "price": 50.00,
    "user_id": 3,
    "image": "https://images.pexels.com/photos/6932075/pexels-photo-6932075.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "date": "2024-08-05",
    "time": "17:45",
    "location": "Edinburgh",
    "class_size": 10
  },
  {
    "title": "Guided Meditation",
    "description": "A calming session to guide you into a state of deep relaxation.",
    "category": "Meditation",
    "duration": 30,
    "price": 15.00,
    "user_id": 1,
    "image": "https://images.pexels.com/photos/4047042/pexels-photo-4047042.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "date": "2024-07-18",
    "time": "20:00",
    "location": "Liverpool",
    "class_size": 25
  },
  {
    "title": "Hatha Yoga for Beginners",
    "description": "A gentle yoga class tailored for beginners to learn foundational poses.",
    "category": "Yoga",
    "duration": 60,
    "price": 18.00,
    "user_id": 2,
    "image": "https://images.pexels.com/photos/8436640/pexels-photo-8436640.jpeg?auto=compress&cs=tinysrgb&w=600",
    "date": "2024-07-30",
    "time": "19:30",
    "location": "Birmingham",
    "class_size": 18
  },
  {
    "title": "Sound Bath Therapy",
    "description": "Experience deep relaxation through the soothing sounds of crystal bowls.",
    "category": "Sound Therapy",
    "duration": 60,
    "price": 30.00,
    "user_id": 3,
    "image": "https://images.pexels.com/photos/3543846/pexels-photo-3543846.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "date": "2024-08-12",
    "time": "18:15",
    "location": "Glasgow",
    "class_size": 12
  }
])


puts "Seed data created: #{Service.count} services."

# db/seeds.rb

# Clear existing data
Booking.destroy_all

# Seed data for bookings
Booking.create!([
  { user_id: 1, service_id: 1, status: "pending" },
  { user_id: 1, service_id: 2, status: "pending" },
  { user_id: 1, service_id: 3, status: "pending" },
  { user_id: 2, service_id: 4, status: "pending" },
  { user_id: 2, service_id: 5, status: "pending" },
  { user_id: 2, service_id: 6, status: "pending" },
  { user_id: 3, service_id: 1, status: "pending" },
  { user_id: 3, service_id: 2, status: "pending" },
  { user_id: 3, service_id: 3, status: "pending" },
  { user_id: 4, service_id: 4, status: "pending" },
  { user_id: 4, service_id: 5, status: "pending" },
  { user_id: 4, service_id: 6, status: "pending" },
  { user_id: 7, service_id: 1, status: "pending" },
  { user_id: 5, service_id: 2, status: "pending" },
  { user_id: 5, service_id: 3, status: "pending" },
  { user_id: 6, service_id: 4, status: "pending" },
  { user_id: 6, service_id: 5, status: "pending" },
  { user_id: 7, service_id: 6, status: "pending" }
])



puts "Seed data created: #{Booking.count} bookings."
