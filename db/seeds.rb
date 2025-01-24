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
    title: "Vinyasa Flow Yoga",
    description: "A dynamic yoga class focused on connecting breath with movement.",
    category: "Yoga",
    duration: 60,
    price: 20.0,
    user_id: 1,
    address: "123 King’s Cross Rd, London",
    image: "https://images.pexels.com/photos/917732/pexels-photo-917732.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    date: "2024-07-15",
    time: "18:30",
    class_size: 20
  },
  {
    title: "Breathwork for Relaxation",
    description: "Learn techniques to reduce stress and improve mental clarity through breathwork.",
    category: "Breathwork",
    duration: 45,
    price: 25.0,
    user_id: 2,
    address: "45 Camden High St, London",
    image: "https://images.pexels.com/photos/8981392/pexels-photo-8981392.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    date: "2024-07-22",
    time: "19:00",
    class_size: 15
  },
  {
    title: "Reiki Healing Session",
    description: "A hands-on energy healing technique to promote overall well-being.",
    category: "Reiki",
    duration: 90,
    price: 50.0,
    user_id: 3,
    address: "1 Borough High St, London",
    image: "https://images.pexels.com/photos/6902375/pexels-photo-6902375.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    date: "2024-08-05",
    time: "17:45",
    class_size: 10
  },
  {
    title: "Guided Meditation",
    description: "A calming session to guide you into a state of deep relaxation.",
    category: "Meditation",
    duration: 30,
    price: 15.0,
    user_id: 4,
    address: "25 Baker St, London",
    image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.saybrook.edu%2Funbound%2Fguided-imagery-and-motivational-interviewing%2F&psig=AOvVaw0cgi2dJIx-ikwDrcEV1vUw&ust=1737823475436000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCNCU2InnjosDFQAAAAAdAAAAABAE",
    date: "2024-07-18",
    time: "20:00",
    class_size: 25
  },
  {
    title: "Hatha Yoga for Beginners",
    description: "A yoga class described as 'Hatha' will typically involve a set of physical postures (yoga poses) and breathing techniques",
    category: "Yoga",
    duration: 60,
    price: 10.0,
    user_id: 5,
    address: "10 Downing St, London",
    image: "https://media.self.com/photos/664b7c48361a924504d46e9e/4:3/w_2560%2Cc_limit/1022055750",
    date: "2024-07-30",
    time: "19:30",
    class_size: 18
  },
  {
    title: "Sound Bath Therapy",
    description: "Experience deep relaxation through the soothing sounds of crystal bowls.",
    category: "SoundHealing",
    duration: 60,
    price: 30.0,
    user_id: 3,
    address: "50 Oxford St, London",
    image: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.healthline.com%2Fhealth%2Fsound-bath&psig=AOvVaw2dZk7sptDSCYmHgjd-492q&ust=1737823419430000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCNCpou_mjosDFQAAAAAdAAAAABAE",
    date: "2024-08-12",
    time: "18:15",
    class_size: 12
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
