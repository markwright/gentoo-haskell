# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Abstractions for animation"
HOMEPAGE="https://hackage.haskell.org/package/active"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-haskell/lens-4.0:=[profile?] <dev-haskell/lens-5.3:=[profile?]
	>=dev-haskell/linear-1.14:=[profile?] <dev-haskell/linear-1.22:=[profile?]
	>=dev-haskell/semigroupoids-1.2:=[profile?] <dev-haskell/semigroupoids-5.4:=[profile?]
	>=dev-haskell/semigroups-0.1:=[profile?] <dev-haskell/semigroups-0.21:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/quickcheck-2.9 <dev-haskell/quickcheck-2.15 )
"
