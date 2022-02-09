#-----------------------------------------------------------
# Set up environment variables
#-----------------------------------------------------------

UID=$(shell id -u)
GID=$(shell id -g)


#-----------------------------------------------------------
# Docker
#-----------------------------------------------------------

# Wake up docker containers
up:
	docker-compose up -d

# Shut down docker containers
down:
	docker-compose down

# Restart all containers
restart: down up

# Show a status of each container
status:
	docker-compose ps

# Build and up docker containers
build:
	docker-compose build --build-arg UID=$(UID) --build-arg GID=$(GID)

# Build and up docker containers
rebuild: down build

# Install the environment
install: build up
#-----------------------------------------------------------
# Clearing
#-----------------------------------------------------------

# Shut down and remove all volumes
remove-volumes:
	docker-compose down --volumes

# Remove all existing networks (useful if network already exists with the same attributes)
prune-networks:
	docker network prune

# Clear cache
prune-a:
	docker system prune -a
