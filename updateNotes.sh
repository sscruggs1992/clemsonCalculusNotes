# /home/peter/Desktop/uDrive/sp20/notes
NOTE_DIR=/home/peter/Documents/notes
U_DIR=/home/peter/Desktop/uDrive/Desktop/Stuff/math2060

if [ ! -d $U_DIR ]; then
  # First check if target dir is mounted
  /home/peter/.scripts/mountUdrive.sh
fi

confirm(){
    # call with a prompt string or use a default
    read -r -p "${1:-Are you sure? [y/N]} " response
    case $response in
        [yY][eE][sS]|[yY]) 
            true
            ;;
        *)
            if [[ $response != n && $* == *-y* ]]; then
              true
            else 
              false
            fi
            ;;
    esac
}

for file in $NOTE_DIR/math2060_NoteKeys/*; do
    # If remote file exists
    if [ -f "$U_DIR/$(basename -- $file)" ]; then
	# if (differ between src and dest) && (src older than dest)
	# warn user
        # diff $file $U_DIR/$(basename -- $file)
	if [[ "$file" -ot $U_DIR/$(basename -- $file) ]] &&
	    ! cmp -s $file $U_DIR/$(basename -- $file); then
	    echo "  src older than dest: $(basename -- $file)";
	    ls -l $file $U_DIR/$(basename -- $file);
	    echo ""
	fi
    # else tell user that new file is being created
    else
	echo "--> Creating $(basename -- $file) on u-drive"
    fi
done
confirm "Copy note directory? (def Y)" -y &&
    echo "--> Copying note dir" && 
    sudo cp $NOTE_DIR/math2060_NoteKeys/* $U_DIR/;
echo "--> Copying calendar"
sudo cp /home/peter/Dropbox/Grad_School/Clemson/teaching/math2060/sp21/misc/math2060_006_sp21Calendar.pdf $U_DIR/
# Display any differences between files
for file in $NOTE_DIR/math2060_NoteKeys/*;
  do diff $file $U_DIR/$(basename -- $file);
done
echo "Done!"
