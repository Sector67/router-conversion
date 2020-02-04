sed -i -e 's|SPINDLE_0|SPINDLE_9|' ~/linuxcnc/configs/router/router.ini
sed -i -e '/spindle-at-speed/d' ~/linuxcnc/configs/router/router.hal
#sed -i -e 's|BACKLASH = 0.0|BACKLASH = 0.0027|' ~/linuxcnc/configs/router/router.ini
# set the home offset for X1 only
awk -i inplace 'NR==1,/HOME_OFFSET = -1.00/{sub(/-1.00/, "-1.06")} 1' ~/linuxcnc/configs/router/router.ini
