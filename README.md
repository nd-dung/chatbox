I. Cài RASA
 B1: Cài python phiên bản 3.7.9
 B2: pip install ujson
 B3: pip install rasa==2.8.1
 B4: Tạo forder rasa chạy: pip3 install rasa-x==0.39.3 --extra-index-url https://pypi.rasa.com/simple
  Lỗi ‘Sanic’ object has no attribute ‘auth’
  Fix : pip install sanic-jwt==1.6.0
II. Lệnh chạy mysql
- Cài đặt xampp: sau đó import file shopdb.sql
Import thư viện:
-	pip install mysqlclient
-	pip install mysql-connector-python
-	pip install pymysql
III. Lệnh khởi chạy Rasa
rasa init: khởi tạo 1 pj mới
rasa train: train 1 model mới
rasa shell: chat với bot
rasa shell nlu : chat với bot cùng nhiều thông tin hơn
rasa interactive: train online cho bot -> trong terminal ctrl+c : để vào menu
rasa run actions: chạy sever
python -m http.server: Chạy server localhost:8000
