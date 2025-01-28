# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999
#hackport: flags: -parsec-struct-diff

CABAL_PN="Cabal"

CABAL_FEATURES="lib profile haddock hoogle hscolour"
CABAL_FEATURES+=" nocabaldep" # in case installed Cabal is broken
inherit haskell-cabal

DESCRIPTION="A framework for packaging Haskell software"
HOMEPAGE="https://www.haskell.org/cabal/"

LICENSE="BSD"
SLOT="0/${PV}"
#KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/cabal-syntax-3.14:=[profile?] <dev-haskell/cabal-syntax-3.15:=[profile?]
	>=dev-haskell/parsec-3.1.13.0:=[profile?] <dev-haskell/parsec-3.2:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-parsec-struct-diff
}

CABAL_CORE_LIB_GHC_PV="9.12.1"
