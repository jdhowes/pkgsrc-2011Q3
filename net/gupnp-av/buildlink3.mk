# $NetBSD: buildlink3.mk,v 1.6 2011/06/10 09:39:46 obache Exp $

BUILDLINK_TREE+=	gupnp-av

.if !defined(GUPNP_AV_BUILDLINK3_MK)
GUPNP_AV_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gupnp-av+=	gupnp-av>=0.5.4
BUILDLINK_ABI_DEPENDS.gupnp-av?=	gupnp-av>=0.5.4nb3
BUILDLINK_PKGSRCDIR.gupnp-av?=	../../net/gupnp-av

.include "../../net/gupnp/buildlink3.mk"
.endif	# GUPNP_AV_BUILDLINK3_MK

BUILDLINK_TREE+=	-gupnp-av
