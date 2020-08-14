cd PLUMED-src
echo "Compiling PLUMED..."
make install > /dev/null
cd ..
cd LAMMPS-src/src
echo "Compiling LAMMPS..."
sudo make serial > /dev/null
cd ../..
