# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Interface for JavaScript that works with GHCJS and GHC"
HOMEPAGE="http://hackage.haskell.org/package/jsaddle-warp"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # tests are not supposed to be ran by cabal

RDEPEND=">=dev-haskell/aeson-0.8.0.2:=[profile?] <dev-haskell/aeson-1.1:=[profile?]
	>=dev-haskell/http-types-0.8.6:=[profile?] <dev-haskell/http-types-0.10:=[profile?]
	>=dev-haskell/jsaddle-0.6.0.0:=[profile?] <dev-haskell/jsaddle-0.7:=[profile?]
	>=dev-haskell/stm-2.4.4:=[profile?] <dev-haskell/stm-2.5:=[profile?]
	>=dev-haskell/text-1.2.1.3:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/wai-3.0.3.0:=[profile?] <dev-haskell/wai-3.3:=[profile?]
	>=dev-haskell/wai-websockets-3.0.0.6:=[profile?] <dev-haskell/wai-websockets-3.1:=[profile?]
	>=dev-haskell/warp-3.1.2:=[profile?] <dev-haskell/warp-3.3:=[profile?]
	>=dev-haskell/websockets-0.9.5.0:=[profile?] <dev-haskell/websockets-0.10:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( >=dev-haskell/doctest-0.10.1 <dev-haskell/doctest-0.12
		dev-haskell/lens
		dev-haskell/primitive
		dev-haskell/quickcheck
		dev-haskell/ref-tf )
"
