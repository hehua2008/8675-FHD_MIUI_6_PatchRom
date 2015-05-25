#/bin/bash

PWD=`pwd`
METADATA_DIR=$PWD/metadata
OUT_DIR=$PWD/out
TARGET_FILES_DIR=$OUT_DIR/target_files

if [ -e $METADATA_DIR/updater ]; then
echo "^$^ Use custom updater bin file"
   cp $METADATA_DIR/updater $TARGET_FILES_DIR/OTA/bin/
else
   echo "^$^ Warning: custom updater bin file missing, skipping"
fi

echo "^$^ Copy Radio Files"
rm -r out/target_files/RADIO/
cp -r other/radio/ out/target_files/RADIO/
