# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES=""
inherit haskell-cabal

DESCRIPTION="RPM packaging tool for Haskell Cabal-based packages"
HOMEPAGE="https://github.com/juhp/cabal-rpm"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+https old-locale"

RDEPEND=">dev-haskell/cabal-1.10:=
	old-locale? ( >=dev-haskell/old-locale-1:= <dev-haskell/old-locale-1.1:= )
	>=dev-haskell/simple-cmd-0.1.3:=
	>=dev-haskell/http-client-0.4.30:=
	dev-haskell/http-client-tls:=
	dev-haskell/http-conduit:=
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag https https) \
		$(cabal_flag old-locale old-locale)
}
