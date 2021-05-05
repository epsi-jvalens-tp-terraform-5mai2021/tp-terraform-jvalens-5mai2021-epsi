#variable nom du depot git
variable "nom_repos" {
    
    type = string
    description = "give repository_name"
}

#variable permission pull ou push
variable "permission" {
    
    type = string
    description = "give permission for new groups pull / push "
}

variable "git_token" {
    description= "Github access token"
}
