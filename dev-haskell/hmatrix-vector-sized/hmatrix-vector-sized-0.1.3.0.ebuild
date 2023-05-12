# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.4

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Conversions between hmatrix and vector-sized types"
HOMEPAGE="https://github.com/mstksg/hmatrix-vector-sized#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/hmatrix-0.18:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-haskell/vector-sized-0.4.1:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/ghc-typelits-knownnat
		dev-haskell/hedgehog )
"
