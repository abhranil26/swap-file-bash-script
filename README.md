# Linux Swap File Setup Script

This Bash script automates the process of creating and configuring a swap file on a Linux system for improved performance. Swapping is a technique used by the operating system to provide additional memory space when the physical RAM is insufficient.

Usage
1. Download the Script: You can download the script directly using the following command:
   
 ```wget https://raw.githubusercontent.com/abhranil26/swap-file-bash-script/main/create_swap.sh```

Alternatively, you can also use curl to download the script:

```curl -O https://raw.githubusercontent.com/abhranil26/swap-file-bash-script/main/create_swap.sh```

2. Make the Script Executable: Once the script is downloaded, make it executable using the following command:

```chmod +x create_swap.sh```

3. Run the Script: Execute the script with superuser privileges using sudo:
   
```sudo ./create_swap.sh```

# Or just use this one line command

```curl -fsSL https://raw.githubusercontent.com/abhranil26/swap-file-bash-script/main/create_swap.sh -o create_swap.sh && sudo sh ./create_swap.sh```

What does the Script Do?
1. The script uses fallocate to create a swap file. It will ask the user for the sie of the swap file, just enter the number like 2, 4 or 16.
2. It sets appropriate permissions for the created swap file using chmod.
3. The swap file is formatted for use using mkswap.
4. The swap file is activated using swapon.
5. An entry is added to /etc/fstab to enable the swap file on system startup.
6. The vm.swappiness value in /etc/sysctl.conf is adjusted to control swapping aggressiveness.
7. The script applies the changes made to sysctl.conf using sysctl -p.
8. Verification of successful swap creation and activation is done using swapon -s.






