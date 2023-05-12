# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Composable, streaming, and efficient left folds"
HOMEPAGE="https://hackage.haskell.org/package/foldl"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

PATCHES=( "${FILESDIR}/${PN}-1.4.12-cabal-doctest.patch" )

GHC_BOOTSTRAP_PACKAGES=(
	cabal-doctest
)

RDEPEND=">=dev-haskell/comonad-4.0:=[profile?] <dev-haskell/comonad-6:=[profile?]
	<dev-haskell/contravariant-1.6:=[profile?]
	<dev-haskell/hashable-1.5:=[profile?]
	<dev-haskell/primitive-0.8:=[profile?]
	>=dev-haskell/profunctors-3.2:=[profile?] <dev-haskell/profunctors-5.7:=[profile?]
	>=dev-haskell/random-1.2:=[profile?] <dev-haskell/random-1.3:=[profile?]
	>=dev-haskell/semigroupoids-1.0:=[profile?] <dev-haskell/semigroupoids-5.4:=[profile?]
	<dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.7:=[profile?] <dev-haskell/vector-0.14:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	dev-haskell/cabal-doctest
	test? ( >=dev-haskell/doctest-0.16
		dev-haskell/base-compat )
"
