terraform {
	backend "remote" {
		organization = "JKolios" # TF Cloud organization name
		workspaces {
			name = "pistack" # TF Cloud workspace name
		}
	}
}