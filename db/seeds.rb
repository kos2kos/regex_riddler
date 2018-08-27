#======================================================================================================
#===============> Images <=============================================================================
#======================================================================================================
Image.destroy_all
bear = Image.create(name: "bear.svg")
bear = Image.create(name: "bee.svg")
bear = Image.create(name: "frog.svg")
bear = Image.create(name: "giraffe.svg")
bear = Image.create(name: "hedgehog.svg")
bear = Image.create(name: "hen.svg")
bear = Image.create(name: "ladybug.svg")
bear = Image.create(name: "monkey.svg")
bear = Image.create(name: "octopus.svg")
bear = Image.create(name: "snake.svg")

bear = Image.create(name: "antelope.svg")
bear = Image.create(name: "buffalo.svg")
bear = Image.create(name: "camel.svg")
bear = Image.create(name: "cat.svg")
bear = Image.create(name: "dog_1.svg")
bear = Image.create(name: "dog.svg")
bear = Image.create(name: "donkey.svg")
bear = Image.create(name: "elephant.svg")
bear = Image.create(name: "fox.svg")
bear = Image.create(name: "hippopotamus.svg")

bear = Image.create(name: "horse.svg")
bear = Image.create(name: "kangaroo.svg")
bear = Image.create(name: "lion.svg")
bear = Image.create(name: "panda.svg")
bear = Image.create(name: "rhinoceros.svg")

bear = Image.create(name: "snail.svg")
bear = Image.create(name: "tiger.svg")
bear = Image.create(name: "wolf.svg")
bear = Image.create(name: "zebra.svg")

#======================================================================================================
#===============> Users <==============================================================================
#======================================================================================================
User.destroy_all
user1 = User.create(name: "Nkosi", username: "kos2kos", email: "Nkosi@example.com", password_digest: User.digest("Nkosi"), image: "hedgehog.svg")

user2 = User.create(name: "Gabe", username: "NamelessHero", email: "gabedbatista@example.com", password_digest: User.digest("Gabe"),image: "bear.svg" )
user3 = User.create(name: "Prince", username: "PrinceNeverLies", email: "ThePrince@example.com", password_digest: User.digest("Prince"),image: "monkey.svg" )
user4 = User.create(name: "Eric", username: "YourBreaksAreTooLong!", email: "eric@example.com", password_digest: User.digest("Eric"),image: "octopus.svg")
user5 = User.create(name: "Tony", username: "IdkButIllTry", email: "tony@example.com", password_digest: User.digest("Tony"),image: "snake.svg")

#======================================================================================================
#===============> Challenges <=========================================================================
#======================================================================================================

challenge1 = Challenge.create(name: "First Letter", trial: "Beef, Bongos, Ball", solution: "ee, on, al", regex: %r{B[(ee)|(on)|(al)]}.to_s, user_id: 1, description: "Capture the second and third letter from each word")
challenge2 = Challenge.create(name: "Decypher", trial: "c1o2d3e", solution: "c, o, d, e", regex: %r{\w}, user_id: 2, description: "capture only the letters")
challenge3 = Challenge.create(name: "Look Ahead", trial: "gabriel dev bryan janitor nkosi dev", solution: "gabriel, nkosi", regex: %r{ \w+ (?=dev)}, user_id: 3, description: "grab all the names which are followed by the word 'dev'.")
challenge4 = Challenge.create(name: "Get the cost", trial: "The apple is $1.09", solution: "1.09", regex: %r{\$(\d.\d+)}, user_id: 4, description: "Get the cost of the apple.")
challenge5 = Challenge.create(name: "In Half", trial: "catdog", solution: "cat, dog", regex: %r{(cat)(dog)}, user_id: 4, description: "Split the word in half so that you capture each animals name separately.")
