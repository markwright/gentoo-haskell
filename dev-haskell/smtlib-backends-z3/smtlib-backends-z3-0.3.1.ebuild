# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_HACKAGE_REVISION=3

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="An SMT-LIB backend implemented using Z3's C API"
HOMEPAGE="https://hackage.haskell.org/package/smtlib-backends-z3"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/smtlib-backends-0.3:=[profile?] <dev-haskell/smtlib-backends-0.5:=[profile?]
	>=dev-lang/ghc-9.0.2:=
	sys-devel/gcc[openmp]
	sci-mathematics/z3
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( dev-haskell/smtlib-backends-tests
		dev-haskell/tasty
		dev-haskell/tasty-hunit )
"
