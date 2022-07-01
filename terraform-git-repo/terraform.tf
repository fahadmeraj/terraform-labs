
resource "github_repository" "terraform-second-repo" {
  name = "second-repo-from-terraform"
  description = "my second repo from terraform server"
  visibility = "public"
  auto_init = true

}

resource "github_repository" "terraform-fifth-repo" {
  name = "fifth-repo-from-terraform"
  description = "my fifth repo from terraform server"
  visibility = "public"
  auto_init = true

}

