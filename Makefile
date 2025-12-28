up:
	find . -maxdepth 2 -type f -name "docker-compose.yml" -print0 | xargs -0 -I {} bash -c 'podman compose -f "{}" up -d &'

down:
	find . -maxdepth 2 -type f -name "docker-compose.yml" -print0 | xargs -0 -I {} bash -c 'podman compose -f "{}" down &'

recreate:
	find . -maxdepth 2 -type f -name "docker-compose.yml" -print0 | xargs -0 -I {} bash -c 'podman compose -f "{}" up -d --force-recreate &'

orphans:
	find . -maxdepth 2 -type f -name "docker-compose.yml" -print0 | xargs -0 -I {} bash -c 'podman compose -f "{}" up -d --remove-orphans &'
