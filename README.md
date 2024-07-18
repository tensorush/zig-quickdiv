# zig-quickdiv

[![CI][ci-shd]][ci-url]
[![CD][cd-shd]][cd-url]
[![DC][dc-shd]][dc-url]
[![LC][lc-shd]][lc-url]

## Zig port of [quickdiv library](https://github.com/dtrifuno/quickdiv) for optimized repeated division.

### :rocket: Usage

- Add `quickdiv` dependency to `build.zig.zon`.

```sh
zig fetch --save https://github.com/tensorush/zig-quickdiv/archive/<git_tag_or_commit_hash>.tar.gz
```

- Use `quickdiv` dependency in `build.zig`.

```zig
const quickdiv_dep = b.dependency("quickdiv", .{
    .target = target,
    .optimize = optimize,
});
const quickdiv_mod = quickdiv_dep.module("quickdiv");
<compile>.root_module.addImport("quickdiv", quickdiv_mod);
```

<!-- MARKDOWN LINKS -->

[ci-shd]: https://img.shields.io/github/actions/workflow/status/tensorush/zig-quickdiv/ci.yaml?branch=main&style=for-the-badge&logo=github&label=CI&labelColor=black
[ci-url]: https://github.com/tensorush/zig-quickdiv/blob/main/.github/workflows/ci.yaml
[cd-shd]: https://img.shields.io/github/actions/workflow/status/tensorush/zig-quickdiv/cd.yaml?branch=main&style=for-the-badge&logo=github&label=CD&labelColor=black
[cd-url]: https://github.com/tensorush/zig-quickdiv/blob/main/.github/workflows/cd.yaml
[dc-shd]: https://img.shields.io/badge/click-F6A516?style=for-the-badge&logo=zig&logoColor=F6A516&label=docs&labelColor=black
[dc-url]: https://tensorush.github.io/zig-quickdiv
[lc-shd]: https://img.shields.io/github/license/tensorush/zig-quickdiv.svg?style=for-the-badge&labelColor=black
[lc-url]: https://github.com/tensorush/zig-quickdiv/blob/main/LICENSE
