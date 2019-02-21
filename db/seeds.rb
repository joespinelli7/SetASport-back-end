# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Court.destroy_all
UserCourt.destroy_all

joe = User.create(user_name: "joes", full_name: "Joe Spinelli", password: "12345", active: false)
anuj = User.create(user_name: "anujs", full_name: "Anuj Sharma", password: "12345", active: false)
ash = User.create(user_name: "ashz", full_name: "Ash Zaki", password: "12345", active: false)
vlad = User.create(user_name: "vladd", full_name: "Vlad D", password: "12345", active: false)
robin = User.create(user_name: "robink", full_name: "Robin Kim", password: "12345", active: false)

kennedy = Court.create(address: "1401 7th St NW, Washington DC 20001", name: "Kennedy Rec. Center", latitude: 38.728446399999996, longitude: -77.211496)
kelly = Court.create(address: "310 21st St NW, Washington DC 20418", name: "Edward J Kelly Park", latitude: 38.8949789, longitude: -77.0465759)
dupont = Court.create(address: "O St NW and 23rd St NW, Washington DC 20037", name: "Dupont Circle", latitude: 38.8917227, longitude: -77.0500901)
mckinley = Court.create(address: "100 T St NE, Washington DC 20002", name: "McKinley High School", latitude: 38.915646, longitude: -77.005312)
georgetown = Court.create(address: "3350 Q St NW, Washington DC 20007", name: "Georgetown Rec. Center", latitude: 38.9106589, longitude: -77.0670052)
california = Court.create(address: "California St NW, Washington DC 20009", name: "Reed Park", latitude: 38.916845, longitude: -77.046485)
rose = Court.create(address: "2650 O St NW, Washington DC 20007", name: "Rose Park", latitude: 38.908461, longitude: -77.0552923)
montrose = Court.create(address: "3050 R St NW, Washington DC 20007", name: "Montrose Park", latitude: 38.912739, longitude: -77.0618344)
jefferson = Court.create(address: "9th St NW, Washington, DC 20012, United States of America", name: "Banneker/Howard University", latitude: 38.9732143, longitude: -77.0256147)
powell = Court.create(address: "3149 16th St NW, Washington DC 20010", name: "Powell Recreation", latitude: 38.9301325, longitude: -77.0360575)

UserCourt.create(user_id: joe.id, court_id: kennedy.id)
UserCourt.create(user_id: joe.id, court_id: kelly.id)
UserCourt.create(user_id: joe.id, court_id: rose.id)
UserCourt.create(user_id: joe.id, court_id: georgetown.id)
UserCourt.create(user_id: robin.id, court_id: dupont.id)
UserCourt.create(user_id: robin.id, court_id: mckinley.id)
UserCourt.create(user_id: robin.id, court_id: georgetown.id)
UserCourt.create(user_id: robin.id, court_id: kelly.id)
UserCourt.create(user_id: anuj.id, court_id: georgetown.id)
UserCourt.create(user_id: anuj.id, court_id: california.id)
UserCourt.create(user_id: anuj.id, court_id: jefferson.id)
UserCourt.create(user_id: anuj.id, court_id: dupont.id)
UserCourt.create(user_id: ash.id, court_id: rose.id)
UserCourt.create(user_id: ash.id, court_id: montrose.id)
UserCourt.create(user_id: ash.id, court_id: powell.id)
UserCourt.create(user_id: ash.id, court_id: kennedy.id)