provider "scaleway" {
  region = "par1"
}

data "scaleway_image" "project-server" {
  architecture = "x86_64"
  name = "Ubuntu Bionic"
}

resource "scaleway_server" "project-server" {
  name                = "project-server"
  image               = "${data.scaleway_image.project-server.id}"
  type                = "START1-S"
  state               = "running"
  enable_ipv6         = true
  dynamic_ip_required = true
}

data "template_file" "cloud_init_script" {
  template = "${file("cloud-init.yml")}"

  vars {
    msg = "Hello"
  }
}

resource "scaleway_user_data" "cloud-init" {
  server = "${scaleway_server.project-server.id}"
  key    = "cloud-init"
  value  = "${data.template_file.cloud_init_script.rendered}"
}

output "ipv4" {
  value = "${scaleway_server.project-server.public_ip}"
}
