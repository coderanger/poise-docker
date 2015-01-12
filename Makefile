ifndef HOST
$(error Please run 'make HOST=hostname')
endif

all: cook

tls:
	$(MAKE) -C tls all CN=$(HOST)

nodes/$(HOST).json:
	echo '{"run_list": ["poise-docker"]}' > $@

bundle:
	bundle install

prepare: bundle tls nodes/$(HOST).json
	bundle exec knife solo prepare $(USER)@$(HOST)

cook: prepare
	bundle exec knife solo cook $(USER)@$(HOST)

.PHONY: tls bundle prepare cook
