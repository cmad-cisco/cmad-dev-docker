set -ex
source init-data-dir.sh
docker-compose down
docker-compose --project-name cmad up --abort-on-container-exit
