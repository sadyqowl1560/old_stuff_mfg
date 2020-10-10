##############################
# Extracting all relate to oreo Vendor 
##############################
if cat /tmp/mflog  |grep "Vendor : o" ; then
#
# Detecting device
 if cat /tmp/mflog  |grep "Device :  j4primelte" ; then
   cp  -af /tmp/vendor46/* /vendor/
 elif cat /tmp/mflog  |grep "Device :  j6primelte" ; then
   cp  -af /tmp/vendor46/* /vendor/ 
 elif cat /tmp/mflog  |grep "Device :  j4corelte" ; then
   cp  -af /tmp/vendorc/* /vendor/ 
   cp  -af /tmp/vendoroq/* /vendor/ 
 else
   exit 1
 fi
#
#$
 cp  -af /tmp/system/* /system/
 cp  -af /tmp/systemo/* /system/
 cp  -af /tmp/vendoro/* /vendor/
 if cat /tmp/mflog  |grep "System : q" ; then
  cp  -af /tmp/vendoroq/* /vendor/ 
 fi
#################################
# Extracting all relate to non oreo Vendor 
#################################
elif cat /tmp/mflog  |grep "Vendor : no" ; then
#
# Detecting device
 if cat /tmp/mflog  |grep "Device :  j4primelte" ; then
   cp  -af /tmp/vendor46/* /vendor/
 elif cat /tmp/mflog  |grep "Device :  j6primelte" ; then
   cp  -af /tmp/vendor46/* /vendor/ 
 elif cat /tmp/mflog  |grep "Device :  j4corelte" ; then
   cp  -af /tmp/vendorc/* /vendor/ 
   cp  -af /tmp/vendoroq/* /vendor/ 
 else
   exit 1
 fi
#
#$
 cp  -af /tmp/system/* /system/
 cp  -af /tmp/systemp/* /system/
 cp  -af /tmp/vendorp/* /vendor/
else
  exit 1
fi
###################
#Fix Trusted face crash
###################
cp -af /vendor/lib/libprotobuf-cpp-shit.so /system/lib/libprotobuf-cpp-shit.so