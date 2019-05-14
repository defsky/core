DATE=`date +%Y%m%d%H%M%S`
FPATH=migrations/"$DATE"_world.sql

touch "$FPATH"

if [ -e "$FPATH" ]; then
	echo -e "DROP PROCEDURE IF EXISTS add_migration;\ndelimiter ??\nCREATE PROCEDURE \`add_migration\`()\nBEGIN\nDECLARE v INT DEFAULT 1;\nSET v = (SELECT COUNT(*) FROM \`migrations\` WHERE \`id\`='$DATE');\nIF v=0 THEN\nINSERT INTO \`migrations\` VALUES ('$DATE');\n-- Start of migration.\n\n\n\n-- End of migration.\nEND IF;\nEND??\ndelimiter ; \nCALL add_migration();\nDROP PROCEDURE IF EXISTS add_migration;" > $FPATH

    echo $FPATH

    vim $FPATH
else 
	echo "FAILED to create file"
fi
