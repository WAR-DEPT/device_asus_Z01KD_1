#!/vendor/bin/sh

export PATH=/vendor/bin

first_boot=`getprop persist.asus.first_boot`

echo "[ASUS][RTC] Begin Set timezone" > /dev/kmsg
log -p d -t [ASUS][RTC] Begin Set timezone
echo "[ASUS][RTC] get persist.asus.first_boot = $first_boot" > /dev/kmsg
log -p d -t [ASUS][RTC] get persist.asus.first_boot = "$first_boot"

#if [ "${first_boot}" != 1 ] || [ ! -f /data/property/persist.asus.first_boot ];then
if [ "${first_boot}" != 1 ];then
	customer=$(cat /factory/CUSTOMER)
	
	echo "[ASUS][RTC] /factory/CUSTOMER = $customer" > /dev/kmsg
	log -p d -t [ASUS][RTC] /factory/CUSTOMER = "$customer"
	
	if [ "$customer" == "VF_IT" ] || [ "$customer" == "TIM" ];then
		setprop persist.sys.timezone "Europe/Brussels"
		echo "[ASUS][RTC] Set persist.sys.timezone to Europe/Brussels" > /dev/kmsg
		log -p d -t [ASUS][RTC] Set persist.sys.timezone to Europe/Brussels
	fi
	setprop persist.asus.first_boot 1
else
	echo "[ASUS][RTC] no need to set timezone" > /dev/kmsg
	log -p d -t [ASUS][RTC] no need to set timezone
fi

echo "[ASUS][RTC] End Set timezone" > /dev/kmsg
log -p d -t [ASUS][RTC] End Set timezone
