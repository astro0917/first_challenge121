.PHONY: main
main: flag

FLAG := "picoCTF{Transactions_CryptographicHashing_AvalancheEffect_DistributedLedger}"

artifacts.tar.gz: first_challenge.rar flag
	# Make sure this line is indented with a tab
	tar czvf $@ $^

first_challenge.rar:
	# Make sure this line is indented with a tab
	cp /path/to/your/first_challenge.rar ./

flag:
	# Make sure this line is indented with a tab
	@echo "$(FLAG)" > flag

metadata.json:
	# Make sure this line is indented with a tab
	@echo "Creating the metadata file..."
	# Make sure this line is indented with a tab
	@echo "{\"flag\":\"$(FLAG)\"}" > metadata.json

clean:
	# Make sure this line is indented with a tab
	rm -f flag artifacts.tar.gz metadata.json
