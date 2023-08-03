# DevOps

To create a public key for GitHub let's use ***ssh_key_gen.sh***<br>
Usage: `bash ./ssh_key_gen.sh -k key_file_name -c email_address -f file_path -p passphrase`

	-k The key file name that is going to be generated
	-c Email address that is going to be added as a comment but it is a GitHub requirement
	-f generated key location
	-p passphrase

Example:<br>
`bash ./ssh_key_gen.sh -k myKeyFileName -c test@test.com -f "~/.ssh" -p myPass`
<br>
<br>
To clone all repositories from the organization let's use<br>
`$bash ./git_clone_all_reps.sh`
<br>
<br>
**Kafka.yml** runs 3 docker containers:
1. ***zookeeper*** Internal port 2181
2. ***kafka*** Internal port 9092
3. ***akhq*** External port 9090
<br>
<br>
and temporarily ***init-kafka*** container to fill out 2 topics:
- jacp-competition-solutions
- jacp-competition-results
<br>

