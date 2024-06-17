# app.py
from flask import Flask, send_file, request, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return "Welcome to the What is a Blockchain Challenge!"

@app.route('/download', methods=['GET'])
def download_file():
    path = "first_challenge.rar"
    return send_file(path, as_attachment=True)

@app.route('/submit', methods=['POST'])
def submit_flag():
    submitted_flag = request.form['flag']
    correct_flag = "picoCTF{Transactions_CryptographicHashing_AvalancheEffect_DistributedLedger}"
    if submitted_flag == correct_flag:
        return jsonify({"result": "Correct"})
    else:
        return jsonify({"result": "Incorrect"})

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
