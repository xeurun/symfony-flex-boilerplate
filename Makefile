include app/.env

ifeq ($(APP_ENV),dev)
	CONFIG = -f docker-compose.dev.yaml
else
	CONFIG = -f docker-compose.yaml
endif

CMD = docker-compose ${CONFIG}

# show some help
help:
	@echo  ''
	@echo  'Usage:'
	@echo  "\t make <commands>"
	@echo  'Commangs:'
	@echo  "\tbuild - docker-compose build"
	@echo  "\tTODO: add all commands"
	@echo  ''

bash:
	$(CMD) exec $(s) bash

build:
	$(CMD) build $(s)

up:
	$(CMD) up -d $(s)

stop:
	$(CMD) stop $(s)

ps:
	$(CMD) ps

restart: stop up

logs:
	$(CMD) logs -f $(s)

composer:
	$(CMD) run --rm --user="www-data:www-data" composer composer $(c)

server-start:
	$(CMD) exec --user www-data php /app/bin/console server:start 0.0.0.0:$(p)

.PHONY: build up stop ps restart logs composer server-start