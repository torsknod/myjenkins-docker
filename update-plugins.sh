#!/bin/sh
curl -SL "$1/pluginManager/api/xml?depth=1&xpath=/*/*/shortName|/*/*/version&wrapper=plugins" | perl -pe 's/.*?<shortName>([\w-]+).*?<version>([^<]+)()(<\/\w+>)+/\1 \2\n/g'|sed 's/ /:/'|recode -f ibmpc..latin1 && cat plugins.txt) | cut -d: -f1 | sort -u >plugins.txt.new && mv plugins.txt.new plugins.txt
