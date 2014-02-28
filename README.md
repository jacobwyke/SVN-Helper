#SVN Helper#

##TL/DR##
Set of bash aliases to make working with SVN easier and faster.

##Installing##
- Download the SVN Helper folder to your disk.
- Add a link to the svn-helper.rc file to your .bash_profile, .bashrc or .zshrc file.
	
	. ~/SVN-Helper/svn-helper.rc
		
- Restart your shell.

There are example files in the /example/ folder.

##Usage##

###svnhelp###
Display a list of available commands from SVN Helper.

	svnhelp

###svnbranch###
Create a new branch and switch to it.

	svnbranch _branch_name_ _"Commit Message"_
	
###svnupdatebranch###

###svnrelease###

###svndeletebranch###

###svndeleterelease###

###svnswitch###

###svnswitchbranch###

###svnswitchrelease###

###svnmerge###

###svninfo###


##Thanks##
Forked originally from https://github.com/grexi/snippets - Gregor Dorfbauer - gd@usersnap.com
