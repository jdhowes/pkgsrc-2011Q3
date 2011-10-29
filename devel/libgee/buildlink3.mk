# $NetBSD: buildlink3.mk,v 1.4 2011/04/22 13:42:14 obache Exp $

BUILDLINK_TREE+=	libgee

.if !defined(LIBGEE_BUILDLINK3_MK)
LIBGEE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libgee+=	libgee>=0.5.3
BUILDLINK_ABI_DEPENDS.libgee?=	libgee>=0.6.1nb1
BUILDLINK_PKGSRCDIR.libgee?=	../../devel/libgee

.include "../../devel/glib2/buildlink3.mk"
.endif # LIBGEE_BUILDLINK3_MK

BUILDLINK_TREE+=	-libgee
