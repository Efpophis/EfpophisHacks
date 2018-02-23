EfpophisHacks
=============

The source for my own flashable ZIP that I use after every ROM flash.

Here's what's here:

* `/system/`
   * `bin/` - sysrw and sysro scripts that remount /system as read/write and read-only.
* `/etc/`
   * `security/` - contains the root CA file for the [efpophis.net](https://www.efpophis.net) domain. Allows your browser and stuff to trust web sites that I sign for SSL.
* `META-INF/` - contains updater script that installs all this.


Here's what you get by flashing this:

* `sysro` and `sysrw` scripts so you don't have to remember that goofy `mount -o rw,remount` syntax. These also make sure they use a version of `mount` that is actually capable of doing the operation. This was a problem for me on some ROM/Kernel combinations.

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

To install:

```sh
git clone (this repository's url)
git archive -o efpophis_hacks.zip
Flash in TWRP (other recoveries are probably ok, too, but I haven't used them in a long time).
Enjoy!
```
