## Remove all environment variables matching pattern
rmenv()
{
	unset `env | grep "$1" | egrep -o '^[^=]+'`
}

