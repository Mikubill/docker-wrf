#!/bin/sh

# Install PGI Community Edition on Travis
# https://github.com/nemequ/pgi-travis

TEMPORARY_FILES="/tmp"

export PGI_SILENT=true
export PGI_ACCEPT_EULA=accept
export PGI_INSTALL_DIR="/opt/pgi"
export PGI_INSTALL_NVIDIA=false
export PGI_INSTALL_AMD=false
export PGI_INSTALL_JAVA=true
export PGI_INSTALL_MPI=true
export PGI_MPI_GPU_SUPPORT=false
export PGI_INSTALL_MANAGED=true

VERBOSE=true

while [ $# != 0 ]; do
    case "$1" in
	"--dest")
	    export PGI_INSTALL_DIR="$(realpath "$2")"; shift
	    ;;
	"--tmpdir")
	    TEMPORARY_FILES="$2"; shift
	    ;;
	"--nvidia")
	    export PGI_INSTALL_NVIDIA=true
	    ;;
	"--amd")
	    export PGI_INSTALL_AMD=true
	    ;;
	"--java")
	    export PGI_INSTALL_JAVA=true
	    ;;
	"--mpi")
	    export PGI_INSTALL_MPI=true
	    ;;
	"--mpi-gpu")
	    export PGI_INSTALL_MPI_GPU=true
	    ;;
	"--managed")
	    export PGI_INSTALL_MANAGED=true
	    ;;
	"--verbose")
	    VERBOSE=true;
	    ;;
	*)
	    echo "Unrecognized argument '$1'"
	    exit 1
	    ;;
    esac
    shift
done

if [ ! -e "${TEMPORARY_FILES}" ]; then
    mkdir -p "${TEMPORARY_FILES}"
fi
cd "${TEMPORARY_FILES}"

PGI_URL="https://www.pgroup.com/support/downloader.php?file=pgi-community-linux-x64"

curl --location \
     --referer "http://www.pgroup.com/products/community.htm" \
     "${PGI_URL}" | tar zxf -

if [ x"${VERBOSE}" = "xtrue" ]; then
    VERBOSE_SHORT="-v"
    VERBOSE_V="v"
fi

cd "${TEMPORARY_FILES}"/install_components && ./install

PGI_VERSION=$(basename "${PGI_INSTALL_DIR}"/linux86-64/*.*/)

INSTALL_BINDIR="${HOME}/bin"
if [ ! -e "${INSTALL_BINDIR}" ]; then
    mkdir -p "${INSTALL_BINDIR}"
fi

for file in "${PGI_INSTALL_DIR}"/linux86-64/"${PGI_VERSION}"/bin/*; do
    dest="${INSTALL_BINDIR}/$(basename "${file}")"
    if [ -x "${file}" ]; then
	echo "#!/bin/sh" > "${dest}"
	echo "PGI=${PGI_INSTALL_DIR} PGI_INSTALL=\"\${PGI}\"/linux86-64/${PGI_VERSION} ${file} \$@" >> "${dest}"
	chmod 0755 "${dest}"
    fi
done
