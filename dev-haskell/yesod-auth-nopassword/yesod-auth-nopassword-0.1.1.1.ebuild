# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A plugin for Yesod to provide email-only authentication"
HOMEPAGE="https://github.com/danpalmer/yesod-auth-nopassword#readme"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/blaze-markup-0.7:=[profile?] <dev-haskell/blaze-markup-1.0:=[profile?]
	>=dev-haskell/http-types-0.9:=[profile?] <dev-haskell/http-types-1.0:=[profile?]
	>=dev-haskell/pwstore-fast-2.4:=[profile?] <dev-haskell/pwstore-fast-3.0:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-2.0:=[profile?]
	>=dev-haskell/uuid-1.3:=[profile?] <dev-haskell/uuid-1.4:=[profile?]
	>=dev-haskell/yesod-auth-1.4.0:=[profile?] <dev-haskell/yesod-auth-1.5:=[profile?]
	>=dev-haskell/yesod-core-1.4.17:=[profile?] <dev-haskell/yesod-core-1.5:=[profile?]
	>=dev-haskell/yesod-form-1.4.0:=[profile?] <dev-haskell/yesod-form-1.5:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"
