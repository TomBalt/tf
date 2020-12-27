terraform {
backend "remote" {
organization = "tms"

workspaces {
name = "something"
}
}
}

variable "new"{
    type = object ({
        name = string
        age = number
    })
    default = { name = "Module",
                age = 1,
    }

}

output "modules_example" {
    value = var.new
}
