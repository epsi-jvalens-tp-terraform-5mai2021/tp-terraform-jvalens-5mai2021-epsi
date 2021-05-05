# tp-terraform-jvalens-5mai2021-epsi
tp-terraform-jvalens-5mai2021-epsi

1 ) Creation d'organisation


  Dans le profil > aller dans setting puis chercher organization
      Ensuite faire " Create new organisation" et suivre l'assistant de configuration de l'organisation.
      
     
2 ) Création du workflow

Etape1 :


Depuis Github, aller dasn l'onglet "Action"  puis sur la bare latérale dans All workflow, nous verrons les workflow, faire "New Workflow", sous Jobs selectionner Explore-GitHub-Actions


Nous verrons ainsi les logs apparaître avec les tests dessus "Validé" " erreur " etc...

Etape 2 : 

Créer le fichier .github/workflows/github-actions.yml



3 ) Ajouter des personnes sur le projet 


Demandez le nom d'utilisateur de la personne que vous invitez en tant que collaborateur. Si elle n'a pas encore de nom d'utilisateur, elle doit s'inscrire sur GitHub.
Sur GitHub, accédez à la page principale du dépot.
Sous le nom de votre projet, cliquez sur Paramètres.
Dans la barre latérale de gauche, cliquez sur Collaborateurs.
Sous Collaborateurs, commencez à taper le nom d'utilisateur du collaborateur.
Sélectionnez le nom d'utilisateur du collaborateur dans le menu déroulant.
Cliquez sur Ajouter un collaborateur.
L'utilisateur recevra un e-mail l'invitant au repository. Une fois qu'il aura accepté votre invitation, il aura un accès collaborateur au dépôt.


4 ) Création d'un module Terraform
5 ) Workflow : création du fichier terraform.yml et ajout des variables pour l'environnement et le token
  Les valeurs suivantes :
  
  
  env:
        TF_VAR_git_token: ${{ secrets.GIT_TOKEN }}
