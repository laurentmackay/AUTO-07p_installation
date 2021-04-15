



sudo apt update
sudo apt install git build-essential gcc gfortran

git clone https://github.com/auto-07p/auto-07p.git ~/auto/07p
cd ~/auto/07p
./configure
make
make clean

echo 'source ~/auto/07p/cmds/auto.env.sh' >> ~/.bashrc
source ~/.bashrc


sudo apt install tk-dev libpng-dev libffi-dev dvipng texlive-latex-base python3-pip python3-tk

pip3 install -U matplotlib --no-binary :all:

