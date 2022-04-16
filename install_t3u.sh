#To run script, type 'sudo ./install_t3u.sh' in ~/Downloads/
##This bash-script assumes your CPU has eight-threads.

sudo dkms remove rtl88x2bu/5.3.1 --all;
sudo dkms remove 8822bu/1.1 --all;

cd ~/Downloads/;
git clone https://github.com/jeremyb31/rtl8822bu;
cd rtl8822bu/;
make uninstall -j 8;
make -j 8;
make install -j 8;
cd ../;
sudo cp -R rtl8822bu/ /usr/src/.-rtl8822bu/;
sudo dkms add ./rtl8822bu;
sudo rm -R rtl8822bu/;
echo "Install completed. Please reboot.";
echo "Try: 'sudo shutdown -f now' or 'reboot'";
