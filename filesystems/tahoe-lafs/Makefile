# $NetBSD: Makefile,v 1.8 2011/09/14 11:36:17 gdt Exp $
#

VERSION=	1.8.3
DISTNAME=	allmydata-tahoe-${VERSION}
EGG_NAME=	allmydata_tahoe-${VERSION}
PKGNAME=	tahoe-lafs-${VERSION}
PKGREVISION=	1
CATEGORIES=	filesystems
MASTER_SITES=	http://tahoe-lafs.org/source/tahoe-lafs/releases/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	gdt@NetBSD.org
HOMEPAGE=	http://tahoe-lafs.org/
COMMENT=	Distributed fault-tolerant least-authority filesystem
LICENSE=	gnu-gpl-v2

USE_TOOLS=	gmake

PKG_DESTDIR_SUPPORT=	user-destdir

TEST_TARGET=	test

# TODO
# fix nevow: doc location

DEPENDS+=	${PYPKGPREFIX}-zfec-[0-9]*:../../converters/py-zfec
DEPENDS+=	${PYPKGPREFIX}-zbase32-[0-9]*:../../converters/py-zbase32
DEPENDS+=	${PYPKGPREFIX}-simplejson-[0-9]*:../../converters/py-simplejson
DEPENDS+=	${PYPKGPREFIX}-sqlite2-[0-9]*:../../databases/py-sqlite2
DEPENDS+=	${PYPKGPREFIX}-argparse-[0-9]*:../../devel/py-argparse
# Included egg darcsver, but depend anyway.
DEPENDS+=	${PYPKGPREFIX}-darcsver-[0-9]*:../../devel/py-darcsver
DEPENDS+=	${PYPKGPREFIX}-pyutil-[0-9]*:../../devel/py-pyutil
DEPENDS+=	${PYPKGPREFIX}-mock-[0-9]*:../../devel/py-mock
# Included egg setuptools_trial, not used.
# Included egg setuptools_darcs, used (no package yet).
DEPENDS+=	${PYPKGPREFIX}-foolscap-[0-9]*:../../net/py-foolscap
DEPENDS+=	${PYPKGPREFIX}-twisted-[0-9]*:../../net/py-twisted
DEPENDS+=	${PYPKGPREFIX}-asn1-[0-9]*:../../security/py-asn1
DEPENDS+=	${PYPKGPREFIX}-crypto-[0-9]*:../../security/py-crypto
DEPENDS+=	${PYPKGPREFIX}-cryptopp-[0-9]*:../../security/py-cryptopp
DEPENDS+=	${PYPKGPREFIX}-OpenSSL-[0-9]*:../../security/py-OpenSSL
DEPENDS+=	${PYPKGPREFIX}-nevow-[0-9]*:../../www/py-nevow

# Distfile has files mode 600, which leads to root-owned 600 files in
# the binary package.
#post-extract:
#	${ECHO} "Fixing distfile contents to be world readable:"
#	chmod -R +r ${WRKSRC}

REPLACE_PYTHON+= src/allmydata/reliability.py
REPLACE_PYTHON+= src/allmydata/storage/shares.py

PKG_GROUPS=	tahoes
PKG_USERS=	tahoes:tahoes::tahoe\ server

.include "../../lang/python/application.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
