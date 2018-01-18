# $FreeBSD$

PORTNAME=	arachne-pnr
PORTVERSION=	1.0
CATEGORIES=	cad
MASTER_SITES=	https://github.com/cseed/arachne-pnr/

MAINTAINER=	ash_ports@aeria.net
COMMENT=	Arachne is an fgpa synthesisr use with icestorm and yosys

LICENSE=	MIT

USES=		tar:xz gmake
BUILD_DEPENDS= 	gmake:devel/gmake icebox_chipdb:cad/icestorm

BINS=		arachne-pnr

USE_GITHUB= 	yes
GH_ACCOUNT=	agokhale
GH_TAGNAME=	v0.1

post-install:
.for i in ${BINS}
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/${i}
.endfor

.include <bsd.port.mk>
