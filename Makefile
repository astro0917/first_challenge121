.PHONY: main
main: flag

FLAG := "picoCTF{Transactions_CryptographicHashing_AvalancheEffect_DistributedLedger}"

artifacts.tar.gz: app.py Dockerfile first_challenge.rar flag
	tar czvf $@ $^

flag:
	@echo "$(FLAG)" > flag

metadata.json:
	@echo "Creating the metadata file..."
	@echo "{\"flag\":\"$(FLAG)\"}" > metadata.json

clean:
	rm -f flag artifacts.tar.gz metadata.json
