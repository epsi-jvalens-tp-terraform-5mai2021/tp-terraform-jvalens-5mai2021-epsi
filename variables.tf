variable "name" {
    
    type = string
    default = "mon_application"
    description = "application"
}

variable "username" {
    
    type = string
    default = "usernemae"
    description = "insert_username"
}

variable "permission_pull" {
    
    type = string
    default = "pull"
    description = "permission de pull"
}

variable "permission_push" {
    
    type = string
    default = "pull"
    description = "permission de push"
}
