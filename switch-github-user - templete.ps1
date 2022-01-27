# set work account credentials 
$work_account_username=''
$work_account_email=''
$work_token=''

# set private account credentials
$private_account_username=''
$private_account_email=''
$private_token=''

# credential manager target
$win_credential_entry="git:https://github.com"

Function switchAccount{
Param ($username, $email, $token)
    git config --global user.name $username
    git config --global user.email $email    
    cmdkey /delete:LegacyGeneric:target=$win_credential_entry
    cmdkey /generic:$win_credential_entry /user:$username /pass:$token
}

# match by global git config's user.email
if (git config --list | Select-String -Pattern $work_account_email -CaseSensitive -SimpleMatch){
    # switching to private account
    switchAccount $private_account_username $private_account_email $private_token
} elseif (git config --list | Select-String -Pattern $private_account_email -CaseSensitive -SimpleMatch){
    # switching to work account
    switchAccount $work_account_username $work_account_email $work_token
} else {
    echo "switch-github-user.ps1`n`nerror: could not match current git user.`n"
    pause
    Exit 1
}

echo "switch-github-user.ps1`n`nswitched to account:"
cmdkey /list:git:https://github.com | Select-String -Pattern "User:" 
echo ""
pause