# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5.9999
#hackport: flags: example:examples

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Provide a bridge between WAI and the websockets package"
HOMEPAGE="https://github.com/yesodweb/wai"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+examples"

RDEPEND=">=dev-haskell/case-insensitive-0.2:=[profile?]
	dev-haskell/http-types:=[profile?]
	>=dev-haskell/network-2.2.1.5:=[profile?]
	>=dev-haskell/wai-3.0:=[profile?] <dev-haskell/wai-3.3:=[profile?]
	>=dev-haskell/websockets-0.9:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	examples? ( dev-haskell/file-embed:=[profile?]
			dev-haskell/text:=[profile?]
			dev-haskell/wai-app-static:=[profile?]
			dev-haskell/warp:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag examples example)
}
