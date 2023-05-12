# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Determine the full path to an executable"
HOMEPAGE="https://hackage.haskell.org/package/which"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

CABAL_CHDEPS=(
	'shelly              >= 1.8.0 && < 1.10' 'shelly >= 1.8.0'
)

RDEPEND="
	>=dev-haskell/shelly-1.8.0:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
