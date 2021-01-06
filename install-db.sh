#!/bin/bash
set -e

dos2unix /sqls/*.sql

for fileName in `ls -1 /sqls/*.sql`
do
	if [[ $fileName == /sqls/00* ]]
	then
		echo "Processing with postgres db : $fileName"
		psql -v ON_ERROR_STOP=ON -d postgres -f $fileName -U postgres
	else
		echo "Processing with conference db : $fileName"
		psql -v ON_ERROR_STOP=ON -d conference_app -f $fileName -U appuser
	fi

done
