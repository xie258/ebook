pwd=$(pwd)

# start mysql
cd "${pwd}"/mysql
docker build -t mysql .
docker run -it -d -p 3306:3306 --name mysql mysql

# start nginx
cd "${pwd}"
npm install
npm run dev
# npm run build
# docker build -t nginx .
# docker run -it -d -p 8080:80 --name nginx nginx

# start flask
cd "${pwd}"/backend/server
python3 -m pip install -r requirments.txt
python3 manage.py

cd "${pwd}"


