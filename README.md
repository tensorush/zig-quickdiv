# :lizard: :heavy_division_sign: zig quickdiv

[![CI][ci-shd]][ci-url]
[![CD][cd-shd]][cd-url]
[![DC][dc-shd]][dc-url]
[![CC][cc-shd]][cc-url]
[![LC][lc-shd]][lc-url]

## Zig port of the [QuickDiv library](https://github.com/dtrifuno/quickdiv) created by [Darko Trifunovski](https://github.com/dtrifuno).

### :rocket: Usage

1. Add `quickdiv` as a dependency in your `build.zig.zon`.

    <details>

    <summary><code>build.zig.zon</code> example</summary>

    ```zig
    .{
        .name = "<name_of_your_package>",
        .version = "<version_of_your_package>",
        .dependencies = .{
            .quickdiv = .{
                .url = "https://github.com/tensorush/zig-quickdiv/archive/<git_tag_or_commit_hash>.tar.gz",
                .hash = "<package_hash>",
            },
        },
        .paths = .{
            "src/",
            "build.zig",
            "README.md",
            "LICENSE.md",
            "build.zig.zon",
        },
    }
    ```

    Set `<package_hash>` to `12200000000000000000000000000000000000000000000000000000000000000000` and build your package to find the correct value specified in a compiler error message.

    </details>

2. Add `quickdiv` as a module in your `build.zig`.

    <details>

    <summary><code>build.zig</code> example</summary>

    ```zig
    const quickdiv = b.dependency("quickdiv", .{});
    lib.root_module.addImport("quickdiv", quickdiv.module("quickdiv"));
    ```

    </details>

<!-- MARKDOWN LINKS -->

[ci-shd]: https://img.shields.io/github/actions/workflow/status/tensorush/zig-quickdiv/ci.yaml?branch=main&style=for-the-badge&logo=github&label=CI&labelColor=black
[ci-url]: https://github.com/tensorush/zig-quickdiv/blob/main/.github/workflows/ci.yaml
[cd-shd]: https://img.shields.io/github/actions/workflow/status/tensorush/zig-quickdiv/cd.yaml?branch=main&style=for-the-badge&logo=github&label=CD&labelColor=black
[cd-url]: https://github.com/tensorush/zig-quickdiv/blob/main/.github/workflows/cd.yaml
[dc-shd]: https://img.shields.io/badge/click-F6A516?style=for-the-badge&logo=zig&logoColor=F6A516&label=docs&labelColor=black
[dc-url]: https://tensorush.github.io/zig-quickdiv
[cc-shd]: https://img.shields.io/codecov/c/github/tensorush/zig-quickdiv?style=for-the-badge&labelColor=black
[cc-url]: https://app.codecov.io/gh/tensorush/zig-quickdiv
[lc-shd]: https://img.shields.io/github/license/tensorush/zig-quickdiv.svg?style=for-the-badge&labelColor=black
[lc-url]: https://github.com/tensorush/zig-quickdiv/blob/main/LICENSE.md
