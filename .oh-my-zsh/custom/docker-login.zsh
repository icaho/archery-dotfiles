alias docker-dev='aws ecr get-login-password --region eu-west-1 --profile nexmo-dev | docker login --username AWS --password-stdin 564623767830.dkr.ecr.eu-west-1.amazonaws.com'
alias docker-prod='aws ecr get-login-password --region eu-west-1 --profile nexmo-prod | docker login --username AWS --password-stdin 920763156836.dkr.ecr.eu-west-1.amazonaws.com'
