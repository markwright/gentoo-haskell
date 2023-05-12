# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="B+-tree implementation in Haskell"
HOMEPAGE="https://github.com/haskell-haskey/haskey-btree"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/hashable-1.2:=[profile?] <dev-haskell/hashable-2:=[profile?]
	>=dev-haskell/mtl-2.1:=[profile?] <dev-haskell/mtl-3:=[profile?]
	>=dev-haskell/semigroups-0.12:=[profile?] <dev-haskell/semigroups-1:=[profile?]
	>=dev-haskell/text-1.2.1:=[profile?] <dev-haskell/text-2:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-1:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/data-ordlist-0.4 <dev-haskell/data-ordlist-1
		>=dev-haskell/hunit-1.3 <dev-haskell/hunit-2
		>=dev-haskell/quickcheck-2 <dev-haskell/quickcheck-3
		>=dev-haskell/test-framework-0.8 <dev-haskell/test-framework-1
		>=dev-haskell/test-framework-hunit-0.3 <dev-haskell/test-framework-hunit-1
		>=dev-haskell/test-framework-quickcheck2-0.3 <dev-haskell/test-framework-quickcheck2-1 )
"
