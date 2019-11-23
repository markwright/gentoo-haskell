# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Associative containers retaining insertion order for traversals"
HOMEPAGE="https://github.com/phadej/insert-ordered-containers#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/aeson-1.0.0.0:=[profile?]
	>=dev-haskell/base-compat-0.6.0:=[profile?]
	>=dev-haskell/hashable-1.2.3.3:=[profile?] <dev-haskell/hashable-1.4:=[profile?]
	>=dev-haskell/lens-4.7:=[profile?]
	>=dev-haskell/semigroupoids-4.3:=[profile?]
	>=dev-haskell/semigroups-0.16.2.2:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-haskell/text-1.2.0.6:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/unordered-containers-0.2.7.0:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/quickcheck-2.7.6
		>=dev-haskell/tasty-0.10.1.2
		>=dev-haskell/tasty-quickcheck-0.8.3.2 )
"

src_prepare() {
	default

	cabal_chdeps \
		'base                  >=4.6      && <4.10' 'base                  >=4.6' \
		'aeson                 >=1.0.0.0  && <1.2' 'aeson                 >=1.0.0.0' \
		'lens                  >=4.7      && <4.16' 'lens                  >=4.7' \
		'semigroupoids         >=4.3      && <5.2' 'semigroupoids         >=4.3' \
		'base-compat           >=0.6.0    && <0.10' 'base-compat           >=0.6.0' \
		'tasty             >= 0.10.1.2 && <0.12' 'tasty             >= 0.10.1.2' \
		'QuickCheck        >=2.7.6     && <2.10' 'QuickCheck        >=2.7.6' \
		'tasty-quickcheck  >= 0.8.3.2  && <0.9' 'tasty-quickcheck  >= 0.8.3.2'
}
