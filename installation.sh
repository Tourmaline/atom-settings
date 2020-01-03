
echo
echo "INSTALLING GIT"
echo
sudo apt install git -y
git config --global credential.helper 'cache --timeout=3600'


echo
echo "INSTALLING ATOM"
echo
sudo add-apt-repository ppa:webupd8team/atom -y
sudo apt update; sudo apt install atom -y
atom tmp &
cd ~/.atom
git init
rm -r config.cson
git remote add origin https://github.com/Tourmaline/atom-settings.git
git pull origin master
apm install --packages-file atom-package-list.txt

sudo apt-get install uncrustify -y



# install texlive-full
echo
echo "INSTALLING TEX - IT WILL TAKE SOME TIME"
echo
sudo apt install texlive-full -y



# install openmpi
echo
echo "INSTALLING OPENMPI"
echo
sudo apt install openmpi-common libopenmpi-dev -y
mpirun --version


echo
echo "INSTALLING BLAS AND LAPACK"
echo
sudo apt install libblas-dev liblapack-dev -y




