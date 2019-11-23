# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite"
inherit haskell-cabal

DESCRIPTION="Syntax sugar for defining maps"
HOMEPAGE="http://hackage.haskell.org/package/map-syntax"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # requires porting to hspec-2.6

RDEPEND=">=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/semigroups-0.18:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10"
# 	test? ( >=dev-haskell/hspec-2.2.3 <dev-haskell/hspec-2.6
# 		>=dev-haskell/hunit-1.2 <dev-haskell/hunit-2
# 		>=dev-haskell/quickcheck-2.3.0.2 <dev-haskell/quickcheck-3
# 		>=dev-haskell/transformers-0.3 <dev-haskell/transformers-0.6 )
# "

src_prepare() {
	default

	cabal_chdeps \
		'base                       >= 4.3 && < 4.12' 'base                       >= 4' \
		'containers                 >= 0.3 && < 0.6' 'containers                 >= 0.3'
}
