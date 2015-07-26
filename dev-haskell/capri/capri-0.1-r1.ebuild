# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="bin"
inherit eutils haskell-cabal

DESCRIPTION="A simple wrapper over cabal-install to operate in project-private mode"
HOMEPAGE="http://hackage.haskell.org/package/capri"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cabal-1.8:=
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.2
"

src_prepare() {
	epatch "${FILESDIR}"/${PN}-0.1-ghc-7.10.patch
}
