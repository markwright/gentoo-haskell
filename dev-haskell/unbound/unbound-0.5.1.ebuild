# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Generic support for programming with names and binders"
HOMEPAGE="https://github.com/sweirich/replib"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/binary-0.7:=[profile?] <dev-haskell/binary-0.9:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/replib-0.5.3:=[profile?] <dev-haskell/replib-0.6:=[profile?]
	>=dev-haskell/transformers-0.2.2.0:=[profile?] <dev-haskell/transformers-0.6:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/parsec-3.1.9 <dev-haskell/parsec-3.2
		>=dev-haskell/quickcheck-2.8.2 )
"

src_prepare() {
	default

	cabal_chdeps \
		'QuickCheck>=2.8.2 && < 2.10' 'QuickCheck>=2.8.2'
}
