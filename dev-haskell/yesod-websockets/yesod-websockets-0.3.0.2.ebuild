# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="WebSockets support for Yesod"
HOMEPAGE="https://github.com/yesodweb/yesod"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/conduit-1.3:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/unliftio:=[profile?]
	>=dev-haskell/wai-websockets-2.1:=[profile?]
	>=dev-haskell/websockets-0.10:=[profile?]
	>=dev-haskell/yesod-core-1.6:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"
