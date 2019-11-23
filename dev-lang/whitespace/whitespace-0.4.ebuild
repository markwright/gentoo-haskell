# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.5.9999

CABAL_FEATURES="bin"
inherit eutils haskell-cabal

DESCRIPTION="Whitespace, an esoteric programming language"
HOMEPAGE="https://github.com/haroldl/whitespace-nd"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6.0.3
	dev-haskell/random
	>=dev-lang/ghc-6.10.4
"

src_prepare() {
	epatch "${FILESDIR}"/${P}-ghc-7.10.patch
}
