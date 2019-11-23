# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile test-suite" # haddock hoogle hscolour
inherit haskell-cabal

DESCRIPTION="Library exposing some functionality of Haddock"
HOMEPAGE="http://www.haskell.org/haddock/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
# keep in sync with ghc-8.6
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE=""

RDEPEND=">=dev-haskell/parsec-3.1.13.0:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-haskell/text-1.2.3.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.0
	test? ( >=dev-haskell/base-compat-0.9.3 <dev-haskell/base-compat-0.11
		>=dev-haskell/hspec-2.4.4 <dev-haskell/hspec-2.7
		>=dev-haskell/optparse-applicative-0.14.0.0 <dev-haskell/optparse-applicative-0.15
		>=dev-haskell/quickcheck-2.11 <dev-haskell/quickcheck-2.13
		>=dev-haskell/tree-diff-0.0.0.1 <dev-haskell/tree-diff-0.1 )
"

src_prepare() {
	default

	cabal_chdeps \
		'hspec        >= 2.4.4   && < 2.6' 'hspec        >= 2.4.4' \
		'QuickCheck    ^>= 2.11' 'QuickCheck    >= 2.11'
}
