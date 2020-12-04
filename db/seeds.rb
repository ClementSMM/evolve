# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UsersProgram.destroy_all
User.destroy_all
Program.destroy_all

User.create!(email: "marg@email.com", password: "azerty", level: 1, xp: 10, username: "Marg")
User.create!(email: "momo@email.com", password: "azerty", level: 3, xp: 50, username: "Momo")
User.create!(email: "clem@email.com", password: "azerty", level: 5, xp: 20, username: "Clem")

marg = User.find_by_email("marg@email.com")
momo = User.find_by_email("momo@email.com")
clem = User.find_by_email("clem@email.com")
users = [marg, momo, clem]

prog1 = Program.create!(title: "Design Thinking", description: "Penser oui mais autrement.", unlock_program: 1)
prog2 = Program.create!(title: "Protection de l'innovation" , description: "Vous avez peur que vos idées soient reprises par d'autre? Apprenez ici comment les protéger.", unlock_program: 1)
prog3 = Program.create!(title: "Réaliser un Business Plan", description: "Le Business Plan est une étape importante de la construction d'un projet d'entreprise. Construisez le pas à pas grace à ce programme.", unlock_program: 1)
prog4 = Program.create!(title: "Analyse des coûts", description: "Votre projet est-il viable financièrement? Analysez vos coûts et vos gains potentiels et adaptez votre projet à vos containtes budgétaires", unlock_program: 2)
prog5 = Program.create!(title: "Marketing Digital", description: "Aujourd'hui il est important de faire connaître votre projet grace au Marketing Digital. Ce porgramme va vous permettre d'apprendre à utiliser ces outils au service de votre communication", unlock_program: 3)
prog6 = Program.create!(title: "Faire son site avec WordPress", description: "Vous pouvez réaliser vous même un site web de manière assez simple grace à Wordpress", unlock_program: 3)
prog7 = Program.create!(title: "Gérer son temps", description: "Vous ne savez pas par où commencer, vous vous perdez souvent dans des détails et y consacrez trop de temps. Apprenez à gérer au mieux votre temps pour optimiser votre projet.", unlock_program: 3)
prog8 = Program.create!(title: "Comptabilité", description: "Il est important d'avoir quelques connaissances sur la comptabilité des entreprises afin d'apprendre à bien utiliser vos moyens financiers", unlock_program: 4)
prog9 = Program.create!(title: "Pitch - communication orale", description: "Il est important d'être capable de présenter votre projet. Apprenez les tecniques de pitch et entrainez vous à développer vos idées.", unlock_program: 5)
prog10 = Program.create!(title: "Maitriser Instagram", description: "Devenez un expert de l'utilisation d'instagram à des fins professionnels et boostez votre campagne Marketing.", unlock_program: 5)
prog11 = Program.create!(title: "Prévenir le burnout", description: "Il vaut mieux prévenir que guérir ! Cette formation vous donne toutes les clés pour identifier, gérer et / ou éviter le burnout.", unlock_program: 3)

users.each do |user|
  up = UsersProgram.new(status: 'done')
  up.user = user
  up.program = prog1
  up.save
end


users.each do |user|
  up = UsersProgram.new(status: 'done')
  up.user = user
  up.program = prog2
  up.save
end

up = UsersProgram.new(status: "in progress")
up.user = momo
up.program = prog3
up.save


up = UsersProgram.new(status: "in progress")
up.user = momo
up.program = prog4
up.save

up = UsersProgram.new(status: "done")
up.user = clem
up.program = prog4
up.save

up = UsersProgram.new(status: "done")
up.user = clem
up.program = prog5
up.save

up = UsersProgram.new(status: "done")
up.user = clem
up.program = prog6
up.save

up = UsersProgram.new(status: "in progress")
up.user = clem
up.program = prog7
up.save

up = UsersProgram.new(status: "done")
up.user = clem
up.program = prog8
up.save

lesson1 = Lesson.new(title: "À bout de forces", description: "Savoir faire la différence entre le stress ou le surmenage et le burnout.", number: 1)
lesson1.program = prog5
lesson1.save

lesson2 = Lesson.new(title: "Les facteurs de risque", description: "Reconnaître les facteurs de risque de burnout" , number: 2)
lesson2.program = prog5
lesson2.save

lesson3 = Lesson.new(title: "Lutter contre le stress", description: "Définir ses priorités. Apprendre les méthodes de relaxation adaptées", number: 3)
lesson3.program = prog5
lesson3.save

lesson4 = Lesson.new(title: "Le burnout ne passera pas", description: "Découvrir quels facteurs liés au travail favorisent le burnout", number: 4)
lesson4.program = prog5
lesson4.save

lesson5 = Lesson.new(title: "La vie après le burnout", description: "Apprendre à faire désormais les choses différemment", number: 5)
lesson5.program = prog5
lesson5.save


step1 = Step.new(title: "Définir le stress", number: 1, text_content: " Le stress est connu depuis longtemps et a une longue histoire.

Le stress a été découvert par un physiologiste anglosaxon, Henry Seyle.

Il a décrit les réponses de l’organisme produites par des agressions physiques ou chimiques. Il a d’abord donné le nom de « syndrome général d’adaptation » à ces réactions. C’est ainsi qu’est né le stress.

Le stress a été décrit comme une réponse normale d’adaptation de votre organisme aux contraintes et agressions que vous subissez chaque jour dans le cadre de votre vie quotidienne. Cette adaptation concerne vos systèmes physiologiques de régulation et de défense, mais aussi des réactions psychologiques et comportementales.

C'est un phénomène essentiel à notre survie, très complexe, nécessitant la mis en oeuvre de nombreux systèmes physiologiques de l'organisme qu'ils soint physiques ou psuchologiques, cariaques ou endocriniens, neurologiques ou psychologiques. Cette compléxité du stress est probablement à l'origne de sa mauvaise compréhension, elle-même source de beaucoup d'erreurs dans la signification même de ce mot.

Le stress a été décrit comme une réponse normale d’adaptation de votre organisme aux contraintes et agressions que vous subissez chaque jour dans le cadre de votre vie quotidienne. Cette adaptation concerne vos systèmes physiologiques de régulation et de défense, mais aussi des réactions psychologiques et comportementales.

Le stress correspond aussi aux composantes de l’agression qui va enclencher cette réaction d’adaptation. Le stress est alors un agent stresseur qui peut survenir de manière aigue ou chronique, évènementielle, conjoncturelle ou structurelle, et qui peut selon les cas concerner votre vie personnelle ou votre vie professionnelle. On dit alors : 'je suis stressé'.

Le mot stress est une manière de décrire toute situation que nous considérons comme dangereuse pour notre équilibre personnel, difficile à éviter voire insupportable. \n\n -Le Figaro")

step1.lesson = lesson1
step1.save

up2 = UsersProgram.new(status: "in progress")
up2.user = momo
up2.program = prog11
up2.save

up2.last_lesson_id = lesson3.id
up2.last_step_id = step1.id
up2.save
