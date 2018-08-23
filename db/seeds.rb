#======================================================================================================
#===============> Users <==============================================================================
#======================================================================================================
user1 = User.create(name: "Nkosi", username: "kos2kos", email: "Nkosi@example.com", password_digest: User.digest("Nkosi"))
user2 = User.create(name: "Gabe", username: "NamelessHero", email: "gabedbatista@example.com", password_digest: User.digest("Gabe"))
user3 = User.create(name: "Prince", username: "PrinceNeverLies", email: "ThePrince@example.com", password_digest: User.digest("Prince"))
user4 = User.create(name: "Eric", username: "YourBreaksAreTooLong!", email: "eric@example.com", password_digest: User.digest("Eric"))
user5 = User.create(name: "Tony", username: "IdkButIllTry", email: "tony@example.com", password_digest: User.digest("Tony"))

#======================================================================================================
#==> Challenges <======================================================================================
#======================================================================================================

challenge1 = Challenge.create(name: "First Letter", trial: "Beef, Bongos, Ball", solution: "ee, on, al", regex: %r{B[(ee)|(on)|(al)]}.to_s, user_id: 1, description: "Capture the second and third letter from each word")
challenge2 = Challenge.create(name: "Decypher", trial: "i1l2o3v4e5r6e7g8e9x0", solution: "i, l, o, v, e, r, e, g, e, x", regex: %r{\w}, user_id: 2, description: "capture only the letters")
challenge3 = Challenge.create(name: "Look Ahead", trial: "gabriel dev bryan janitor nkosi dev", solution: "gabriel, nkosi", regex: %r{ \w+ (?=dev)}, user_id: 3, description: "grab all the names which are followed by the word 'dev'.")
challenge4 = Challenge.create(name: "Get the cost", trial: "The apple is $1.09", solution: "1.09", regex: %r{\$(\d.\d+)}, user_id: 4, description: "Get the cost of the apple.")
challenge5 = Challenge.create(name: "In Half", trial: "catdog", solution: "cat, dog", regex: %r{(cat)(dog)}, user_id: 4, description: "Split the word in half so that you capture each animals name separately.")