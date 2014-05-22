PKGNAME="matlab-prettifier"
if [ -f ${PKGNAME}.tar.gz ]; then
    rm ${PKGNAME}.tar.gz
fi
make
make clean
ctanify ${PKGNAME}.ins ${PKGNAME}.pdf README makefile
