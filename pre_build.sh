#==================================================================
# This script runs some basic checks to make sure the release has
# a valid release version number prior to starting build_vivado
#==================================================================


#==================================================================
# This function locates "revision_history.vh" and parses it to
# produce a string that looks like "^<major>\.<minor>\."
#
# The string this produces is a regular expression, intended to
# be fed to grep
#==================================================================
get_regex_revision_history_vh()
{
    # Find the revision file
    filename=$(find . | grep revision_history.vh)
    if [ -z $filename ]; then
        echo "revision_history.vh not found beneath $PWD" 1>&2
        return 1
    fi

    # Fetch the three components
    major=$(grep VERSION_MAJOR $filename 2>/dev/null)
    minor=$(grep VERSION_MINOR $filename 2>/dev/null)

    # Extract the part of the line after the "="
    major="${major#*=}"
    minor="${minor#*=}"

    # Throw away semicolons, spaces, and tabs
    major=$(echo $major | sed 's/;//' | sed 's/ //' | sed 's/\t//')
    minor=$(echo $minor | sed 's/;//' | sed 's/ //' | sed 's/\t//')

    # Ensure that all three components exist
    if [ -z "$major" ] || [ -z "$minor" ]; then
        echo "Malformed $(realpath $filename)" 1>&2
        return 1
    fi

    # Display the revision string
    echo "^${major}\.${minor}\."
}
#==================================================================


#==================================================================
# Displays the most recent version number from a release history
#==================================================================
get_most_recent_version()
{
    local input_file=$1

    # If we don't find any version numbers, this is our response
    version="none"

    # We're going to read the input file one line at a time...
    while IFS= read line; do     

        # Strip leading spaces from the line
        line=$(echo $line | sed 's/^[ \t]*//');

        # Fetch the first token on the line
        token="${line%% *}"

        # Find out if the token is "<digits>.<digits>.<digits>"
        token=$(echo $token | grep -E "^[0-9]+\.[0-9]+\.[0-9]+$")

        # If we found a version number, store it
        test $? -eq 0 && version=$token

    done < $input_file

    # Display the last version number we found
    echo $version
}
#==================================================================

# Find out the name of our project
project=$(basename $PWD)

# Find the x.y version number of the RTL
rtl_version=$(get_regex_revision_history_vh)
test $? -ne 0 && exit 1

# Find the x.y.z version number of the release
release_version=$(get_most_recent_version release_history.txt)
if [ "$release_version" == "none" ]; then
    echo "No version found in $(real path release_history.txt)"
    exit 1
fi

# Does the x.y part of the release_version match that of rtl_version?
echo $release_version | grep -q "$rtl_version"

# Make sure that x.y of release_version corresponds to the rtl_version
if [ $? -ne 0 ]; then
    echo "Version numbering error!"
    echo "Release version $release_version does not match $rtl_version"
    exit 1
fi

# This is the folder where our release will be written to
release_folder=${VIVADO_BUILD_FOLDER}/${project}/releases/${release_version}

# If this release already exists, complain!
if [ -d $release_folder ]; then
    echo "Release $release_version of $project already exists!" 1>&2
    exit 1
fi 

# Our sanity checks have passed
exit 0





