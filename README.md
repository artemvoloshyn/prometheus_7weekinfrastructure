## Google Kubernetes Engine (GKE) Cluster Terraform module

This module deploys a Kubernetes cluster on Google Cloud Platform (GCP) using the Google Kubernetes Engine (GKE) service. 

First check a terraform version
```terraform -version```

use  this command to initialize the terraform project 
```terraform init```

use this command to format the terraform project code to better reading
```terraform fmt```

use this command to validate the terraform project syntaxis 
```terraform validate```

To see upfront costs you can use ```infracost``` by downloading on linux (Downloads the CLI based on your OS/arch and puts it in /usr/local/bin)

```curl -fsSL https://raw.githubusercontent.com/infracost/infracost/master/scripts/install.sh | sh```

register/log in at 

[sign in/log in](https://login.infracost.io/login?state=hKFo2SBRa0pzdWVGenRUMURydV9ELVpmMGtRLU9hZmdKelZ5Y6FupWxvZ2luo3RpZNkgNktQWW80ZElSay1MZXJvYjN3eFdreWR0MWZKUjQ0NmKjY2lk2SBRVDc3T0pwRm9FOFZLMDdORkFGMXpINkNDVzhYU1ZXUA&client=QT77OJpFoE8VK07NFAF1zH6CCW8XSVWP&protocol=oauth2&audience=https%3A%2F%2Fdashboard.api.infracost.io&icSource=web&redirect_uri=https%3A%2F%2Fdashboard.infracost.io&scope=openid%20profile%20email%20offline_access&response_type=code&response_mode=query&nonce=UUJSWG1YTWoxZnVobjFqbEZMbV90LTFSbDl0NUVSQU9RRENUZjhXRkJSSQ%3D%3D&code_challenge=5-GzojnMhb_CB-TNITdV30fqZmQM_9hyJ2ZdHzOOHUk&code_challenge_method=S256&auth0Client=eyJuYW1lIjoiYXV0aDAtcmVhY3QiLCJ2ZXJzaW9uIjoiMS4xMC4yIn0%3D) 

generating in Org settings API_KEY and insert in ```infracost configure set api_key <MY_KEY>```

and to see estimated costs you need to execute in the terraform project folder this 
```infracost breakdown --path .```

in file `vars.tfvars` - you can adjust parameters to your needs

you need to export GITHUB_TOKEN secret value with ```export TF_VAR_GITHUB_TOKEN=<GITHUB_TOKEN_VALUE>```

if all suits you - feel free to create resource with 
```terraform apply -var-file=vars.tfvars```

when you finish, don't forget to delete all infrastructure 
```terraform destroy -var-file=vars.tfvars```

