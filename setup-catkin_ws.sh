cd ~/TDDE05

wget https://www.ida.liu.se/~TDDE05/software/lrs-pkg.tar.bz2
tar -xjf lrs-pkg.tar.bz2
rm lrs-pkg.tar.bz2

mkdir catkin_ws
cd catkin_ws
mkdir src
cd src

git clone git@gitlab.ida.liu.se:tdde05/lrs_march.git
git clone git@gitlab.ida.liu.se:tdde05/lrs_morse.git
git clone git@gitlab.ida.liu.se:tdde05/air_morse.git
git clone git@gitlab.ida.liu.se:tdde05/air_tsts.git
git clone git@gitlab.ida.liu.se:tdde05/air_quad.git
git clone git@gitlab.ida.liu.se:TDDE05-2018/air-labs-09.git
