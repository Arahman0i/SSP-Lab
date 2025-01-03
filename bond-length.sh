#!/bin/sh/

echo "started at" 
date

#sed "s/2.00/NEW/g" Cl2.in > tmp
  
for DIST in `seq -w 2.2 0.2 4.6`
do
	#sed "s/NEW/${DIST}/g" tmp >Cl2-${DIST}.in
	#pw.x <Cl2-${DIST}.in>Cl2-${DIST}.out
	
	echo ${DIST} | tee -a DIST.dat
	#Energy
	grep  '!' Cl2-${DIST}.out | awk '{print $5}' | tee -a E.dat

done

echo "Done at"
date
paste DIST.dat E.dat>DIST-Energy.dat

