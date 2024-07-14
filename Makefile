.PHONY: main clean

FLAG := "picoCTF{fabian_es_el_mejor}"

main: fabi blockchain.ZIP metadata.json

blockchain.zip: fabi
	zip $@ $^

fabi:
	@echo "$(FLAG)" > fabi

metadata.json:
	@echo "Creating the metadata file..."
	@echo "{\"flag\":\"$(FLAG)\"}" > metadata.json

clean:
	rm -f fabi blockchain.ZIP metadata.json
