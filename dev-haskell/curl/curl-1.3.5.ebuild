# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="lib profile haddock hscolour"
inherit base haskell-cabal

DESCRIPTION="Haskell binding to libcurl"
HOMEPAGE="http://hackage.haskell.org/cgi-bin/hackage-scripts/package/curl"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

PATCHES=( "${FILESDIR}/${P}-ghc-7.patch" )

DEPEND=">=dev-lang/ghc-6.6.1
		>=dev-haskell/cabal-1.2
		net-misc/curl"
