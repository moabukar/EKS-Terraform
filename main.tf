terraform {
  backend "http" {
  }
  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.30.0"
    }
        }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.0"
    random = {
      source  = "hashicorp/random"
      version = ">= 3.0.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "2.0.3"
    }
    local = {
      source  = "hashicorp/local"
      version = ">= 2.0.0"
    }
    null = {
      source  = "hashicorp/null"
      version = ">= 3.0.0"
    }
    template = {
      source  = "hashicorp/template"
      version = ">= 2.2.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.1"
    }
    tls = {
      source  = "hashicorp/tls"
      version = ">= 3.1.0"
    }
  }
  required_version = " >= 0.14.4"
}
