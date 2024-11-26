#!/bin/sh
find . -name EVALFV.OUT -exec rm -f {} +
find . -name EVALSV.OUT -exec rm -f {} +
find . -name OCCSV.OUT -exec rm -f {} +
find . -name EVECFV.OUT -exec rm -f {} +
find . -name EVECSV.OUT -exec rm -f {} +
find . -name STATE.OUT -exec rm -f {} +

#---------------------description-----------------------------------------------------------------#
# find . command search in the current directory 
# name parameter is given for searching the name of that file in the directory
# -exec command functions on the search result
# together with rm -f {} + command takes the o/p of previous command put it in the {} and executes.
# that + for continuing the process until find results in null. 
#-------------------------------------------------------------------------------------------------#


# #!/bin/sh
# echo "started at"
# date
# for i in `seq -w 10 1 18`
#  
#  do
# 	cd $i
# 	rm -rf EVALFV.OUT EVALSV.OUT OCCSV.OUT EVECFV.OUT EVECSV.OUT STATE.OUT
#	cd ../
		
#done
#echo "EVALFV.OUT EVALSV.OUT OCCSV.OUT EVECFV.OUT EVECSV.OUT STATE.OUT deleted."
#date
