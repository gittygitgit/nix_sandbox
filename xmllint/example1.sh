#!/usr/local/bin/bash
# Load xml into memory and output output about it
xmllint --debug sample.xml

# Parse xml, then output in formatted / indented format
xmllint --format sample.xml


# Parse xml, then open an interactive shell for working with the xml
xmllint --shell sample.xml

<<==============
shell lets you navigate the loaded xml doc 
==============
# show current location in xml tree
# pwd

# display value of attribute
# ls /FIXML/Batch/TrdCaptRpt[1]/Instrmt/@Sym

# navigate to node
# cd /FIXML/Batch/TrdCaptRpt[1]/Instrmt/

# Print verions of libxml used
xmllint --version 
 libxml used

# Match a pattern in a loaded document
xmllint --pattern /FIXML/Batch/TrdCaptRpt/Instrmt --walker sample.xml
Node /FIXML/Batch/TrdCaptRpt/Instrmt matches pattern /FIXML/Batch/TrdCaptRpt/Instrmt

# Parse doc using sax parser, grep for events of interest...
xmllint   --pattern /FIXML/Batch/TrdCaptRpt/Instrmt --sax sample.xml|grep Instrmt|cut -c51-61

 
