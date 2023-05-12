# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999
#hackport: flags: -monolithic,+network-uri,-debug-tracetree,-debug-expensive-assertions,-debug-conflict-sets

CABAL_HACKAGE_REVISION=2

CABAL_FEATURES=""
inherit ghc-package haskell-cabal

DESCRIPTION="The command-line interface for Cabal and Hackage"
HOMEPAGE="https://www.haskell.org/cabal/"

LICENSE="BSD"
SLOT="0"
#keep in sync with ghc-9.0.2
KEYWORDS="~amd64"
IUSE="+lukko +native-dns"

CABAL_CHDEPS=(
	'base       >= 4.8      && < 4.15' 'base >= 4.8'
	'hashable   >= 1.0      && < 1.4' 'hashable >=1.0'
	'HTTP       >= 4000.1.5 && < 4000.4' 'HTTP       >= 4000.1.5 && < 4000.5'
)

RDEPEND="
	>=dev-haskell/async-2.0:= <dev-haskell/async-2.3:=
	>=dev-haskell/base16-bytestring-0.1.1:= <dev-haskell/base16-bytestring-1.1.0.0:=
	>=dev-haskell/cabal-3.4.1:= <dev-haskell/cabal-3.4.2:=
	>=dev-haskell/cryptohash-sha256-0.11:= <dev-haskell/cryptohash-sha256-0.12:=
	>=dev-haskell/echo-0.1.3:= <dev-haskell/echo-0.2:=
	>=dev-haskell/edit-distance-0.2.2:= <dev-haskell/edit-distance-0.3:=
	>=dev-haskell/hackage-security-0.6.0.1:= <dev-haskell/hackage-security-0.7:=
	>=dev-haskell/hashable-1.0:=
	>=dev-haskell/http-4000.1.5:= <dev-haskell/http-4000.5:=
	>=dev-haskell/network-uri-2.6.0.2:= <dev-haskell/network-uri-2.7:=
	|| ( dev-lang/ghc ( >=dev-haskell/process-1.2.3.0 <dev-haskell/process-1.7 ) )
	>=dev-haskell/random-1.2:= <dev-haskell/random-1.3:=
	>=dev-haskell/regex-base-0.94.0.0:= <dev-haskell/regex-base-0.95:=
	>=dev-haskell/regex-posix-0.96.0.0:= <dev-haskell/regex-posix-0.97:=
	>=dev-haskell/stm-2.0:= <dev-haskell/stm-2.6:=
	>=dev-haskell/tar-0.5.0.3:= <dev-haskell/tar-0.6:=
	>=dev-haskell/zlib-0.5.3:= <dev-haskell/zlib-0.7:=
	>=dev-lang/ghc-8.4.3:=
	lukko? (
		>=dev-haskell/lukko-0.1:= <dev-haskell/lukko-0.2:=
	)
	native-dns? (
		>=dev-haskell/resolv-0.1.1:= <dev-haskell/resolv-0.2:=
	)
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_prepare() {
	# no chance to link to -threaded on ppc64, alpha and others
	# who use UNREG, not only ARM
	if ! ghc-supports-threaded-runtime; then
		cabal_chdeps '-threaded' ' '
	fi
	haskell-cabal_src_prepare
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-debug-conflict-sets \
		--flag=-debug-expensive-assertions \
		--flag=-debug-tracetree \
		$(cabal_flag lukko lukko) \
		--flag=-monolithic \
		$(cabal_flag native-dns native-dns) \
		--flag=network-uri
}
