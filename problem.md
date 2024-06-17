Challenge: What is a Blockchain?
Namespace: your_namespace/examples
Type: flask
Category: General Skills
Points: 10
Templatable: no

Description:
With this challenge, we will introduce what a blockchain is to complete beginners. This challenge will be really easy, prompting the user to click on the downloadable link that contains a RAR file. This RAR will contain 4 different `.txt` files. Each text file will also contain 1 multiple-choice question with 4 different answers. Each answer to these questions will be part of the flag.

Details:
Download the file from {{url_for("first_challenge.rar", "here")}}, unzip it using the password provided in the hints, and read the `.txt` files to answer the questions and form the final flag.

Hints:
1. Make sure you have a program to unzip files.
2. RAR password: learning_blockchain_is_fun
3. Can you combine your answers to create the flag?

Solution Overview:
Download and unzip the file, then read the `.txt` files to answer the questions. Combine the answers to form the final flag.

Challenge Options:
```yaml
init: true
cpus: 0.5
memory: 128m
pidslimit: 20
ulimits:
  - nofile=128:128
diskquota: 64m
