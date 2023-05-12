# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Gamma function and related functions"
HOMEPAGE="https://github.com/rockbmb/gamma2"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="public-domain"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RESTRICT=test # fails 2/85 tests

RDEPEND=">=dev-haskell/continued-fractions-0.10:=[profile?]
	dev-haskell/converge:=[profile?]
	>=dev-haskell/vector-0.5:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( dev-haskell/erf
		dev-haskell/numbers
		>=dev-haskell/quickcheck-2.1.1
		dev-haskell/test-framework
		dev-haskell/test-framework-quickcheck2 )
"
