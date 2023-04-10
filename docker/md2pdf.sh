#!/bin/bash
export LANG=ja_JP.UTF-8
yarn upgrade md-to-pdf
for file in $@;do
    suf=`echo $file | sed 's/^.*\.\([^\.]*\)$/\1/'`
    if [ $suf = 'md' ] ; then
        outfile=`echo $file | sed 's/\//_/g' |sed 's/\.md$/\.pdf/i'`
        cat $file | npx md-to-pdf --launch-options '{"args": ["--no-sandbox"]}' --md-file-encoding utf-8 > $outfile
    fi
done
tar cvfz docs.tgz `find . -name '*.pdf'`
