# $FreeBSD$

PORTNAME=	arachne-pnr
PORTVERSION=	1.0
CATEGORIES=	cad
LICENSE=	MIT
MASTER_SITES=	https://github.com/cseed/arachne-pnr/

USES=		tar:xz gmake
BUILD_DEPENDS= 	gmake:devel/gmake 

USE_GITHUB= 	yes
GH_ACCOUNT=	agokhale
GH_TAGNAME=		v0.1

BINS=		arachne-pnr
MAINTAINER=	ash_ports@aeria.net
COMMENT=	Arachne place and route fgpa synthesis/hardware compiler often used in concert with icestorm and yosys

.include <bsd.port.mk>
