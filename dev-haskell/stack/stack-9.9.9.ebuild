# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit flag-o-matic haskell-cabal

DESCRIPTION="The Haskell Tool Stack"
HOMEPAGE="https://github.com/commercialhaskell/stack"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS=""
IUSE="integration-tests"

RDEPEND=">=dev-haskell/aeson-0.8.0.2:=[profile?]
	>=dev-haskell/async-2.0.2:=[profile?]
	>=dev-haskell/attoparsec-0.12.1.5:=[profile?]
	dev-haskell/base16-bytestring:=[profile?]
	dev-haskell/base64-bytestring:=[profile?]
	>=dev-haskell/bifunctors-4.2.1:=[profile?]
	>=dev-haskell/binary-0.7:=[profile?]
	dev-haskell/blaze-builder:=[profile?]
	>=dev-haskell/cabal-1.18.1.5:=[profile?]
	>=dev-haskell/conduit-1.2.4:=[profile?]
	>=dev-haskell/conduit-combinators-0.3.1:=[profile?]
	>=dev-haskell/conduit-extra-1.1.7.1:=[profile?]
	>=dev-haskell/cryptohash-0.11.6:=[profile?]
	dev-haskell/cryptohash-conduit:=[profile?]
	dev-haskell/either:=[profile?]
	dev-haskell/enclosed-exceptions:=[profile?]
	>=dev-haskell/exceptions-0.8.0.2:=[profile?]
	>=dev-haskell/fast-logger-2.3.1:=[profile?]
	dev-haskell/file-embed:=[profile?]
	>=dev-haskell/hashable-1.2.3.2:=[profile?]
	>=dev-haskell/http-client-0.4.9:=[profile?]
	>=dev-haskell/http-client-tls-0.2.2:=[profile?]
	>=dev-haskell/http-conduit-2.1.5:=[profile?]
	>=dev-haskell/http-types-0.8.6:=[profile?]
	dev-haskell/lifted-base:=[profile?]
	dev-haskell/monad-control:=[profile?]
	>=dev-haskell/monad-logger-0.3.13.1:=[profile?]
	>=dev-haskell/monad-loops-0.4.2.1:=[profile?]
	>=dev-haskell/mtl-2.1.3.1:=[profile?]
	>=dev-haskell/old-locale-1.0.0.6:=[profile?]
	>=dev-haskell/optparse-applicative-0.11.0.2:=[profile?]
	>=dev-haskell/optparse-simple-0.0.3:=[profile?]
	>=dev-haskell/path-0.5.1:=[profile?]
	>=dev-haskell/persistent-2.1.2:=[profile?]
	>=dev-haskell/persistent-sqlite-2.1.4:=[profile?]
	>=dev-haskell/persistent-template-2.1.1:=[profile?]
	>=dev-haskell/resourcet-1.1.4.1:=[profile?]
	>=dev-haskell/safe-0.3:=[profile?]
	dev-haskell/split:=[profile?]
	>=dev-haskell/stm-2.4.4:=[profile?]
	>=dev-haskell/streaming-commons-0.1.10.0:=[profile?]
	>=dev-haskell/tar-0.4.1.0:=[profile?]
	>=dev-haskell/temporary-1.2.0.3:=[profile?]
	>=dev-haskell/text-1.2.0.4:=[profile?]
	>=dev-haskell/transformers-0.3.0.0:=[profile?]
	>=dev-haskell/transformers-base-0.4.4:=[profile?]
	>=dev-haskell/unordered-containers-0.2.5.1:=[profile?]
	>=dev-haskell/vector-0.10.12.3:=[profile?]
	dev-haskell/vector-binary-instances:=[profile?]
	>=dev-haskell/void-0.7:=[profile?]
	dev-haskell/word8:=[profile?]
	>=dev-haskell/yaml-0.8.10.1:=[profile?]
	>=dev-haskell/zlib-0.5.4.2:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/hspec
		dev-haskell/unix-compat )
"
RDEPEND+=" !dev-haskell/stack-bin[symlink]"

pkg_pretend() {
	eerror "This package version is not intended for installation."
	eerror "It only serves a placeholder for people who try to bump to"
	eerror "'latest' hackage version on stack. Please use other version."
	die "${P} is not supposed to be used."
}

src_prepare() {
	# workaround https://ghc.haskell.org/trac/ghc/ticket/10110
	append-ldflags $(no-as-needed)
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag integration-tests integration-tests)
}
