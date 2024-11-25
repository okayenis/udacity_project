az webapp up --name udacityproject2 --resource-group Azuredevops --sku F1


python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python app.py
