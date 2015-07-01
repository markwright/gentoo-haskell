# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.5.9999
#hackport: flags: -llvm

CABAL_FEATURES="bin"
inherit haskell-cabal

DESCRIPTION="Examples using the gloss library"
HOMEPAGE="http://gloss.ouroborus.net"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
# needs ghc-7.10
#KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/bmp-1.2:= <dev-haskell/bmp-1.3:=
	dev-haskell/glfw-b:=
	>=dev-haskell/gloss-1.9.4:= <dev-haskell/gloss-1.9.5:=
	>=dev-haskell/gloss-algorithms-1.9.4:= <dev-haskell/gloss-algorithms-1.9.5:=
	>=dev-haskell/gloss-raster-1.9.4:= <dev-haskell/gloss-raster-1.9.5:=
	>=dev-haskell/gloss-rendering-1.9.3:= <dev-haskell/gloss-rendering-1.9.4:=
	>=dev-haskell/random-1.1:= <dev-haskell/random-1.2:=
	>=dev-haskell/repa-3.4:= <dev-haskell/repa-3.5:=
	>=dev-haskell/repa-algorithms-3.4:= <dev-haskell/repa-algorithms-3.5:=
	>=dev-haskell/repa-io-3.4:= <dev-haskell/repa-io-3.5:=
	>=dev-haskell/vector-0.10:= <dev-haskell/vector-0.11:=
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-llvm
}
