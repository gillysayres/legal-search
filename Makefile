RUN := docker-compose run --rm rails_api
spec := spec

setup:
	docker-compose build
	make bundle
	make reset

bundle:
	$(RUN) bundle install

up:
	docker-compose up

build:
	docker-compose up --build

down:
	docker-compose down
	rm -f tmp/pids/server.pid

bash:
	$(RUN) bash

console:
	$(RUN) bundle exec rails c

rspec:
	$(RUN) bundle exec rspec $(spec)

create:
	$(RUN) bundle exec rake db:create

migrate:
	$(RUN) bundle exec rake db:migrate

seed:
	$(RUN) bundle exec rake db:seed

drop:
	$(RUN) bundle exec rake db:drop

reset:
	$(RUN) bundle exec rake db:drop db:create db:migrate 
