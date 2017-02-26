  #ActiveRecord::Migration.drop_table(:presentations)
  #ActiveRecord::Migration.create_table(:presentations)

  presentation = Presentation.create(

  titre1: "A PROPOS DU PROJET, QU'EST-CE QUE LE KIPPON DREAM ?",
  contenu1: "<p>Le Kippon Dream est un webzine de prépublication francophone de bandes-dessinées style manga avec déjà plus de 15 numéros à son actif et un staff motivé et dynamique. Ce projet est en perpétuel développement et si toute l'équipe travaille de façon bénévole et par passion pour le moment, nous avons pour objectif de nous professionnaliser afin de se faire une place dans le milieu de la bd francophone.</p>",
  titre2: "PRÉSENTATION GÉNÉRALE DES MAGAZINES",
  contenu2: "<p>Du contenu exclusif et plus de 2000 pages du Kippon Dream vous attendent ! <br />
            Ici vous trouverez l'ensemble de nos numéros en lecture libre ! <br />
            Vous découvrirez dans ces derniers l'ensemble de nos projets bd/manga, quelques articles et des interviews des membres de l'équipe (ainsi que des guests parfois!)</p>

          <p>Il est aussi important de savoir que nos numéros sont, à partir du sixième, partagés en deux groupes, les pairs et les impairs. <br />
            Cela nous permet de vous offrir un numéro tous les un mois et demi et d'avoir à chaque fois un contenu suffisant et mieux organisé. <br />
            Il est à noter que chaque série reste dans son groupe, cela facilite ainsi la lecture et vous pouvez retrouver vos séries préférées selon les numéros.</p>",
  titre3: "Pourquoi lire nos magazines ?",
  contenu3: "<p>Du contenu exclusif et plus de 2000 pages du Kippon Dream vous attendent ! <br />
          Ici vous trouvez l'ensemble de nos numéros en lecture libre ! <br />
          Vous découvrirez dans ces derniers l'ensemble de nos projets bd/manga, quelques <br />
          articles et des interviews des membres de l'équipe (ainsi que des guests parfois!). </p>
        <p>Il est aussi important de savoir que nos numéros sont, à partir du sixième, partagés en <br />
          deux groupes, les pairs et les impairs. <br />
          Cela nous permet de vous offrir un numéro tous les un mois et demi et d'avoir à chaque <br />
          fois un contenu suffisant et mieux organisé.<br />
          Il est à noter que chaque série reste dans son groupe, cela facilite ainsi la lecture et <br />
          vous pouvez retrouver vos séries préférées selon les numéros.</p>"
  )
  user = User.create! :email => 'jd.levarato@gmail.com', :username => 'Jaeger767', :password => 'RedKhezuHR5' #, :confirm_password => 'RedKhezuHR5'
  # end
