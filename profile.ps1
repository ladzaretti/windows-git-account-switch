function switch_git_account {
	$pwd = (Get-Item .).FullName
    cd C:\misc\git-scripts\
    .\switch-github-user.ps1
	cd $pwd
}


Set-Alias git-switch switch_git_account