#mengimport module yang dibutuhkan
from flask import Flask, request, jsonify

#import masing-masing file dan fungsi
from prediction.kaca import klasifikasiKaca, kaca
from prediction.kain import klasifikasiKain, kain
from prediction.metal import klasifikasiMetal, metal
from prediction.plastik import klasifikasiPlastik, plastik

#inisialisasi flask
app = Flask(__name__)

#inisialisasi klien penyimpanan Google Cloud
#service_account = 'artful-guru-386801-9390336d684c.json'
#client = storage.Client.from_service_account_json(service_account)

#endpoint index/homepage
@app.route('/', methods=["GET"])
def index():
    return '<h1> <center> Welcome to T2T API Homepage, port 4000 </center> </h1>'

#membuat endpoint untuk masing masing file prediksi machine learning
@app.route('/kaca', methods=['POST'])
def kaca_endpoint():
    return kaca()

@app.route('/kain', methods=['POST'])
def kain_endpoint():
    return kain()

@app.route('/metal', methods=['POST'])
def metal_endpoint():
    return metal()

@app.route('/plastik', methods=['POST'])
def plastik_endpoint():
    return plastik()

if __name__ == '__main__':
    app.run(port=4000,  host="0.0.0.0", debug=True)