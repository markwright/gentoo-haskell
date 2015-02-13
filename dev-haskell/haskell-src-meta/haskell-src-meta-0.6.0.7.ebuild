# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Parse source to template-haskell abstract syntax"
HOMEPAGE="http://hackage.haskell.org/package/haskell-src-meta"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/haskell-src-exts-1.15:=[profile?] <dev-haskell/haskell-src-exts-1.16:=[profile?]
	>=dev-haskell/syb-0.1:=[profile?] <dev-haskell/syb-0.5:=[profile?]
	>=dev-haskell/th-orphans-0.5:=[profile?] <dev-haskell/th-orphans-0.9:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"
