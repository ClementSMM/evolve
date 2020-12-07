# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UsersProgram.destroy_all
Program.destroy_all

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
lesson1.program = prog11
lesson1.save

lesson2 = Lesson.new(title: "Les facteurs de risque", description: "Reconnaître les facteurs de risque de burnout" , number: 2)
lesson2.program = prog11
lesson2.save

lesson3 = Lesson.new(title: "Lutter contre le stress", description: "Définir ses priorités. Apprendre les méthodes de relaxation adaptées", number: 3)
lesson3.program = prog11
lesson3.save

lesson4 = Lesson.new(title: "Le burnout ne passera pas", description: "Découvrir quels facteurs liés au travail favorisent le burnout", number: 4)
lesson4.program = prog11
lesson4.save

lesson5 = Lesson.new(title: "La vie après le burnout", description: "Apprendre à faire désormais les choses différemment", number: 5)
lesson5.program = prog11
lesson5.save

step1 = Step.new(number:1, title: "Qu'est-ce que le burnout", text_content: "

Le burn out est un état d'épuisement physique, émotionnel et mental lié à une dégradation du rapport d'une personne à son travail.

Le burn out ou épuisement professionnel a été initialement observé chez les soignants.

Si ce groupe professionnel reste particulièrement exposé, on sait désormais que le burn out peut concerner tous les métiers qui demandent un engagement professionnel intense.
Il frappe autant les femmes que les hommes et se situe en 2e position dans les affections d’origine professionnelle.

Le burn out apparaît quand le travailleur ressent un écart trop important entre ses attentes, la représentation qu'il se fait de son métier et la réalité de son travail.
Concrètement, face à des situations de stress professionnel chronique, la personne en burn out ne parvient plus à faire face.

Le burn out n'est pas une maladie mentale. C'est un ensemble de symptômes (syndrome) résultant de la dégradation du rapport subjectif au travail.

Cela se traduit par :

    Un épuisement émotionnel, physique et psychique. La personne a la sensation d'être 'vidée de ses ressources'.
    Les temps de repos habituels (sommeil, week-end, congés, etc.) ne suffisent plus à soulager cette fatigue.

    Le développement d'une attitude cynique dans le cadre du travail.
    Pour se protéger de la déception émotionnelle (il n'arrive plus à 'bien' faire son travail), le professionnel se désengage de son travail et 'déshumanise' les gens qu'il est amené à côtoyer (clients, patients, collègues).
    Il en résulte un comportement dur, négatif.

    Une dévalorisation de soi, la perte de la sensation d'accomplissement au travail, l'impression de ne plus être à la hauteur.")
step1.lesson = lesson1
step1.save

step2 = Step.new(title: "Définir le stress", number: 2, text_content: " Le stress est connu depuis longtemps et a une longue histoire.

Le stress a été découvert par un physiologiste anglosaxon, Henry Seyle.

Il a décrit les réponses de l’organisme produites par des agressions physiques ou chimiques. Il a d’abord donné le nom de « syndrome général d’adaptation » à ces réactions. C’est ainsi qu’est né le stress.

Le stress a été décrit comme une réponse normale d’adaptation de votre organisme aux contraintes et agressions que vous subissez chaque jour dans le cadre de votre vie quotidienne. Cette adaptation concerne vos systèmes physiologiques de régulation et de défense, mais aussi des réactions psychologiques et comportementales.

C'est un phénomène essentiel à notre survie, très complexe, nécessitant la mis en oeuvre de nombreux systèmes physiologiques de l'organisme qu'ils soint physiques ou psuchologiques, cariaques ou endocriniens, neurologiques ou psychologiques. Cette compléxité du stress est probablement à l'origne de sa mauvaise compréhension, elle-même source de beaucoup d'erreurs dans la signification même de ce mot.

Le stress a été décrit comme une réponse normale d’adaptation de votre organisme aux contraintes et agressions que vous subissez chaque jour dans le cadre de votre vie quotidienne. Cette adaptation concerne vos systèmes physiologiques de régulation et de défense, mais aussi des réactions psychologiques et comportementales.

Le stress correspond aussi aux composantes de l’agression qui va enclencher cette réaction d’adaptation. Le stress est alors un agent stresseur qui peut survenir de manière aigue ou chronique, évènementielle, conjoncturelle ou structurelle, et qui peut selon les cas concerner votre vie personnelle ou votre vie professionnelle. On dit alors : 'je suis stressé'.

Le mot stress est une manière de décrire toute situation que nous considérons comme dangereuse pour notre équilibre personnel, difficile à éviter voire insupportable. \n\n -Le Figaro")

step2.lesson = lesson1
step2.save


step3 = Step.new(number: 3, title: "Bien repérer les signes", url: "https://www.youtube.com/embed/gJwvaCBrpFc", media_type: "video")

step3.lesson = lesson1
step3.save

step4 = Step.new(number: 4, title:"Exemple", url:"https://www.franceculture.fr/player/export-reecouter?content=59e36844-5d4a-11e5-a571-005056a87c89", media_type:"podcast")
step4.lesson = lesson1
step4.save

step1 = Step.new(title:"lesson2 step 1", number: 1)
step1.lesson = lesson2
step1.save

step1 = Step.new(title: "Définir le stress", number: 1, text_content: " Le stress est connu depuis longtemps et a une longue histoire.

Le stress a été découvert par un physiologiste anglosaxon, Henry Seyle.

Il a décrit les réponses de l’organisme produites par des agressions physiques ou chimiques. Il a d’abord donné le nom de « syndrome général d’adaptation » à ces réactions. C’est ainsi qu’est né le stress.

Le stress a été décrit comme une réponse normale d’adaptation de votre organisme aux contraintes et agressions que vous subissez chaque jour dans le cadre de votre vie quotidienne. Cette adaptation concerne vos systèmes physiologiques de régulation et de défense, mais aussi des réactions psychologiques et comportementales.

C'est un phénomène essentiel à notre survie, très complexe, nécessitant la mis en oeuvre de nombreux systèmes physiologiques de l'organisme qu'ils soint physiques ou psuchologiques, cariaques ou endocriniens, neurologiques ou psychologiques. Cette compléxité du stress est probablement à l'origne de sa mauvaise compréhension, elle-même source de beaucoup d'erreurs dans la signification même de ce mot.

Le stress a été décrit comme une réponse normale d’adaptation de votre organisme aux contraintes et agressions que vous subissez chaque jour dans le cadre de votre vie quotidienne. Cette adaptation concerne vos systèmes physiologiques de régulation et de défense, mais aussi des réactions psychologiques et comportementales.

Le stress correspond aussi aux composantes de l’agression qui va enclencher cette réaction d’adaptation. Le stress est alors un agent stresseur qui peut survenir de manière aigue ou chronique, évènementielle, conjoncturelle ou structurelle, et qui peut selon les cas concerner votre vie personnelle ou votre vie professionnelle. On dit alors : 'je suis stressé'.

Le mot stress est une manière de décrire toute situation que nous considérons comme dangereuse pour notre équilibre personnel, difficile à éviter voire insupportable. \n\n -Le Figaro")

step1.lesson = lesson3
step1.save

step2 = Step.new(number: 2, title: "Surmenage, stress et burnout", url: "https://www.franceculture.fr/player/export-reecouter?content=f218409a-49ec-4c27-8f95-a005a64bf3da", media_type: "podcast")
step2.lesson = lesson3
step2.save

step3 = Step.new(number: 3, title: "Sophrologie anti-stress", url: "https://www.youtube.com/embed/CK6OMG_5LMQ", media_type: "video" )
step3.lesson = lesson3
step3.save

step4 = Step.new(number:4, title: "Lutter contre le stress au travail", text_content: "Trucs pour mieux gérer son stress
En parler

Quand on constate qu’on est affecté par un niveau de stress anormalement élevé, il est important de ne pas garder ses préoccupations pour soi et de trouver quelqu’un à qui en parler. Que ce soit un ami ou un membre de la famille, le simple fait d’en parler à un proche et de “vider son sac” peut aider à relâcher la tension et voir les choses sous un autre angle.
Ne pas négliger son corps

Bien manger, faire de l’exercice et bien dormir; on sous-estime souvent le rôle de ces trois éléments pour notre bien-être, dont notre niveau de stress. Après tout, le stress est une réaction physique et hormonale, alors c’est tout à fait sensé de commencer par prendre soin de son corps pour en limiter les effets! Voilà quelques recommandations:

    S’alimenter le plus souvent possible d’aliments non transformés: de fruits, légumes, légumineuses, poissons, volailles et grains entiers ainsi que d’aliments contenant des acides gras oméga-3 (présents entre autres dans le saumon, les graines de chanvre, de chia et de lin).
    Être actif chaque jour, au moins 30 minutes. En plus de réduire significativement la haute pression et de nous rendre plus résistants au stress, l’activité physique stimule la dopamine, la sérotonine et les endorphines, neurotransmetteurs favorisant la sensation de bien-être et la bonne humeur. Des activités comme la course et le jogging peuvent être particulièrement bénéfiques contre le stress.
    S’assurer de dormir de 7 à 9 h par nuit et favoriser un sommeil de qualité. Négliger son sommeil rend plus vulnérable au stress, et puisque le stress peut mener à l’insomnie, le manque de sommeil peut facilement devenir un cercle vicieux. Le premier truc à appliquer pour aider à réguler le sommeil est d’établir une routine pour réduire notre exposition à la lumière bleue en soirée et se relaxer avant d’aller dormir, ainsi que se coucher et se lever à la même heure chaque jour. Pour plus de détails sur les façons de favoriser un sommeil de qualité, voir aussi cet article.

Planifier et s’organiser

Pour s’éviter du stress inutile, planifier son travail selon les priorités auxquelles on doit accorder notre temps est primordial. Chaque matin, ou un peu avant la fin de chaque journée de travail, prends un petit 15 minutes pour revoir le travail qui doit être fait et planifier la journée suivante. De cette façon, tu seras plus en contrôle et moins vulnérable au stress.


Toutefois, travailler 8 heures par jour sans arrêt pour essayer d’accomplir le plus de choses possible n’est pas recommandé. Les pauses sont primordiales pour recharger nos batteries, libérer le stress et travailler de façon optimale. Il serait donc sage de leur réserver du temps dans nos planifications quotidiennes et de profiter de ces moments pour prendre une petite marche si possible, s’étirer et faire quelques exercices de respiration.
Éliminer les habitudes qui te causent du stress inutilement

Il arrive qu’on soit notre propre source de stress. Par exemple, quand on accorde une trop grande importance à l’opinion d’autrui, on perd le contrôle sur la satisfaction qu’on éprouve envers notre propre travail. C’est une situation stressante qui peut mener à d’autres habitudes provoquant du stress inutile comme le perfectionnisme, la procrastination et le pessimisme.

 Voir aussi: Bienvenue aux perfectionnistes anonymes
Relaxer et respirer

L’une des meilleures façons pour relâcher le stress instantanément et le combattre à long terme est d’apprendre des techniques de relaxation et de respiration. Ça peut être aussi simple que de prendre de grandes respirations par le nez et les relâcher lentement par la bouche chaque fois qu’on se sent stressé pendant la journée. Voilà d’autres méthodes qui valent également la peine d’être essayées:
*Ces techniques peuvent être accompagnées d’aromathérapie ou de musique, peuvent se pratiquer pratiquement n’importe où et n’ont pas de durée déterminée.

    Respiration profonde: Il suffit de s’asseoir en gardant le dos bien droit, (ou de s’étendre sur le dos) de poser une main sur l’abdomen et l’autre sur la poitrine. Il faut ensuite prendre une grande inspiration par le nez en gonflant son abdomen autant que possible, et non sa cage thoracique. La main sur la poitrine ne devrait pratiquement pas bouger. Ensuite, il faut expirer lentement autant d’air que possible par la bouche en contractant les muscles abdominaux. Encore une fois, c’est la main sur l’abdomen qui devrait bouger et celle sur la poitrine devrait demeurer pratiquement immobile.
    Respiration fraîche: cette technique de respiration est particulièrement efficace dans les moments où on se sent frustré ou en colère. Il suffit de prendre une grande respiration par la bouche en réduisant l’entrée d’air, comme si on respirait à travers une paille, puis d’expirer normalement par le nez. Lorsque bien effectuée, cette respiration donne une sensation de fraîcheur sur le dessus de la langue.
    Respiration du dragon: cette technique de respiration est recommandée dans les moments de stress intense et d’anxiété. Elle consiste à prendre une grande respiration par les narines et à expulser l’air lentement par la bouche comme si on soufflait dans une paille. En expirant, on peut  imaginer que le souffle qu’on rejette est une épaisse fumée grise dans laquelle se trouvent nos craintes et énergies négatives.
    Méditation: Méditer régulièrement, même si ce n’est que pendant quelques minutes, permet d’exercer un meilleur contrôle sur nos pensées et limiter le stress qu’elles nous procurent.
    Activité relaxante: trouver une activité relaxante qu’on apprécie et qu’on peut pratiquer fréquemment permet d’évacuer le stress qui nous habite. Que ce soit la pratique du yoga, le jardinage, ou même prendre un bain chaud en écoutant de la musique, toutes les façons sont bonnes, tant qu’elles ont un effet relaxant et qu’elles conviennent à notre mode de vie.
")
step4.lesson = lesson3
step4.save

up2 = UsersProgram.new(status: "in progress")
up2.user = momo
up2.program = prog11
up2.save

up2.last_lesson_id = lesson3.id
up2.last_step_id = step2.id
up2.save

ft = FinalTest.new(description: "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    objectifs: "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
ft.program = prog11
ft.save
