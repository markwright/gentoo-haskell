# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Automatic generation of record lenses for microlens"
HOMEPAGE="https://github.com/aelve/microlens"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+inlining"

RDEPEND=">=dev-haskell/microlens-0.4.0:=[profile?] <dev-haskell/microlens-0.5:=[profile?]
	>=dev-haskell/th-abstraction-0.2.1:=[profile?] <dev-haskell/th-abstraction-0.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag inlining inlining)
}
