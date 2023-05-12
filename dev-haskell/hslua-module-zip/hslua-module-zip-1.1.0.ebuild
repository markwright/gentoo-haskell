# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.2.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Lua module to work with file zips"
HOMEPAGE="https://hslua.org/"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/hslua-core-2.3:=[profile?] <dev-haskell/hslua-core-2.4:=[profile?]
	>=dev-haskell/hslua-list-1.1:=[profile?] <dev-haskell/hslua-list-1.2:=[profile?]
	>=dev-haskell/hslua-marshalling-2.3:=[profile?] <dev-haskell/hslua-marshalling-2.4:=[profile?]
	>=dev-haskell/hslua-packaging-2.3:=[profile?] <dev-haskell/hslua-packaging-2.4:=[profile?]
	>=dev-haskell/hslua-typing-0.1:=[profile?] <dev-haskell/hslua-typing-0.2:=[profile?]
	>=dev-haskell/text-1.2:=[profile?] <dev-haskell/text-2.1:=[profile?]
	>=dev-haskell/zip-archive-0.4:=[profile?] <dev-haskell/zip-archive-0.5:=[profile?]
	>=dev-lang/ghc-8.8.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
	test? ( dev-haskell/hslua-module-system
		dev-haskell/tasty
		dev-haskell/tasty-hunit
		>=dev-haskell/tasty-lua-1.0 <dev-haskell/tasty-lua-1.2 )
"
