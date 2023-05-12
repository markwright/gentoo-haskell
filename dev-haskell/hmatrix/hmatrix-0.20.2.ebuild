# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Numeric Linear Algebra"
HOMEPAGE="https://github.com/haskell-numerics/hmatrix"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="no-random-r"

RDEPEND="dev-haskell/primitive:=[profile?]
	dev-haskell/random:=[profile?]
	dev-haskell/semigroups:=[profile?]
	dev-haskell/split:=[profile?]
	dev-haskell/storable-complex:=[profile?]
	>=dev-haskell/vector-0.11:=[profile?]
	>=dev-lang/ghc-8.4.3:=
	virtual/blas
	virtual/lapack
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

PATCHES=( "${FILESDIR}"/${PN}-0.20.2.0-gentoo-blas.patch )

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag no-random-r no-random_r)
}
