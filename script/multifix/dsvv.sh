rm -rf /tmp/mflog
################
# Detecting Device 
################
if cat /vendor/build.prop |grep ro.vendor.build.fingerprint |grep j4primelte ; then
   echo "Device :  j4primelte" > /tmp/mflog
elif cat /vendor/build.prop |grep ro.vendor.build.fingerprint |grep j6primelte ; then
   echo "Device :  j6primelte" > /tmp/mflog
elif cat /vendor/build.prop |grep ro.vendor.build.fingerprint |grep j4corelte ; then
   echo "Device :  j4corelte" > /tmp/mflog
else
   exit 1
fi
##
##############################
# Detecting Vendor & System version 
##############################
if cat /vendor/build.prop |grep ro.vendor.build.fingerprint |grep :8 ; then
 echo "Vendor : o" >> /tmp/mflog 
  if cat /system/build.prop |grep ro.system.build.fingerprint |grep :8 ; then
   echo "System : o" >> /tmp/mflog
  elif cat /system/build.prop |grep ro.system.build.fingerprint |grep :9 ; then
   echo "System : p" >> /tmp/mflog
  elif cat /system/build.prop |grep ro.system.build.fingerprint |grep :10 ; then
   echo "System : q" >> /tmp/mflog
  else
   exit 1
  fi
else
  echo "Vendor : no" >> /tmp/mflog 
fi
##