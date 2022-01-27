# Github user switching script for windows powershell
> This script is swiching users via changing
> git's global config and window certificate manager entry.



## Running instructions
- Fill out the user account credentials information in the "switch" script file.
- Run the script to change user accouts.



## Optional: 
>Create a global Alias for running from anywhere inside PowerShell.
- Open powershell profile
  - using powershell enter: notepad $PROFILE
  - if none exists, run the following from the PowerShell:
    > if (!(Test-Path -Path $PROFILE)) { 
    New-Item -ItemType File -Path $PROFILE -Force
} <br>
  [Source - Microsoft Powershell docs.](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_profiles?view=powershell-7.2)
- Add the contant of proflie.ps1 to your profile script.
      >Make sure to fill the path & alias placeholders.
- Use your newly created Alias in PowerShell to switch acounts.



    

    
