# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Double-ended queues"
HOMEPAGE="https://github.com/nikita-volkov/deque"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/hashable-1.2:=[profile?] <dev-haskell/hashable-2:=[profile?]
	>=dev-haskell/strict-list-0.1.6:=[profile?] <dev-haskell/strict-list-0.2:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/quickcheck-2.8.1 <dev-haskell/quickcheck-3
		>=dev-haskell/quickcheck-instances-0.3.11 <dev-haskell/quickcheck-instances-0.4
		<dev-haskell/rerebase-2
		>=dev-haskell/tasty-0.12 <dev-haskell/tasty-2
		>=dev-haskell/tasty-hunit-0.9 <dev-haskell/tasty-hunit-0.11
		>=dev-haskell/tasty-quickcheck-0.9 <dev-haskell/tasty-quickcheck-0.11 )
"
