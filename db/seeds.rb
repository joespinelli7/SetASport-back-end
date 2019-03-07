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

kennedy = Court.create(address: "1401 7th St NW, Washington DC 20001", name: "Kennedy Rec. Center", latitude: 38.909034, longitude: -77.0215468)
kelly = Court.create(address: "310 21st St NW, Washington DC 20418", name: "Edward J Kelly Park", latitude: 38.8949789, longitude: -77.0465759)
dupont = Court.create(address: "O St NW and 23rd St NW, Washington DC 20037", name: "Dupont Circle", latitude: 38.90871411042812, longitude: -77.04935073852539)
mckinley = Court.create(address: "100 T St NE, Washington DC 20002", name: "McKinley High School", latitude: 38.915646, longitude: -77.005312)
volta = Court.create(address: "3350 Q St NW, Washington DC 20007", name: "Volta Park", latitude: 38.9106589, longitude: -77.0670052)
california = Court.create(address: "California St NW, Washington DC 20009", name: "Reed Park", latitude: 38.916845, longitude: -77.046485)
rose = Court.create(address: "2650 O St NW, Washington DC 20007", name: "Rose Park", latitude: 38.908461, longitude: -77.0552923)
montrose = Court.create(address: "3050 R St NW, Washington DC 20007", name: "Montrose Park", latitude: 38.912739, longitude: -77.0618344)
georgetown = Court.create(address: "3831 Canal Rd NW, Washington DC 20007", name: "Georgetown University", latitude: 38.90614264839924, longitude: -77.07856229580261)
powell = Court.create(address: "3149 16th St NW, Washington DC 20010", name: "Powell Recreation", latitude: 38.9301325, longitude: -77.0360575)
jefferson = Court.create(address: "820 G St. SW., Washington DC 20024", name: "Jefferson Rec Center", latitude: 38.8813587, longitude: -77.0231425)
randall = Court.create(address: "2 H St SW, Washington DC 20024", name: "Randall Courts", latitude: 38.88021181557513, longitude: -77.01078387251994)
lansburgh = Court.create(address: "1100 Delaware Ave SW, Washington DC 20024", name: "Lansburgh Park", latitude: 38.877355, longitude: -77.013534)
greenleaf = Court.create(address: "201 N St SW, Washington DC 20024", name: "King Greenleaf Rec Center", latitude: 38.8750785, longitude: -77.0127208)
garfield = Court.create(address: "700 3rd St SE, Washington DC 20003", name: "Garfield Park", latitude: 38.88144779003688, longitude: -77.00296625599816)
sherwood = Court.create(address: "640 10th St., NE, Washington DC 20002", name: "Sherwood Rec Center", latitude: 38.8986013, longitude: -76.9931682)

# UserCourt.create(user_id: joe.id, court_id: kennedy.id)
# UserCourt.create(user_id: joe.id, court_id: kelly.id)
# UserCourt.create(user_id: joe.id, court_id: rose.id)
UserCourt.create(user_id: joe.id, court_id: georgetown.id)
# UserCourt.create(user_id: robin.id, court_id: dupont.id)
# UserCourt.create(user_id: robin.id, court_id: mckinley.id)
UserCourt.create(user_id: robin.id, court_id: georgetown.id)
# UserCourt.create(user_id: robin.id, court_id: kelly.id)
UserCourt.create(user_id: anuj.id, court_id: georgetown.id)
# UserCourt.create(user_id: anuj.id, court_id: california.id)
# UserCourt.create(user_id: anuj.id, court_id: volta.id)
# UserCourt.create(user_id: anuj.id, court_id: dupont.id)
# UserCourt.create(user_id: ash.id, court_id: rose.id)
UserCourt.create(user_id: ash.id, court_id: montrose.id)
# UserCourt.create(user_id: ash.id, court_id: powell.id)
# UserCourt.create(user_id: ash.id, court_id: kennedy.id)
UserCourt.create(user_id: vlad.id, court_id: montrose.id)
