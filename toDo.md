#Liste des trucs à faire

1). inscription, droits, backoffice
- le staff doit pouvoir créer des utilisateurs comme auteurs (fait)
- le staff peut modifier l'ensemble du contenu du site à sa guise
- les auteurs peuvent modifier le contenu des chapitres des différents mangas et leur présentation seulement
- les auteurs peuvent créer des articles et personnaliser le contenu, modifiable
- le backoffice contient plusieurs pages sur chaque zone personnalisable (type wordpress) :
   - le header: upload d'images en fond d'écran dans le carousel (fait)
   - le footer: à déterminer
   - la page d'accueil : la présentation du projet
   - la page mags : upload des magazines, créer un titre, une description, la couverture, et les pages
   - la page auteurs : présentation de chaque auteur personnalisable, récupérer les mangas liés aux auteurs pour
                      afficher en présentation brève
   - la page manga : upload des chapitres, couverture, description, pouvoir relier les mangas à un auteur,
                    il sera envoyé dans sa présentation en page auteurs
   - la page blog : créer un article, y associer du texte, une image, vidéo.. Galerie d'images possible ?
                   liste des articles, possibilité de les modifier, supprimer..
   - la page boutique : ajouter un produit, le décrire, mettre une image de présentation, fixer prix, liste des produits modifiable


- en cliquant sur le bouton se connecter, un pop up pour se logger apparaît


#HEADER

- créer le menu
- générer un background carousel en fade in/out, les images sont uploadées depuis la zone dédiée dans le backoffice
- un bouton centré qui amène sur la lecture en ligne

#PAGE D'ACCUEIL

- une div qui affiche les derniers articles.
    Les articles sont en aperçu, un bouton lire la suite amène sur ceux-ci.
    A droite un bouton pour accéder à l'ensemble des articles publiés (la page blog)

- une div qui affiche le dernier magazine sorti, ça doit afficher le contenu qui aura été créé dans le backoffice (couv, titre, description)

- une div qui affiche les derniers chapitres publiés
    même topo que le dernier mag

- une div pour la présentation du projet
    contenu personnalisable par le staff seulement

- un petit panneau qui incite à la donation pour l'asso, un lien qui redirige vers la page des donations

#PAGE MAGS
- une div pour le dernier mag publié (même qu'à l'accueil)
- un carousel dynamique
    ~ le contenu principal affiche l'aperçu des magazines (titre, description, couverture, bouton pour lire)
    ~ à droite, les indicators seront des li dns une ul, le contenu s'adapte à la li active
    ~ à droite de l'ul, les boutons pour faire défiler la liste de haut en bas, les li s'affichent 6 par 6 (à changer si besoin)
    ~ à chaque publication d'un nouveau numéro il est envoyé dans le carousel (sert d'historique)
- La possibilité au staff d'indiquer la progression dans la création du magazine (échelle de 0 à 10 sur l'écriture, la correction, etc)

#PAGE AUTEURS

- une liste des auteurs et du staff, seules les images sont apparentes
    ~ en cliquant dessus la présentation apparaît : une image, le texte de présentation et les mangas publiés
    ~ contenu modifiable par les auteurs et le staff

#PAGE MANGAS

- une liste des mangas publiés, accès à la lecture en ligne à travers des boutons. Contenu personnalisable
    ~ il y a une description brève du manga, la couv principale (du manga, pas des chapitres), et les boutons vers la lecture (liste déroulante ?)
- Les lecteurs peuvent indiquer s'ils ont envie (ou pas) que le manga qu'ils sont en train de lire sorte en format papier. Si 100 personnes sont d'accord, 
une notif apparait dans la partie admin

# PAGE DES CHAPITRES
- la lecture en ligne, une image par page, on passe à la suivante en cliquant sur le bouton suivant ?
- une liste déroulante qui permet d'accéder aux chapitres souhaités

#PAGE BLOG
- liste des articles publiés, tri par mois et/ou année possible ?
- les articles ont un lien unique, pour les partager partout

#PAGE SOUTIEN
- possibilité de donation
- explication de ce qu'on fait avec l'argent des soutiens
- contenu modifiable en backoffice

#PAGE BOUTIQUE

- créer un tableau de produits
- créer une page checkout
- paiement en ligne

# FOOTER

- à déterminer
