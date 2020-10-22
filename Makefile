

all: validate provision

clean: validate destroy

validate:
	vagrant validate

up:
	vagrant up

provision:
	vagrant provision

destroy:
	vagrant destroy -f


