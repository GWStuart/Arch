# Basic Installation
All of this has been tested on a virtual machine that boots into BIOS. When installing I would probably want to boot with UEFI so this may change a couple things. Will just need to figure that out later.

steps
- Check internet connection (of using wifi then goodluck)
- Partition the disks
- Format partitions
- Mount the filesystems
- Choose best mirrors (not really necessary but maybe check it out)
- Install base packages
- Configure the system
- Reboot

## Disk partitioning
First identify the disk to be paritioned using `lsblk`

For a UEFI system you need use GTP whereas for an older BIOS partition you need to use MBR.

I prefer the following partitioning scheme:
- root
- boot
- swap
- home
read https://wiki.archlinux.org/title/Partitioning#Example_layouts for more on partitioning layouts
Maybe consider making a /var partition

## Disk formatting
Next you want to format the partitions
Part of this process includes choosing a file system. Different partitions can have different file systems.

Good choices for file systems include:
- ext4 (mkfs.ext4)
- btrfs
- zfs
- swap (mkswap)
Checkout later which to use.

## Package installation
Install basic packages with the command,
`pacstrap -K /mnt base linux linux-firmware vim networkmanager grub`

Note that you could try a different kernel if you want for example:
- linux-hardened
- linux-zen
- linux-rt

There are alternatives to network manager but not sure if it is worth trying them.
There are also alternative boot loaders which I think might be worth trying

## Configuring the system
Not all of these steps are strictly necessary but they should be done if you are properly installing an arch system.
- generate the file system tab (`genfstab -U /mnt >> /mnt/etc/fstab`)
- change root into the new system (`arch-chroot /mnt`)
- set the time (time zone + syncronise hardware clock)
    - check this out in more detail
- set the locales
- configure your network manager
- set the root password (`passwd`)
- setup bootloader

# Post-Installation
You should have now been able to reboot and login to the system as root using the password you have set. Also check that your network manager is working and that you are connected to the inernet.

Several things should be done post installation
- setup startup configurations (fonts + other configs)
- setup users and groups

## Startup configurations
Install a font. Pretty sure it needs to be bitmap for the tty
Set persistent changes in the file `/etc/vconsole.conf`
For example set the `FONT`

For more info https://wiki.archlinux.org/title/Linux_console
idk why the file is "vconsole" maybe see if the link above explains

Set environment variables
- print environment variables with `printenv`
I think it's best to set these later for your user account. You shouldn't log into root anyway.

## Users and groups
Create the user using `useradd will -m -G wheel`
The wheel group is for sudo access. Maybe look into groups more later
Also set a password for your user `passwd will`

Next setup sudo:
- install `sudo` package. Note that there are alternative such as the `doas` package
- edit /etc/sudoers and uncomment `# %wheel ALL=(ALL) ALL` do this with the `visudo` command
    export `vim` as the editor since by default it looks for `vi`
 
# Additional stuff
List of installed packages
- base, linux, linux-firmware, vim, networkmanager, grub
- sudo, less, terminus-font
- neofetch
Can find all installed packages with pacman -Qe

Things to look into:
- pacman (usage + advanced tips + caching + repos + mirrors)
- GUI
-

# Configurations for laptop
If installing a system on a laptop then see this section for additional configuratinos.
This closely follows the archlinux wiki's laptop page.


