#!/bin/sh
export OMP_NUM_THREADS=2
echo "started at"
date
for i in  `seq -w 0.1 0.1 2.0`
 	do
    sed "s/msk/$i/g" btemp >| elk.in
                
    mkdir $i
    cp elk.in $i
    cd $i
                
 	  time mpirun -np 8 elk
                
    # momfix
		echo $i | tee -a ../a.dat
                
    # volume
		# grep -H 'Unit cell volume      :' INFO.OUT| awk '{print $5}'  | tee -a ../V.dat

		# Energy
 		tail -1 TOTENERGY.OUT | tee -a ../E.dat
 		
 		# ngridk point
 		# echo $i | tee -a ../K.dat
 		
 		# Total K
 		# grep -H 'Total number of k-points' INFO.OUT| awk '{print $6}' | tee -a ../TK.dat
 		
 		# Total Moment
 		tail -1 MOMENT.OUT | tee -a ../M.dat
 		
 		# no. of scf loops
 		grep -H 'Loop number :' INFO.OUT | awk '{print $5}' >> lp-temp.dat
		tail -1 lp-temp.dat | tee -a ../lp.dat
 		cd ..
done
echo "Done at"
paste a.dat lp.dat E.dat M.dat > data.dat
date
