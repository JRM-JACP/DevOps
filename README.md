# DevOps

To create a public key for GitHub let's use ***ssh_key_gen.sh***

Usage: `bash ./ssh_key_gen.sh -k key_file_name -c email_address -f file_path -p passphrase`

	-k The key file name that is going to be generated
	-c Email address that is going to be added as a comment but it is a GitHub requirement
	-f generated key location
	-p passphrase

Example:

`bash ./ssh_key_gen.sh -k myKeyFileName -c test@test.com -f "~/.ssh" -p myPass`

To clone all repositories from the organization let's use

`$bash ./git_clone_all_reps.sh`
