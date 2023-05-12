# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.1

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Secure password storage, in pure Haskell"
HOMEPAGE="https://github.com/PeterScott/pwstore"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=dev-haskell/base64-bytestring-0.1:=[profile?]
	>=dev-haskell/byteable-0.1:=[profile?]
	>=dev-haskell/random-1:=[profile?]
	>=dev-haskell/sha-1.4.1:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.2
"
