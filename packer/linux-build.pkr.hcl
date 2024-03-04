packer {
  required_plugins {
    amazon = {
      source  = "github.com/hashicorp/amazon"
      version = "~> 1"
    }
  }
}

build {
  name        = "ubuntu"
  description = <<EOF
This build creates ubuntu images for ubuntu versions :
* 22.04
For the following builers :
* amazon-ebs
EOF

  sources = [
    "source.amazon-ebs.ubuntu_22"
  ]

  provisioner "file" {
    source      = "scripts/"
    destination = "/tmp/"
  }

  provisioner "shell" {
    inline = [
      "cd /tmp/",
      "sudo chmod +x hashicorp-suites.sh",
      "sudo ./hashicorp-suites.sh"
    ]
  }

  post-processors {
    # post-processor "artifice" {
    #   files = [
    #     "output-virtualbox-iso/vbox-example-disk001.vmdk",
    #     "output-virtualbox-iso/vbox-example.ovf"
    #   ]
    # }

    # post-processor "vagrant" {
    #   keep_input_artifact = true
    #   provider_override   = "virtualbox"
    # }

    post-processor "manifest" {
      output = "packer-build-manifest.json"
    }
  }
}