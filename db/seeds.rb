#Populating the users table

andres = User.create( email: 'andres@me.com', username: 'ormaechea', password_hash: '1234' )
derek = User.create( email: 'derek@me.com', username: 'dreeve', password_hash: '1234' )
brock = User.create( email: 'brock@me.com', username: 'thebrock', password_hash: '1234' )


andres.accounts << Account.create(social_network: "snapchat", username: "ormaechea")
derek.accounts << Account.create(social_network: "snapchat", username: "itsderek")
brock.accounts << Account.create(social_network: "snapchat", username: "partialsw/brick")

andres.accounts << Account.create(social_network: "instagram", username: "andresthedude")
derek.accounts << Account.create(social_network: "instagram", username: "dereklovescats")
brock.accounts << Account.create(social_network: "instagram", username: "brickssessions")

andres.accounts << Account.create(social_network: "google+", username: "thedude")
derek.accounts << Account.create(social_network: "google+", username: "eatshit")
brock.accounts << Account.create(social_network: "google+", username: "brick")

andres.accounts << Account.create(social_network: "LinkedIn", username: "andrius")
derek.accounts << Account.create(social_network: "LinkedIn", username: "eatshitagain")
brock.accounts << Account.create(social_network: "LinkedIn", username: "sessionswithbrick")

andres.accounts << Account.create(social_network: "facebook", username: "ormaechea")
andres.accounts << Account.create(social_network: "instagram", username: "ormaechea")
