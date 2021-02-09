# AUTO-07p_installation
Instructions for installing AUTO-07p in various Unix-like environments

## Debian-Based Linux Distributions

#### basic AUTO requirements
sudo apt update

sudo apt install git build-essential gcc gfortran 

#### get the latest version of AUTO
git clone https://github.com/auto-07p/auto-07p.git ~/auto/07p

cd ~/auto/07p

./configure 

make

make clean

#### "install" auto commands into your terminal environment
echo 'source ~/auto/07p/cmds/auto.env.sh' >> ~/.bashrc

source ~/.bashrc

### Ubuntu 20.04 LTS
#### fixing the local python installation (recompile matplotlib with tkinter support)
sudo apt install tk-dev libpng-dev libffi-dev dvipng texlive-latex-base python-pip python3-tk

pip install -U matplotlib --no-binary :all:


### Debian Buster (major difference with Ubuntu 20.04 is use of Python2.7)
#### fixing the local python installation (recompile matplotlib with tkinter support)
sudo apt install tk-dev libpng-dev libffi-dev dvipng texlive-latex-base python-pip python-tk python-matplotlib

pip install -U matplotlib --no-binary :all:

## Windows 10 using WSL2 + VcXsrv
### In Windows 10
- Install WSL2 + Linux
- Install VcXsrv
- Create shortcut with target "C:\Program Files\VcXsrv\vcxsrv.exe" :0 -ac -terminate -lesspointer -multiwindow -clipboard -wgl -dpi auto
- Add inbound rule for vcxsrv.exe in Windows Defender advanced setting
- start VcXsrv by clicking shortcut (you may add this as a startup program for convenience)

### In Linux
- echo "export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0" >> ~/.bashrc
- restart WSL shell
- install AUTO (see above)
- enjoy
