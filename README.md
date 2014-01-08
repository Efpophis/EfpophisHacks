EfpophisHacks
=============

The source for my own flashable ZIP that I use after every ROM flash.

Here's what's here:

* `data/`
  * `local/` - contains necessary stuff to play a short sound on boot. This depends on the `90userinit` script found under `system/etc/init.d`
* `system/`
  * `app/` - contains ApexLauncher.apk because I like it.
  * `bin/` - contains `sysrw` and `sysro` scripts. They mount `/system` as read+write and read-only, respectively.
  * `media/` - contains a file with a silent `camera_click.ogg` so the camera is quiet.
  * `etc/`
    * `init.d.config` - configuration file for most scripts found in `init.d`
    * `init.d/` - contains various init.d scripts I've kanged and modified
    * `security/` - contains the root CA file for the [efpophis.net](https://www.efpophis.net) domain. Allows your browser and stuff to trust web sites that I sign for SSL.
* `META-INF/` - contains updater script that installs all this and gets rid of some stuff I don't like.


Here's what you get by flashing this:

* bootup sounds - plays 16 bit PWM wav file located under /data/local/audio/bootup.wav on boot.
* shutdown sound - my favorite shutdown sound. You can use the app E-Robot to configure it to play on shutdown.
* ApexLauncher added to your choice of launchers.
* sysro and sysrw scripts so you don't have to remember that goofy `mount -o rw,remount` syntax. These also make sure they use a version of `mount` that is actually capable of doing the operation. This was a problem for me on some ROM/Kernel combinations.
* Silent camera shutter.
* Init.d scripts that always run:
  * 000fixadb - sets up some properties and sets SELinux to Permissive mode.
* Configurable init.d scripts - edit /system/etc/init.d.config to turn options on and off.
  * re-calibrate the proximity sensor - default: ON
  * CPU and Governor tweaks, credit willl03 (some may or may not work, depending on kernel) - default: OFF
  * SD Read-ahead optimization, credit willl03 - default: ON, 2048
  * zipalign all APKs on boot - default: OFF
  * network buffer size tweaks - default: OFF
  * remount some ext4 partitions with better options - default: OFF
  * re-index and vacuum sqlite 3 databases - default: OFF
* The following APKs are deleted from /system/app, if they exist there in the first place:
  * Email2.apk
  * Email.apk
  * Gmail2.apk (I use K9mail instead of all these)
  * Exchange2.apk
  * Nova.apk (remember how I like apex?)
  * Calculator.apk (I use realcalc+ instead - it's got scientific stuff)
  * Trebuchet.apk (another launcher I don't use)

Credits:

The following developers have made some contributions to this that I either blatantly kanged or used for inspiration. They are all pretty awesome and deserve their props.
  * Adrenylyn
  * willl03
  * DerTeufel1980
  * jt1134
  * The guys over at Beanstalk
  * CyanogenMod team
  * AOKP team
  * Koush
  * Steve Spear
  * Temasek
  * TKGlitch
  * Anyone else I've forgotten - hit me up and I'll add you if you feel I've kanged your stuff without proper credit.

License / Copying / Kanging:

Do whatever the f*ck you want. I kanged most of this stuff and modified it to suit my needs, anyway, so why should I say someone else can't do the same?  I don't care if you give me credit, but it would be good if you gave the devs who I've kanged from some credit.

Above all, I hope this proves useful to you.
