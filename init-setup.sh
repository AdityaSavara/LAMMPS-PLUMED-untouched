INSTALLDIR="/home/christopher/Documents/PLUMED-bin"
cd PLUMED-src
echo "Configuring PLUMED..."
./configure --prefix=$INSTALLDIR CC=gcc CXX=g++ > /dev/null
make install
cd ..
cd LAMMPS-src/src
echo "Linking LAMMPS to PLUMED..."
make lib-plumed args="-p $INSTALLDIR" > /dev/null
cd ../..
./compile.sh
