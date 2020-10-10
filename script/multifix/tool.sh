#!/bin/bash
##################
# Fix Sim card issues
##################
if cat /system/build.prop |grep "Multifixdualsim" ; then
 echo 
else
 echo
 printf "\n#Multifixdualsim\npersist.radio.multisim.config=dsds\nro.multisim.simslotcount=2" >> /system/build.prop
fi
if cat /vendor/build.prop |grep ro.vendor.build.fingerprint |grep :8 ; then
 if cat /system/build.prop |grep "Multifixsimoreo"; then
  echo
 else
  echo
  printf "\n#Multifixsimoreo\npersist.sys.phh.sdk_override=/vendor/bin/hw/rild=27" >> /system/build.prop
 fi
fi
#################
# Fix Graphics issues 
#################
if cat /system/build.prop |grep "Multifixgraphic"; then
 echo
else
 echo
 printf "\n#Multifixgraphic\nro.sf.lcd_density=260" >> /system/build.prop
 if cat /system/build.prop |grep ro.system.build.fingerprint |grep :10 ; then
  echo
 else
  printf "\ndebug.hwui.renderer=opengl" >> /system/build.prop
 fi
fi