# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Bindings to system UUID functions"
HOMEPAGE="https://github.com/solidsnack/system-uuid/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="cli"

RDEPEND="dev-haskell/binary:=[profile?]
	dev-haskell/murmur-hash:=[profile?]
	dev-haskell/parsec:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	sys-apps/util-linux
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8.0.6
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag cli cli)
}
