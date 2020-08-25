#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery:5312512:ba1b39e70bcc81874f6f6064607e451229efc75d; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/by-name/boot:4853760:cdf09532af62a842f6016da1bdd2dc6f19dbfb44 EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery ba1b39e70bcc81874f6f6064607e451229efc75d 5312512 cdf09532af62a842f6016da1bdd2dc6f19dbfb44:/system/recovery-from-boot.p && echo "
Installing new recovery image: succeeded
" >> /cache/recovery/log || echo "
Installing new recovery image: failed
" >> /cache/recovery/log
else
  log -t recovery "Recovery image already installed"
fi
