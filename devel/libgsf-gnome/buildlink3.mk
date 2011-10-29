# $NetBSD: buildlink3.mk,v 1.7 2011/07/21 13:05:50 obache Exp $

BUILDLINK_TREE+=	libgsf-gnome

.if !defined(LIBGSF_GNOME_BUILDLINK3_MK)
LIBGSF_GNOME_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libgsf-gnome+=	libgsf-gnome>=1.14.15
BUILDLINK_ABI_DEPENDS.libgsf-gnome?=	libgsf-gnome>=1.14.21nb1
BUILDLINK_PKGSRCDIR.libgsf-gnome?=	../../devel/libgsf-gnome

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/libbonobo/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../sysutils/gnome-vfs/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../devel/GConf/buildlink3.mk"
.include "../../devel/libgsf/buildlink3.mk"
.endif	# LIBGSF_GNOME_BUILDLINK3_MK

BUILDLINK_TREE+=	-libgsf-gnome
