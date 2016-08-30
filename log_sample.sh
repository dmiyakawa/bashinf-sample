#!/usr/local/bin/bash
#
# See also bash-oo-framework/your-script.sh
#

# http://stackoverflow.com/questions/16548528
ns1=$(date +%s%N)

## BOOTSTRAP ##
source "$( cd "${BASH_SOURCE[0]%/*}" && pwd )/bash-oo-framework/lib/oo-bootstrap.sh"

ns2=$(date +%s%N)

## MAIN ##
import util/log
# import util/log util/exception util/tryCatch util/namedParameters util/class

ns3=$(date +%s%N)

# begin: bash-oo-frameworkのREADME.mdそのまんま

# using colors:
echo "$(UI.Color.Blue)I'm blue...$(UI.Color.Default)"

# enable basic logging for this file by declaring a namespace
namespace myApp
# make the Log method direct everything in the namespace 'myApp' to the log handler called DEBUG
Log::AddOutput myApp DEBUG

# now we can write with the DEBUG output set
Log "Play me some Jazz, will ya? $(UI.Powerline.Saxophone)"

# redirect error messages to STDERR
Log::AddOutput error STDERR
subject=error Log "Something bad happened."

# reset outputs
Log::ResetAllOutputsAndFilters

# You may also hardcode the use for the StdErr output directly:
Console::WriteStdErr "This will be printed to STDERR, no matter what."

# end: bash-oo-frameworkのREADME.mdそのまんま

ns4=$(date +%s%N)

echo 'step1〜step2: ' $((($ns2 - $ns1)/1000000)) 'ms'
echo 'step2〜step3: ' $((($ns3 - $ns2)/1000000)) 'ms'
echo 'step3〜step4: ' $((($ns4 - $ns3)/1000000)) 'ms'
