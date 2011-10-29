# $NetBSD: buildlink3.mk,v 1.15 2009/08/12 12:21:39 markd Exp $

BUILDLINK_TREE+=	gnuradio-core

.if !defined(GNURADIO_CORE_BUILDLINK3_MK)
GNURADIO_CORE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gnuradio-core+=	gnuradio-core>=3.0.4
BUILDLINK_PKGSRCDIR.gnuradio-core?=	../../ham/gnuradio-core
BUILDLINK_CPPFLAGS.gnuradio-core+=    -I${BUILDLINK_PREFIX.gnuradio-core}/include/gnuradio

.include "../../devel/boost-headers/buildlink3.mk"
.include "../../devel/boost-libs/buildlink3.mk"
.include "../../devel/cppunit/buildlink3.mk"
.include "../../devel/swig/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../lang/python/extension.mk"
.include "../../lang/python/pyversion.mk"
.include "../../math/fftwf/buildlink3.mk"
.include "../../math/gsl/buildlink3.mk"
.endif # GNURADIO_CORE_BUILDLINK3_MK

BUILDLINK_TREE+=	-gnuradio-core
