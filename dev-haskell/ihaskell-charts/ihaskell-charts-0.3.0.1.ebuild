# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="IHaskell display instances for charts types"
HOMEPAGE="http://www.github.com/gibiansky/ihaskell"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

PATCHES=(
	$"{FILESDIR}"/${P}-temporary.patch
)

RDEPEND="dev-haskell/chart:=[profile?]
	>=dev-haskell/chart-cairo-1.2:=[profile?]
	dev-haskell/data-default-class:=[profile?]
	>=dev-haskell/ihaskell-0.6.2:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
"
