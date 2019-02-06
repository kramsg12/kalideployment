export http_proxy=http://localhost:3128/
./build.sh --distribution kali-rolling --verbose --variant custom -- \
--apt-http-proxy=${http_proxy}
