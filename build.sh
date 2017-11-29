#!/bin/bash
set -e

export PING_SLEEP=30s
export WORKDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export BUILD_OUTPUT=$WORKDIR/build.out
export BUILD_OUTPUT_TMP=$WORKDIR/build.tmp

touch $BUILD_OUTPUT

dump_output() {
   echo Tailing the last 500 lines of output:
   tail -500 $BUILD_OUTPUT
}
error_handler() {
  echo ERROR: An error was encountered with the build.
  dump_output
  exit 1
}
trap 'error_handler' ERR

bash -c "while true; do echo ...; sleep $PING_SLEEP; done" &
PING_LOOP_PID=$!

echo Running Create Apps
./create-apps.sh >> $BUILD_OUTPUT 2>&1

echo Building Apps
cd ./apps
for f in */; do
    if [ -d ${f} ]; then
        
        echo "---------------------------------------------"
        echo "$f - Building"

        cd "$f/www"

        echo "$f - yarn"
        yarn >> $BUILD_OUTPUT 2>&1
        echo "$f - gulp build"
        gulp build >> $BUILD_OUTPUT 2>&1
        echo "$f - gulp unit"
        gulp unit >> $BUILD_OUTPUT 2>&1
        echo "$f - gulp e2e-install"
        gulp e2e-install --drivers=chrome >> $BUILD_OUTPUT 2>&1
        echo "$f - gulp e2e"
        gulp e2e >> $BUILD_OUTPUT 2>&1
        echo "$f - gulp build --buildConfiguration=prod"
        gulp build --buildConfiguration=prod >> $BUILD_OUTPUT 2>&1
        echo "$f - gulp e2e"
        gulp e2e >> $BUILD_OUTPUT 2>&1
        echo "$f - gulp doc-build"
        gulp doc-build >> $BUILD_OUTPUT 2>&1
        cd ../../

        echo "$f - Removing"
        rm -rf "$f"
    fi
done

dump_output

kill $PING_LOOP_PID