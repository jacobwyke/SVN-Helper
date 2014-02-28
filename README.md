#SVN Helper#

##TL;DR##
Set of bash aliases to make working with SVN easier and faster.

##Installing##
- Download the SVN Helper folder to your disk.
- Add a link to the svn-helper.rc file to your .bash_profile, .bashrc or .zshrc file.

	`. ~/SVN-Helper/svn-helper.rc`
	
- Restart your shell.

There are example files in the */example/* folder.

##Usage##

###svnhelp###
Display a list of available commands from SVN Helper.

	svnhelp

###svnbranch###
Create a new branch and switch to it.

	svnbranch branch_name "Commit Message"
	
	svnbranch social-features "Creating a branch for the new social features"

###svnrelease###
Creates a release branch. This is a branch within the */releases/* directory.

	svnrelease release_name
	
	svnrelease 2.0a
	
###svnupdatebranch###
Update a branch from the trunk.

	svnupdatebranch
	
###svndeletebranch###
Deletes a branch.

	svndeletebranch branch_name
	
	svndeletebranch social-features
	
###svndeleterelease###
Deletes a release branch.

	svndeleterelease release_name
	
	svndeleterelease 2.0a
	
###svnswitch###
Switches to another branch. Full branch path required.

	svnswitch branch/path
	
	svnswitch trunk
	svnswitch branches/social-features
	svnswitch releases/2.0a
	
###svnswitchbranch###
Switches to a specific branch without adding the *'branches'* full path.

	svnswitchbranch branch_name
	
	svnswitchbranch social-features

###svnswitchrelease###
Switches to a specific release without adding the *'releases'* full path.

	svnswitchrelease release_name
	
	svnswitchrelease 2.0a
	
###svnswitchtrunk###
Switched to the trunk.

	svnswitchtrunk
	
###svnmerge###
Merges a branch back into the trunk. You should be in the trunk when running this.

	svnmerge branch_name
	
###svninfo###
Displays the svn info.

	svninfo

##Example Workflow##
Create a new branch to work in:

	svnbranch social-features "New branch for the social features"
	
Begin to code your new features. A new bug is found in production code so you need to jump back to fix it:

	svnswitchtrunk

Create a new release with the bug fix:

	svnrelease 2.0.1
	
Jump back to the new features we were working on:

	svnswitchbranch social-features
	
Merge the bug fix from the trunk into our branch:

	svnupdatebranch

Jump back to teh trunk to merge our completed branch back into it:

	svnswitchtrunk
	
	svnmerge social-features

Create a release for our new feature:

	svnrelease 3.0

##Thanks##
Forked originally from https://github.com/grexi/snippets - Gregor Dorfbauer - gd@usersnap.com
