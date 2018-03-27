#!/sbin/sh
#########
#
# survival scripts for Efpophis' ugly hacks
#
#########

. /tmp/backuptool.functions

EFHACKSDIR=/data/Efpophis/hacks

ef_backup()
{
    mount /data 2>/dev/null
    mount /system 2>/dev/null
    
    if [ ! -d $EFHACKSDIR ]; then
        mkdir -p $EFHACKSDIR
    fi

    if [ -f /system/etc/sysrw ]; then    
        # back that stuff up
        cp /system/etc/hosts $EFHACKSDIR
        cp /system/bin/sysrw $EFHACKSDIR
        cp /system/bin/sysro $EFHACKSDIR
        cp /system/etc/security/cacerts/216c0a6b.0 $EFHACKSDIR
    else
        echo "Nothing to back up?"
        exit 1
    fi
}

ef_restore()
{
    mount /data 2>/dev/null
    mount -o rw,remount /system 2>/dev/null
    
    if [ ! -d $EFHACKSDIR ]; then
        echo "! Cannot find Efpohis Hacks stuff!"
        exit 1
    fi
    
    # restore that stuff
    cp $EFHACKSDIR/hosts /system/etc
    chmod 644 /system/etc/hosts
    
    cp $EFHACKSDIR/sysr* /system/bin
    chmod 755 /system/bin/sysr*
    
    cp $EFHACKSDIR/216c0a6b.0 /system/etc/security/cacerts
    chmod 644 /system/etc/security/cacerts/216c0a6b.0   
}

case "$1" in
  backup)
    ef_backup
  ;;
  restore)
    ef_restore
  ;;  
  pre-backup)
    # Stub
  ;;
  post-backup)
    # Stub
  ;;
  pre-restore)
    # Stub
  ;;
  post-restore)
    # Stub
  ;;
esac

