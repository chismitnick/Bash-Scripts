#Bash script to backup a user's home directory to /tmp/.
#chismitnick@github Sep 2020    
function backup {
    #assign the output of whoami command to the variable 'user'
    if  [ -z $1 ]; then
    	user=$(whoami)
    else 
    	if [ ! -d "/home/$1" ]; then
    		echo "Requested $1 user home directory is unavailable/doesnt exist."
    		exit 1
    	fi
    	user=$1
    fi 
    
    input=/home/$user
    output=/tmp/${user}_home_$(date +%Y-%m-%d_%H%M%S).tar.gz
    
    function total_files {
    	find $1 -type f | wc -l
    }
    
    function total_directories {
    	find $1 -type d | wc -l
    }
    
    function total_archived_directories {
    	tar -tzf $1 | grep  /$ | wc -l
    }
    
    function total_archived_files {
    	tar -tzf $1 | grep -v /$ | wc -l
    }
    
    tar -czf $output $input 2> /dev/null
    
    src_files=$( total_files $input )
    src_directories=$( total_directories $input )
    
    arch_files=$( total_archived_files $output )
    arch_directories=$( total_archived_directories $output )
    
    echo "########## $user ##########"
    echo "Files to be included in backup: $src_files"
    echo "Directories to be included in backup: $src_directories"
    echo "Files archived in backup: $arch_files"
    echo "Directories archived in backup: $arch_directories"
    
    if [ $src_files -eq $arch_files ]; then
    	echo "Backup of $input completed!"
    	echo "Backup operqtion details:"
    	ls -l $output
    else
    	echo "Backup of $input failed!"
    fi
}
    
for directory in $*; do
    backup $directory 
done;