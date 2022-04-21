# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # test-suite
inherit haskell-cabal
RESTRICT="test" # Test fails to build on ghc-9.0.2 (2022-02-12)

DESCRIPTION="PureScript package manager and build tool powered by Dhall and package-sets"
HOMEPAGE="https://github.com/purescript/spago#readme"
COMMIT="d79eeabde5abd2f6ddc8991459ff61beb8238ec1"
SRC_URI="https://github.com/purescript/spago/archive/${COMMIT}.tar.gz -> ${PN}-${COMMIT}.tar.gz
	https://github.com/purescript/purescript-docs-search/releases/download/v0.0.10/purescript-docs-search -> ${PN}-purescript-docs-search-0.0.10
	https://github.com/purescript/purescript-docs-search/releases/download/v0.0.10/docs-search-app.js -> ${PN}-docs-search-app-0.0.10.js
	https://github.com/purescript/purescript-docs-search/releases/download/v0.0.11/purescript-docs-search -> ${PN}-purescript-docs-search-0.0.11
	https://github.com/purescript/purescript-docs-search/releases/download/v0.0.11/docs-search-app.js -> ${PN}-docs-search-app-0.0.11.js
"
S="${WORKDIR}/${PN}-${COMMIT}"
CABAL_FILE="${S}/${PN}.cabal"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-haskell/aeson:=[profile?]
	dev-haskell/aeson-pretty:=[profile?]
	dev-haskell/ansi-terminal:=[profile?]
	dev-haskell/async-pool:=[profile?]
	dev-haskell/bower-json:=[profile?]
	dev-haskell/cryptonite:=[profile?]
	dev-haskell/either:=[profile?]
	dev-haskell/file-embed:=[profile?]
	dev-haskell/foldl:=[profile?]
	dev-haskell/fsnotify:=[profile?]
	dev-haskell/generic-lens:=[profile?]
	dev-haskell/glob:=[profile?]
	dev-haskell/http-client:=[profile?]
	dev-haskell/http-conduit:=[profile?]
	dev-haskell/http-types:=[profile?]
	dev-haskell/lens-family-core:=[profile?]
	dev-haskell/megaparsec:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/network-uri:=[profile?]
	dev-haskell/open-browser:=[profile?]
	dev-haskell/optparse-applicative:=[profile?]
	dev-haskell/prettyprinter:=[profile?]
	dev-haskell/retry:=[profile?]
	>=dev-haskell/rio-0.1.16.0:=[profile?]
	dev-haskell/rio-orphans:=[profile?]
	dev-haskell/safe:=[profile?]
	dev-haskell/semver-range:=[profile?]
	dev-haskell/stm:=[profile?]
	dev-haskell/stringsearch:=[profile?]
	dev-haskell/tar:=[profile?]
	dev-haskell/temporary:=[profile?]
	<dev-haskell/text-1.3:=[profile?]
	dev-haskell/turtle:=[profile?]
	dev-haskell/unliftio:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	dev-haskell/versions:=[profile?]
	dev-haskell/with-utf8:=[profile?]
	dev-haskell/zlib:=[profile?]
	>=dev-lang/dhall-1.39.0:=[profile?]
	>=dev-lang/ghc-8.8.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.1.0
"
#	test? ( dev-haskell/extra
#		>=dev-haskell/hspec-2 <dev-haskell/hspec-3
#		dev-haskell/hspec-megaparsec
#		dev-haskell/quickcheck )

PURESCRIPT_DOCS_FILES=(
	"purescript-docs-search-0.0.10"
	"purescript-docs-search-0.0.11"
	"docs-search-app-0.0.10.js"
	"docs-search-app-0.0.11.js"
)

src_prepare() {
	for filename in "${PURESCRIPT_DOCS_FILES[@]}"
	do
		cp -v "${DISTDIR}/${PN}-${filename}" "${S}/templates/${filename}" || die
	done
	default
}
