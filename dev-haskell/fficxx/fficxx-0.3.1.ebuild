# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="automatic C++ binding generation"
HOMEPAGE="http://hackage.haskell.org/package/fficxx"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/cabal:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/either:=[profile?]
	dev-haskell/errors:=[profile?]
	dev-haskell/hashable:=[profile?]
	dev-haskell/haskell-src-exts:=[profile?]
	>dev-haskell/lens-3:=[profile?]
	>dev-haskell/mtl-2:=[profile?]
	dev-haskell/puremd5:=[profile?]
	dev-haskell/split:=[profile?]
	dev-haskell/template:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"
