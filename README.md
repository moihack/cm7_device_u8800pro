NOTE: I AM NOT RESPONSIBLE FOR ANYTHING HAPPENING TO YOUR DEVICE AFTER USING THIS DEVICE CONFIGURATION 

After building CyanogenMod 7 using this device tree, the output .zip is still not in flashable format!!! 

Proceed with caution!

1) unzip the output .zip file 

2) delete the recovery folder in there

3) open updater-script (with notepad++ preferably)

4) delete the following lines:
    
    assert(getprop("ro.product.device") == "u8800pro" || getprop("ro.build.product") == "u8800pro" || getprop("ro.product.board") == "u8800pro");
    
    package_extract_dir("recovery", "/system");
    
    package_extract_file("boot.img", "/dev/block/mmcblk0p1");
    
Make sure to delete especially the last one since leaving it there will copy the boot.img to wrong location erasing your phone's image folder (pink screen -> blue screen)
 
5) add the following lines at the end of the updater-script:

     mount("vfat", "EMMC", "/dev/block/mmcblk0p1", "/cust");
     package_extract_file("boot.img", "/cust/image/boot.img");
     unmount("/cust");
    
This should copy the boot.img to your phone's image folder correctly

-----------------------------------------------------------------------
Optional Steps:
 
If you want to use ext4 filesystem open updater-script and replace the lines containing ext3 with ext4

But CAREFUL! After doing this you have to replace the update-binary as well with the one provided in the device tree (it is inside the tools folder)
Otherwise .zip will not be flashable!!!

-----------------------------------------------------------------------

Obviously, re-zip META-INF & system folders and boot.img back to a new .zip file.
