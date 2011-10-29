# $NetBSD: phpversion.mk,v 1.15 2011/09/14 16:44:26 taca Exp $
#
# This file selects a PHP version, based on the user's preferences and
# the installed packages. It does not add a dependency on the PHP
# package.
#
# === User-settable variables ===
#
# PHP_VERSION_DEFAULT
#	The PHP version to choose when more than one is acceptable to
#	the package. '5' means any 5.*, 52 only 5.2.*, 53 only 5.3.*
#
#	Possible: 5 52 53
#	Default: 5
#
# === Package-settable variables ===
#
# PHP_VERSIONS_ACCEPTED
#	The PHP versions that are accepted by the package.
#
#	Possible: 5 52 53
#	Default: 5
#
# PHP_VERSION_REQD
#	If the package works only with a specific PHP version, this
#	variable can be used to force it.
#
#	Possible: (undefined) 5 52 53
#	Default: (undefined)
#
# === Variables defined by this file ===
#
# PKG_PHP_VERSION
#	The selected PHP version.
#
#	Possible: 5 53
#	Default: ${PHP_VERSION_DEFAULT}
#
# PKG_PHP_MAJOR_VERS
#	The selected PHP's major version.
#
#	Possible: 5
#	Default: 5
#
# PKG_PHP
#	The same as ${PKG_PHP_VERSION}, prefixed with "php-".
#
# PHPPKGSRCDIR
#	The directory of the PHP implementation, relative to the
#	package directory.
#
#	Example: ../../lang/php5
#
# PHP_PKG_PREFIX
#	The prefix that is prepended to the package name.
#
#	Example: php5, php53
#
# Keywords: php
#

.if !defined(PHPVERSION_MK)
PHPVERSION_MK=	defined

_VARGROUPS+=	php
_USER_VARS.php=	PHP_VERSION_DEFAULT
_PKG_VARS.php=	PHP_VERSIONS_ACCEPTED PHP_VERSION_REQD
_SYS_VARS.php=	PKG_PHP_VERSION PKG_PHP PHPPKGSRCDIR PHP_PKG_PREFIX \
		PKG_PHP_MAJOR_VERS

.include "../../mk/bsd.prefs.mk"

PHP_VERSION_DEFAULT?=		53
PHP_VERSIONS_ACCEPTED?=		5 53

# transform the list into individual variables
.for pv in ${PHP_VERSIONS_ACCEPTED}
_PHP_VERSION_${pv}_OK=	yes
.endfor

# most pkgsrc PHP5 extensions work on both PHP 5.2.* and 5.3.*; if marked
# as '5', accent any 5.*
.if defined(_PHP_VERSION_5_OK)
.  if !defined(_PHP_VERSION_53_OK)
_PHP_VERSION_53_OK=	yes
PHP_VERSIONS_ACCEPTED+= 53
.  endif
.  if !defined(_PHP_VERSION_52_OK)
_PHP_VERSION_52_OK=	yes
PHP_VERSIONS_ACCEPTED+= 52
.  endif
.endif

# check what is installed
.if exists(${LOCALBASE}/lib/php/20040412)
_PHP_VERSION_5_INSTALLED=	yes
_PHP_VERSION_52_INSTALLED=	yes
_PHP_INSTALLED=		yes
.endif
.if exists(${LOCALBASE}/lib/php/20090626) || exists(${LOCALBASE}/include/php/Zend/zend_gc.h)
_PHP_VERSION_53_INSTALLED=	yes
_PHP_INSTALLED=		yes
.endif

# if a version is explicitely required, take it
.if defined(PHP_VERSION_REQD)
_PHP_VERSION=	${PHP_VERSION_REQD}
.endif
# if the default is already installed, it is first choice
.if !defined(_PHP_VERSION)
.if defined(_PHP_VERSION_${PHP_VERSION_DEFAULT}_OK)
.if defined(_PHP_VERSION_${PHP_VERSION_DEFAULT}_INSTALLED)
_PHP_VERSION=	${PHP_VERSION_DEFAULT}
.endif
.endif
.endif
# prefer an already installed version, in order of "accepted"
.if !defined(_PHP_VERSION)
.for pv in ${PHP_VERSIONS_ACCEPTED}
.if defined(_PHP_VERSION_${pv}_INSTALLED)
_PHP_VERSION?=	${pv}
.else
# keep information as last resort - see below
_PHP_VERSION_FIRSTACCEPTED?=	${pv}
.endif
.endfor
.endif
# if the default is OK for the addon pkg, take this
.if !defined(_PHP_VERSION)
.if defined(_PHP_VERSION_${PHP_VERSION_DEFAULT}_OK)
_PHP_VERSION=	${PHP_VERSION_DEFAULT}
.endif
.endif
# take the first one accepted by the package
.if !defined(_PHP_VERSION)
_PHP_VERSION=	${_PHP_VERSION_FIRSTACCEPTED}
.endif

#
# Variable assignment for multi-PHP packages
MULTI+=	PHP_VERSION_REQD=${_PHP_VERSION}

# export some of internal variables
PKG_PHP_VERSION:=	${_PHP_VERSION:C/\.[0-9]//}
PKG_PHP:=		PHP${_PHP_VERSION:C/([0-9])([0-9])/\1.\2/}

# currently we have only PHP 5.x packages.
PKG_PHP_MAJOR_VERS:=	5

# if installed PHP isn't compatible with required PHP, bail out
.if defined(_PHP_INSTALLED) && !defined(_PHP_VERSION_${_PHP_VERSION}_INSTALLED)
PKG_SKIP_REASON+=	"Package accepts ${PKG_PHP}, but different version is installed"
.endif

MESSAGE_SUBST+=		PKG_PHP_VERSION=${PKG_PHP_VERSION} \
			PKG_PHP=${PKG_PHP}
PLIST_SUBST+=		PKG_PHP_VERSION=${PKG_PHP_VERSION} \
			PKG_PHP_MAJOR_VERS=${PKG_PHP_MAJOR_VERS}

# force the selected PHP version for recursive builds
PHP_VERSION_REQD:=	${PKG_PHP_VERSION}

#
# set variables for the version we decided to use:
#
.if ${_PHP_VERSION} == "5" || ${_PHP_VERSION} == "52"
PHPPKGSRCDIR=		../../lang/php5
PHP_PKG_PREFIX=		php5
.elif ${_PHP_VERSION} == "53"
PHPPKGSRCDIR=		../../lang/php53
PHP_PKG_PREFIX=		php53
.else
# force an error
PKG_SKIP_REASON+=	"${PKG_PHP} is not a valid package"
.endif

#
# check installed version aginst required:
#
.if defined(_PHP_VERSION_INSTALLED)
.if ${_PHP_VERSION} != ${_PHP_VERSION_INSTALLED}
PKG_SKIP_REASON+=	"${PKGBASE} requires ${PKG_PHP}, but php-${_PHP_VERSION_INSTALLED} is already installed."
.endif
.endif

.endif	# PHPVERSION_MK
