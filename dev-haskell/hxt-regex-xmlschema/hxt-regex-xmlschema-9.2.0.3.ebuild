# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A regular expression library for W3C XML Schema regular expressions"
HOMEPAGE="http://www.haskell.org/haskellwiki/Regular_expressions_for_XML_Schema"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="profile"

RDEPEND=">=dev-haskell/hxt-charproperties-9:=[profile?] <dev-haskell/hxt-charproperties-10:=[profile?]
	>=dev-haskell/parsec-2.1:=[profile?] <dev-haskell/parsec-4:=[profile?]
	>=dev-haskell/text-0.10:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( dev-haskell/hunit )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag profile profile)
}
