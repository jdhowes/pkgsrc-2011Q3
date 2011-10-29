$NetBSD: patch-ext_sockets_sockets.c,v 1.1 2011/06/15 14:41:16 taca Exp $

* Update of r311369 of PHP's repository, fix for CVE-2011-1938.

--- ext/sockets/sockets.c.orig	2010-01-03 09:23:27.000000000 +0000
+++ ext/sockets/sockets.c
@@ -1176,6 +1176,11 @@ PHP_FUNCTION(socket_connect)
 			break;
 
 		case AF_UNIX:
+			if (addr_len >= sizeof(s_un.sun_path)) {
+				php_error_docref(NULL TSRMLS_CC, E_WARNING, "Path too long", php_sock->type);
+				RETURN_FALSE;
+			}
+
 			memset(&s_un, 0, sizeof(struct sockaddr_un));
 
 			s_un.sun_family = AF_UNIX;
