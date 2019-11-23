# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999
#hackport: flags: +haveusleep

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Low-level binding to SQLite3.  Includes UTF8 and BLOB support"
HOMEPAGE="https://github.com/IreneKnapp/direct-sqlite"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+fulltextsearch +json1 systemlib +urifilenames"

RDEPEND=">=dev-haskell/semigroups-0.18:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-haskell/text-0.11:=[profile?]
	>=dev-lang/ghc-7.10.1:=
	systemlib? ( >=dev-db/sqlite-3.0 )
	!systemlib? ( virtual/libc )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( dev-haskell/base16-bytestring
		dev-haskell/hunit
		dev-haskell/temporary )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag fulltextsearch fulltextsearch) \
		--flag=haveusleep \
		$(cabal_flag json1 json1) \
		$(cabal_flag systemlib systemlib) \
		$(cabal_flag urifilenames urifilenames)
}
