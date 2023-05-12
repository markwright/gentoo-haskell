# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_HACKAGE_REVISION=1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Subclasses of Monoid"
HOMEPAGE="https://github.com/blamario/monoid-subclasses/"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/primes-0.2:=[profile?] <dev-haskell/primes-0.3:=[profile?]
	>=dev-haskell/vector-0.12:=[profile?] <dev-haskell/vector-0.14:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/quickcheck-2.9 <dev-haskell/quickcheck-3
		>=dev-haskell/quickcheck-instances-0.3.12 <dev-haskell/quickcheck-instances-0.4
		>=dev-haskell/tasty-0.7
		>=dev-haskell/tasty-quickcheck-0.7 <dev-haskell/tasty-quickcheck-1.0 )
"
