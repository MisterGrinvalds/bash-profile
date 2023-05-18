## Setup container run time for colima without proxies
colima-no-proxy()
{
	VCPUS=4
	GB_RAM=8
	STORAGE=20
  	COLIMA_SOCK="$COLIMA_SOCK"
	COLIMA_HOST="$COLIMA_HOST"

	while getopts 'u:t:x' flag
	do
		case "${flag}" in
			c) VCPUS="${OPTARG}";;
			m) GB_RAM="${OPTARG}";;
			d) STORAGE="${OPTARG}";;
			s) COLIMA_SOCK="${OPTARG}";; 
			h) COLIMA_HOST="${OPTARG}";; 
		esac
	done

	colima stop
	set-proxy
	rmenv
	set-docker-host $COLIMA_HOST $COLIMA_SOCK
	colima start --cpu $VCPUS --memory $GB_RAM --disk $STORAGE
}
