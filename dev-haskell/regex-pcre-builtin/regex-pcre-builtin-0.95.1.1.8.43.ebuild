# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1.9999
#hackport: flags: +newbase,+splitbase

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Replaces/Enhances Text.Regex"
HOMEPAGE="http://hackage.haskell.org/package/regex-pcre-builtin"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/fail-4.9:=[profile?] <dev-haskell/fail-4.10:=[profile?]
	>=dev-haskell/regex-base-0.94:=[profile?] <dev-haskell/regex-base-0.95:=[profile?]
	>=dev-haskell/text-1.2.3:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=newbase \
		--flag=splitbase
}
