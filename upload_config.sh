sudo bash setup.sh

echo "reloading do terminal"
source ~/.bashrc

echo "salvando profile konsave"
konsave -s "hb"
konsave -e "hb" -d konsave_profile -n "hb" -f
