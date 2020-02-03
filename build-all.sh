set -e
function build() {
 pushd .
 echo "Building $1"
 cd $1 && ./build.sh
 popd
}
#build cmad
build mongo
build mysql
