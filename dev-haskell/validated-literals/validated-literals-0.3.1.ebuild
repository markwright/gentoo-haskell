# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_HACKAGE_REVISION=3

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Compile-time checking for partial smart-constructors"
HOMEPAGE="https://github.com/merijn/validated-literals"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

CABAL_CHDEPS=(
	'base >= 4.9 && < 4.19' 'base >= 4.9'
	'template-haskell >= 2.11 && < 2.21' 'template-haskell >= 2.11'
	'deepseq == 1.4.*' 'deepseq >= 1.4.0'
	)

RDEPEND=">=dev-haskell/th-compat-0.1.3:=[profile?] <dev-haskell/th-compat-0.2:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/tasty-0.11 <dev-haskell/tasty-1.5
		>=dev-haskell/tasty-hunit-0.9 <dev-haskell/tasty-hunit-0.11
		>=dev-haskell/tasty-travis-0.2 <dev-haskell/tasty-travis-0.3 )
"
