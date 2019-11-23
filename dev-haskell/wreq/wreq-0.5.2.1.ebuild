# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5.9999
#hackport: flags: -developer,+doctest

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="An easy-to-use HTTP client library"
HOMEPAGE="http://www.serpentine.com/wreq"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="aws httpbin"

RESTRICT=test # needs network

RDEPEND=">=dev-haskell/aeson-0.7.0.3:=[profile?]
	>=dev-haskell/attoparsec-0.11.1.0:=[profile?]
	>=dev-haskell/authenticate-oauth-1.5:=[profile?]
	dev-haskell/base16-bytestring:=[profile?]
	dev-haskell/case-insensitive:=[profile?]
	dev-haskell/cryptonite:=[profile?]
	>=dev-haskell/exceptions-0.5:=[profile?]
	dev-haskell/hashable:=[profile?]
	>=dev-haskell/http-client-0.5.3.2:=[profile?]
	>=dev-haskell/http-client-tls-0.3.3:=[profile?]
	>=dev-haskell/http-types-0.8:=[profile?]
	>=dev-haskell/lens-4.5:=[profile?]
	dev-haskell/lens-aeson:=[profile?]
	dev-haskell/memory:=[profile?]
	dev-haskell/mime-types:=[profile?]
	>=dev-haskell/psqueues-0.2:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/time-locale-compat:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-7.10.1:=
	httpbin? ( >=dev-haskell/aeson-pretty-0.8.0:=[profile?]
			dev-haskell/base64-bytestring:=[profile?]
			>=dev-haskell/snap-core-1.0.0.0:=[profile?]
			>=dev-haskell/snap-server-0.9.4.4:=[profile?]
			dev-haskell/unix-compat:=[profile?]
			dev-haskell/uuid:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	>=dev-haskell/cabal-doctest-1.0.2 <dev-haskell/cabal-doctest-1.1
	test? ( dev-haskell/doctest
		dev-haskell/hunit
		dev-haskell/network-info
		>=dev-haskell/quickcheck-2.7
		dev-haskell/temporary
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit
		dev-haskell/test-framework-quickcheck2
		dev-haskell/vector
		!httpbin? ( >=dev-haskell/aeson-pretty-0.8.0
				dev-haskell/base64-bytestring
				>=dev-haskell/snap-core-1.0.0.0
				>=dev-haskell/snap-server-0.9.4.4
				dev-haskell/unix-compat
				dev-haskell/uuid ) )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag aws aws) \
		--flag=-developer \
		--flag=doctest \
		$(cabal_flag httpbin httpbin)
}
