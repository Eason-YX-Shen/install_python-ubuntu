python_ver=$1
sudo apt update
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev wget libbz2-dev liblzma-dev lzma
wget https://www.python.org/ftp/python/${python_ver}/Python-${python_ver}.tgz
tar -xf Python-${python_ver}.tgz
cd Python-${python_ver}
./configure --enable-optimizations  --prefix=/usr/local/bin/Python-${python_ver}/  --with-ssl 
make && make altinstall
Python${python_ver} --version
