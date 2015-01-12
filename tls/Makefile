ifdef CLIENT
client_extra=-extfile extfile.cnf
ifndef NAME
NAME=client
endif
ifndef CN
CN=client
endif
endif

ifndef CN
$(error Please run 'make CN=hostname')
endif

ifndef NAME
NAME=server
endif

all: ca.crt $(NAME).crt

ca.srl:
	echo 01 > ca.srl

%.key:
	openssl genrsa -out $@ 4096

%.csr: %.key
	openssl req -subj '/CN=$(CN)' -new -key $< -out $@

ca.crt: ca.key
	openssl req -new -x509 -subj '/CN=CA' -days 3650 -key ca.key -out ca.crt

%.crt: %.csr ca.key ca.crt ca.srl
	openssl x509 -req -days 3650 -in $< -CA ca.crt -CAkey ca.key -out $@ $(client_extra)

.SECONDARY:
