# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Program.destroy_all

User.create!(email: "marg@email.com", password: "azerty")
User.create!(email: "momo@email.com", password: "azerty")
User.create!(email: "clem@email.com", password: "azerty")


Program.create!(title: "Marketing Digital", description: "Aujourd'hui il est important de faire connaître votre projet grace au Marketing Digital. Ce porgramme va vous permettre d'apprendre à utiliser ces outils au service de votre communication", unlock_program: 3)
Program.create!(title: "Faire son site avec WordPress", description: "Vous pouvez réaliser vous même un site web de manière assez simple grace à Wordpress", unlock_program: 5)
Program.create!(title: "Maitriser Instagram", description: "Devenez un expert de l'utilisation d'instagram à des fins professionnels et boostez votre campagne Marketing.", unlock_program: 4)
Program.create!(title: "Pitch - entrainement à la communication orale", description: "Il est important d'être capable de présenter votre projet. Apprenez les tecniques de pitch et entrainez vous à développer vos idées.", unlock_program: 5)
Program.create!(title: "Design Thinking", description: "Penser oui mais autrement.", unlock_program: 1)
Program.create!(title: "Protection de l'innovation" , description: "Vous avez peur que vos idées soient reprises par d'autre? Apprenez ici comment les protéger.", unlock_program: 2)
Program.create!(title: "Comptabilité", description: "Il est important d'avoir quelques connaissances sur la comptabilité des entreprises afin d'apprendre à bien utiliser vos moyens financiers", unlock_program: 7)
Program.create!(title: "Analyse des coûts", description: "Votre projet est-il viable financièrement? Analysez vos coûts et vos gains potentiels et adaptez votre projet à vos containtes budgétaires", unlock_program: 3)
Program.create!(title: "Réaliser un Business Plan", description: "Le Business Plan est une étape importante de la construction d'un projet d'entreprise. Construisez le pas à pas grace à ce programme.", unlock_program: 2)
Program.create!(title: "Gérer son temps", description: "Vous ne savez pas par où commencer, vous vous perdez souvent dans des détails et y consacrez trop de temps. Apprenez à gérer au mieux votre temps pour optimiser votre projet.", unlock_program: 4)
