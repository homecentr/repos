variable github_token {}

variable docker_image_repositories {
  type = map

  default = {
    # Active repositories
    "base":               { repo_name = "docker-base", archived = false, topics = [ "homecentr", "alpine", "centos", "internal", "docker-image" ], status_checks_contexts = ["Semantic Pull Request", "build (alpine)", "build (centos)"] }
    "cadvisor":           { repo_name = "docker-cadvisor", archived = false, topics = [ "homecentr", "cadvisor", "monitoring", "docker-image" ], status_checks_contexts = ["Semantic Pull Request", "build"] }
    "certbot":            { repo_name = "docker-certbot", archived = false, topics = [ "homecentr", "letsencrypt", "certbot", "docker-image" ], status_checks_contexts = ["Semantic Pull Request", "build"] },
    "cron-base":          { repo_name = "docker-cron-base", archived = false, topics = [ "homecentr", "crontab", "prometheus-push-gateway", "docker-image" ], status_checks_contexts = [ "Semantic Pull Request", "build" ] }
    "ddclient":           { repo_name = "docker-ddclient", archived = false, topics = [ "homecentr", "dynamic-dns", "ddclient", "cloudflare", "docker-image" ], status_checks_contexts = [ "Semantic Pull Request", "build" ] }
    "dns":                { repo_name = "docker-dns", archived = false, topics = [ "homecentr", "dns", "dnssec", "isc-bind", "docker-image" ], status_checks_contexts = ["Semantic Pull Request", "build"] }
    "dns-exporter":                 { repo_name = "docker-dns-exporter", archived = false, topics = [ "homecentr", "dns", "isc-bind", "prometheus", "prometheus-exporter", "docker-image"], status_checks_contexts = ["Semantic Pull Request", "build"] }
    "dockerd-exporter":             { repo_name = "docker-dockerd-exporter", archived = false, topics = [ "homecentr", "docker-daemon", "prometheus", "prometheus-exporter", "docker-image" ], status_checks_contexts = ["Semantic Pull Request", "build"] }
    "grafana":                      { repo_name = "docker-grafana", archived = false, topics = [ "homecentr", "grafana", "docker-image" ], status_checks_contexts = ["Semantic Pull Request", "build"] }
    "jumpcloud-agent":              { repo_name = "docker-jumpcloud-agent", archived = true, topics = [ "homecentr", "jumpcloud-agent", "docker-image", "obsolete" ], status_checks_contexts = [] }
    "mkdocs-material":              { repo_name = "docker-mkdocs-material", archived = false, topics = [ "homecentr", "mkdocs", "mkdocs-material", "drawio", "docker-image"], status_checks_contexts = ["Semantic Pull Request", "build"] }
    "plugin-volume-glusterfs":      { repo_name = "docker-plugin-volume-glusterfs", archived = false, topics = [ "homecentr", "glusterfs", "docker-volume-plugin", "docker-plugin" ], status_checks_contexts = ["Semantic Pull Request", "build"] }
    "portainer":                    { repo_name = "docker-portainer", archived = false, topics = [ "homecentr", "portainer", "docker-swarm", "docker-image" ], status_checks_contexts = ["Semantic Pull Request", "build"] }
    "portainer-agent":              { repo_name = "docker-portainer-agent", archived = false, topics = [ "homecentr", "portainer", "portainer-agent", "docker-swarm", "docker-image"], status_checks_contexts = ["Semantic Pull Request", "build"] }
    "prometheus":                   { repo_name = "docker-prometheus", archived = false, topics = [ "homecentr", "prometheus", "docker-image" ], status_checks_contexts = ["Semantic Pull Request", "build"] }
    "prometheus-alertmanager":      { repo_name = "docker-prometheus-alertmanager", archived = false, topics = [ "homecentr", "prometheus", "alertmanager", "docker-image" ], status_checks_contexts = ["Semantic Pull Request", "build"] }
    "prometheus-blackbox-exporter": { repo_name = "docker-prometheus-blackbox-exporter", archived = false, topics = [ "homecentr", "prometheus", "prometheus-blackbox-exporter", "prometheus-exporter", "docker-image" ], status_checks_contexts = ["Semantic Pull Request", "build"] }
    "prometheus-node-exporter":     { repo_name = "docker-prometheus-node-exporter", archived = false, topics = [ "homecentr", "prometheus", "prometheus-node-exporter", "prometheus-exporter", "docker-image" ], status_checks_contexts = ["Semantic Pull Request", "build"] }
    "prometheus-push-gateway":      { repo_name = "docker-prometheus-push-gateway", archived = false, topics = [ "homecentr", "prometheus", "prometheus-push-gateway", "docker-image" ], status_checks_contexts = ["Semantic Pull Request", "build"] }
    "swarm-local-network-connector":{ repo_name = "docker-swarm-local-network-connector", archived = false, topics = [ "homecentr", "docker-swarm", "macvlan", "docker-network", "docker-image" ], status_checks_contexts = ["Semantic Pull Request", "build"] }
    "traefik":                      { repo_name = "docker-traefik", archived = false, topics = [ "homecentr", "traefik", "reverse-proxy", "docker-image" ], status_checks_contexts = ["Semantic Pull Request", "build"] }
    "dhcp":                         { repo_name = "docker-dhcp", archived = false, topics = [ "homecentr", "isc-dhcp", "docker-image" ], status_checks_contexts = ["Semantic Pull Request", "build"] }

    # In progress
    "rclone":                       { repo_name = "docker-rclone", archived = false, topics = [ "homecentr", "rclone", "backup", "docker-image" ], status_checks_contexts = ["Semantic Pull Request", "build"] }
    "snipe-it":                     { repo_name = "docker-snipe-it", archived = false, topics = [ "homecentr", "snipe-it", "asset-management", "docker-image" ], status_checks_contexts = ["Semantic Pull Request", "build"] }

    # Archived repositories
    "gluster":                      { repo_name = "docker-gluster", archived = true, topics = [ "homecentr", "gluster", "docker-image", "obsolete" ], status_checks_contexts = [] }
    "rancher-console":              { repo_name = "docker-rancher-console", archived = true, topics = [ "homecentr", "rancher-os", "alpine", "docker-image" ], status_checks_contexts = [] }
  }
}

variable template_repositories {
  type = map
  
  default = {
    "docker-image": { repo_name: "docker-template", archived = false, topics = [ "homecentr", "docker-image" ] }
    "ansible-role": { repo_name: "ansible-role-template", archived = true, topics = [ "homecentr", "ansible", "ansible-role" ] }
  }
}

variable generic_repositories {
  type = map

  default = {   
    "docs":                        { repo_name = "docs", archived = false, topics = [ "homecentr", "documentation", "mkdocs-material" ], status_checks_contexts = [ ] } 
    "rancher-os-services":         { repo_name = "rancher-os-services", archived = true, topics = [ "homecentr", "rancher-os", "service-registry" ], status_checks_contexts = [ "Semantic Pull Request" ] }

    # Java libs
    "testcontainers-extensions":   { repo_name = "testcontainers-extensions", archived = false, topics = [ "homecentr", "testcontainers", "docker-testing", "java-library" ], status_checks_contexts = [ "Semantic Pull Request", "build" ] }
    "lib-ansible-tests":           { repo_name = "lib-ansible-tests", archived = false, topics = [ "homecentr", "ansible", "unit-tests" ], status_checks_contexts = [ "Semantic Pull Request", "build" ] }
 
    # Was not created from Docker image template => managed as a generic repository
    "docker-driver-macvlan-swarm": { repo_name = "docker-driver-macvlan-swarm", archived = true, topics = [ "homecentr", "docker-network-driver" ], status_checks_contexts = [] }
    "docker-dhcp-exporter":        { repo_name = "docker-dhcp-exporter", archived = false, topics = [ "homecentr", "isc-dhcp", "prometheus-exporter", "fork", "docker-image" ], status_checks_contexts = [ "Semantic Pull Request", "build" ] }
    
    # Ansible
    "ansible-collection-homecentr":  { repo_name = "ansible-collection-homecentr", archived = false, topics = [ "homecentr", "ansible", "ansible-collection" ], status_checks_contexts = [] }
  }
}