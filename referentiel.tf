module " référentiel " {
   source  =  " ./module "

  name  =  " mysuperapp "

  description  =  " Ma super application "

  collaborateurs  =  [ 
    { 
      username    =  " skhedim "
       permission  =  " push "
    },
    {
      username    =  " linuxtorvalds "
       permission  =  " pull "
    },
  ]

  équipes = [
    {
      name        =  " terraform "
       permission  =  " push "
    },
  ]
}
