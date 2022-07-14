
resource "github_repository" "terraform-second-repo" {
  name = "second-repo-from-terraform"
  description = "my second repo from terraform server"
  visibility = "public"
  auto_init = true

}

output "terraform-second-repo-url" {
  value = github_repository.terraform-second-repo.html_url
}

