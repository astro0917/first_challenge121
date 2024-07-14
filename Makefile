.PHONY: main clean

FLAG := "picoCTF{fabian_es_el_mejor}"

main: artifacts.tar.gz metadata.json

artifacts.tar.gz: fabi
	tar czvf $@ $^

fabi:
	@echo "$(FLAG)" > fabi

metadata.json:
	@echo "Creating the metadata file..."
	@echo "{\"flag\":\"$(FLAG)\"}" > metadata.json

clean:
	rm -f fabi blockchain.ZIP metadata.json
