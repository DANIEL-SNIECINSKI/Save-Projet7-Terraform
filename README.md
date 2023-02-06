# Save-Projet7-Terraform
PROJET VALIDÉ
Migrez une infrastructure physique vers le Cloud
70 heures
Mis à jour le mardi 7 juillet 2020
Scénario
Mademoiselle C., blogueuse mode, a du succès dans les affaires. Grâce à son blog et à ses vidéos, elle arrive à vivre de sa passion : essayer des crèmes de beauté. Elle a même tellement de succès que son site en devient difficile à maintenir. La navigation est lente et les usagers ont du mal à poster de nouveaux messages. Son blog est un système WordPress, donc composé d’une partie PHP et d’une partie MySQL.

Mademoiselle C. n’y comprend rien en informatique, mais en revanche, elle est très bien conseillée. Kévin, son meilleur ami, est CTO de RisingStar, l’agence Web où vous travaillez. Du coup, c’est un peu votre patron, en fait… Bon, reprenons. Hier soir, Mademoiselle C. a décrit à Kevin ses problèmes de web. Ecoutons plutôt leurs brillants échanges :

Mademoiselle C. : Je suis trop dégoutée de mon site, il est graaave lent. Je sais pas trop quoi faire.

Kévin : Ton site ? C’est quoi ton site en fait ?

Mademoiselle C. : C’est un site où j’essaie des crèmes de beauté !

Kévin : Oui ça je sais, mais c’est quoi le système derrière ? C’est un Wordpress ? Tu es dans le Cloud ?

Mademoiselle C. : Euuuuh. Oui je crois que c’est un Wordpress. Mais je suis pas dans un Cloud, je crois que je suis chez … euuuuh .. OVH, ça existe ? Rholala c’est compliqué !

Kévin : Bon pas de panique. Tes problèmes sont sûrement liés à la manière dont ton site est installé. En plus, tu gagnerais en flexibilité si tu passais dans le Cloud. Tu sais que ma startup bosse beaucoup avec Amazon ?! C’est le genre de prestation qu’on fait souvent. Je vais te faire un plan d’architecture, je le transmets à mon expert DevOps, il comprendra ce qu’il faut faire.

Mademoiselle C. : Merci ! T’es un vrai pote ! C’est génial !

 Voilà pourquoi, ce lundi matin vous trouvez dans votre boîte mail une demande du patron à faire en extrême urgence :

“ Hello ! Je sais que tu es pas mal pris ces temps-ci, mais j’aimerais que tu jettes un oeil à une archi qu’on va mettre en place au plus vite. J’ai fait un schéma d’archi, tu penses pouvoir me Terraformer tout ça ? J’ai vu avec le chef de projet il est prévenu que tu bosseras plutôt là-dessus cette semaine. Merci ! Kévin “

Suivi, bien sur, du schéma :

Schéma proposé par le CTO pour Mademoiselle C.
Schéma d'architecture 
Instructions
Vous allez devoir procéder en plusieurs étapes

D'abord, il va vous falloir prendre connaissance des différents outils, et de leur mode de fonctionnement.

Pour notre exemple, nous allons choisir Ansible pour installer Wordpress. Vous avez à disposition votre propre environnement que vous avez mis en place au début de ce parcours.
Nous allons également utiliser Terraform pour mettre en place l’infrastructure. Installez le dans votre environnement de travail.
Dans un deuxième temps, vous allez prendre connaissance de l’infrastructure à mettre en place.

Recensez les éléments à mettre en place et détaillez-les.
Dans un troisième temps, vous allez mettre en place cette infrastructure à l’aide de Terraform

Vous décrirez l'architecture à mettre en place dans des fichiers Terraform, séparés en fonction de leur rôle. Par exemple, mettez vos identifiants dans “provider.tf”, vos instances dans “instances.tf”, et ainsi de suite.
Enfin, dans un quatrième temps, vous allez installer WordPress avec Ansible

Configurez votre installation dans un playbook Ansible. Séparez les rôles pour qu’il soit aussi réutilisables que possible.
À vous de jouer !

Livrables
Dans un dossier nommé “Projet_07_Nom_Prenom”, vous mettrez à disposition du mentor :

Un répertoire avec vos fichiers Terraform, nommé “terraform”
Un répertoire avec vos playbooks Ansible, nommé “ansible”
Soutenance (30 min)
En partageant votre écran :

Vous lancerez vos scripts Terraform. Durant le temps de chargement, vous expliquerez les différentes parties de vos scripts au mentor validateur (10 minutes).
Vous lancerez vos script Ansible. Durant le temps de chargement, vous expliquerez les différentes parties de vos scripts au mentor (10 minutes).
Le mentor vous posera diverses questions autour de Terraform et d’Ansible afin de vérifier votre compréhension du fonctionnement, des avantages et des inconvénients de ces outils (10 minutes).
 

Compétences évaluées
Recueillir les besoins et évaluer les procédures d’installations
Définir et installer les différents outils nécessaires à l’automatisation
Mettre en place un outil de gestion des configurations d'infrastructure
Utiliser un outil de gestion et de configuration de serveur
