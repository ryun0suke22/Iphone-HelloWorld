# SPVM::Iphone::HelloWorld

## Document

<a href="https://metacpan.org/pod/SPVM::Iphone::HelloWorld">SPVM::Iphone::HelloWorld - CPAN</a>

## See Also

<a href="https://github.com/yuki-kimoto/SPVM">SPVM - Github</a>

# Iphone-HelloWorld

## 開発メモ（生成物の扱い）

- 本リポジトリには、ビルドで生成される成果物はコミットしません（`.gitignore` 参照）。
- 代表的な生成物: `.spvm_build/`, `blib/`, `Makefile`, `MYMETA.*`, `*.o`, `*.so`, `*.dylib`, `*.bundle`, `DerivedData/`, `build/` など。
- 入力ソース（コミット対象）:
  - SPVM クラス: `lib/SPVM/Iphone/HelloWorld.spvm`
  - Perl インターフェース: `lib/SPVM/Iphone/HelloWorld.pm`
  - iOS アプリ側: `src/*.m`, `src/*.h`
  - テスト: `t/`

