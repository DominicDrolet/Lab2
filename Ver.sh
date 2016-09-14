if [ "$1" != "" ]; then
if [ -f "$1" ]; then
    echo "This is a regular file"
else
    echo "No, that's not a file"
fi
else
    echo "Nothing there"
fi
