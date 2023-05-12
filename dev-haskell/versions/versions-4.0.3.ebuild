# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Types and parsers for software version numbers"
HOMEPAGE="https://github.com/fosskers/versions"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/hashable-1.2:=[profile?]
	>=dev-haskell/megaparsec-7:=[profile?]
	>=dev-haskell/parser-combinators-1.0:=[profile?]
	>=dev-haskell/text-1.2:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/microlens-0.4
		>=dev-haskell/quickcheck-2.9
		>=dev-haskell/tasty-0.10.1.2
		>=dev-haskell/tasty-hunit-0.9.2
		>=dev-haskell/tasty-quickcheck-0.8 )
"
