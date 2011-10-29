# $NetBSD: buildlink3.mk,v 1.31 2009/07/21 12:00:41 tnn Exp $

BUILDLINK_TREE+=	freetype2

.if !defined(FREETYPE2_BUILDLINK3_MK)
FREETYPE2_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.freetype2+=	freetype2>=2.1.8
BUILDLINK_ABI_DEPENDS.freetype2+=	freetype2>=2.1.10nb1
BUILDLINK_PKGSRCDIR.freetype2?=	../../graphics/freetype2
BUILDLINK_INCDIRS.freetype2?=	include/freetype2

FREETYPE_CONFIG?=	${BUILDLINK_PREFIX.freetype2}/bin/freetype-config
CONFIGURE_ENV+=		FREETYPE_CONFIG=${FREETYPE_CONFIG:Q}

.include "../../devel/zlib/buildlink3.mk"
.endif # FREETYPE2_BUILDLINK3_MK

BUILDLINK_TREE+=	-freetype2
