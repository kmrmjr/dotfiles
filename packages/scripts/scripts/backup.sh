#! bin/sh

arg="$1"

function backup() {
    prefix=`date "+%Y-%m-%d"`
    backupto=${prefix}_${arg}
    cp -r ${arg} ${backupto}
    echo backup ${arg} to ${backupto}
}

backup
