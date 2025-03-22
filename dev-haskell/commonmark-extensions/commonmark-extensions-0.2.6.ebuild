# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.9.0.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Pure Haskell commonmark parser"
HOMEPAGE="https://github.com/jgm/commonmark-hs"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/commonmark-0.2.4.1:=[profile?] <dev-haskell/commonmark-0.3:=[profile?]
	>=dev-haskell/emojis-0.1.4.1:=[profile?] <dev-haskell/emojis-0.2:=[profile?]
	dev-haskell/network-uri:=[profile?]
	dev-haskell/parsec:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( dev-haskell/tasty
		dev-haskell/tasty-hunit )
"
