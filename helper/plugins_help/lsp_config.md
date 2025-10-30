
# LSP 配置

nvim-lspconfig 提供的 LSP 配置如下所示。本文档由 Lua 文件自动生成。你可以在 Nvim 中通过运行 `:help lspconfig-all` 查看此文件。

- [LSP 配置](#lsp-配置)
  - [ada\_ls](#ada_ls)
  - [agda\_ls](#agda_ls)
  - [aiken](#aiken)
  - [air](#air)
  - [alloy\_ls](#alloy_ls)
  - [anakin\_language\_server](#anakin_language_server)
  - [angularls](#angularls)
  - [ansiblels](#ansiblels)
  - [antlersls](#antlersls)
  - [apex\_ls](#apex_ls)
  - [arduino\_language\_server](#arduino_language_server)
  - [asm\_lsp](#asm_lsp)
  - [ast\_grep](#ast_grep)
  - [astro](#astro)
  - [atlas](#atlas)
  - [atopile](#atopile)
  - [autohotkey\_lsp](#autohotkey_lsp)
  - [autotools\_ls](#autotools_ls)
  - [awk\_ls](#awk_ls)
  - [azure\_pipelines\_ls](#azure_pipelines_ls)
  - [bacon\_ls](#bacon_ls)
  - [ballerina](#ballerina)
  - [basedpyright](#basedpyright)
  - [bashls](#bashls)
  - [basics\_ls](#basics_ls)
  - [bazelrc\_lsp](#bazelrc_lsp)
  - [beancount](#beancount)
  - [bicep](#bicep)
  - [biome](#biome)
  - [bitbake\_language\_server](#bitbake_language_server)
  - [blueprint\_ls](#blueprint_ls)
  - [bqls](#bqls)
  - [bright\_script](#bright_script)
  - [bsl\_ls](#bsl_ls)
  - [buck2](#buck2)
  - [buddy\_ls](#buddy_ls)
  - [buf\_ls](#buf_ls)
  - [bzl](#bzl)
  - [c3\_lsp](#c3_lsp)
  - [cairo\_ls](#cairo_ls)
  - [ccls](#ccls)
  - [cds\_lsp](#cds_lsp)
  - [cir\_lsp\_server](#cir_lsp_server)
  - [circom-lsp](#circom-lsp)
  - [clangd](#clangd)
  - [clarinet](#clarinet)
  - [clojure\_lsp](#clojure_lsp)
  - [cmake](#cmake)
  - [cobol\_ls](#cobol_ls)
  - [codebook](#codebook)
  - [coffeesense](#coffeesense)
  - [contextive](#contextive)
  - [copilot](#copilot)
  - [coq\_lsp](#coq_lsp)
  - [crystalline](#crystalline)
  - [csharp\_ls](#csharp_ls)
  - [cspell\_ls](#cspell_ls)
  - [css\_variables](#css_variables)
  - [cssls](#cssls)
  - [cssmodules\_ls](#cssmodules_ls)
  - [cucumber\_language\_server](#cucumber_language_server)
  - [cue](#cue)
  - [custom\_elements\_ls](#custom_elements_ls)
  - [cypher\_ls](#cypher_ls)
  - [daedalus\_ls](#daedalus_ls)
  - [dafny](#dafny)
  - [dagger](#dagger)
  - [dartls](#dartls)
  - [dcmls](#dcmls)
  - [debputy](#debputy)
  - [denols](#denols)
  - [dhall\_lsp\_server](#dhall_lsp_server)
  - [diagnosticls](#diagnosticls)
  - [digestif](#digestif)
  - [djls](#djls)
  - [djlsp](#djlsp)
  - [docker\_compose\_language\_service](#docker_compose_language_service)
  - [docker\_language\_server](#docker_language_server)
  - [dockerls](#dockerls)
  - [dolmenls](#dolmenls)
  - [dotls](#dotls)
  - [dprint](#dprint)
  - [ds\_pinyin\_lsp](#ds_pinyin_lsp)
  - [dts\_lsp](#dts_lsp)
  - [earthlyls](#earthlyls)
  - [ecsact](#ecsact)
  - [efm](#efm)
  - [elixirls](#elixirls)
  - [elmls](#elmls)
  - [elp](#elp)
  - [ember](#ember)
  - [emmet\_language\_server](#emmet_language_server)
  - [emmet\_ls](#emmet_ls)
  - [emmylua\_ls](#emmylua_ls)
  - [erg\_language\_server](#erg_language_server)
  - [erlangls](#erlangls)
  - [esbonio](#esbonio)
  - [eslint](#eslint)
  - [expert](#expert)
  - [facility\_language\_server](#facility_language_server)
  - [fennel\_language\_server](#fennel_language_server)
  - [fennel\_ls](#fennel_ls)
  - [fish\_lsp](#fish_lsp)
  - [flow](#flow)
  - [flux\_lsp](#flux_lsp)
  - [foam\_ls](#foam_ls)
  - [fortls](#fortls)
  - [fsautocomplete](#fsautocomplete)
  - [fsharp\_language\_server](#fsharp_language_server)
  - [fstar](#fstar)
  - [futhark\_lsp](#futhark_lsp)
  - [gdscript](#gdscript)
  - [gdshader\_lsp](#gdshader_lsp)
  - [gh\_actions\_ls](#gh_actions_ls)
  - [ghcide](#ghcide)
  - [ghdl\_ls](#ghdl_ls)
  - [ginko\_ls](#ginko_ls)
  - [gitlab\_ci\_ls](#gitlab_ci_ls)
  - [glasgow](#glasgow)
  - [gleam](#gleam)
  - [glint](#glint)
  - [glsl\_analyzer](#glsl_analyzer)
  - [glslls](#glslls)
  - [gnls](#gnls)
  - [golangci\_lint\_ls](#golangci_lint_ls)
  - [gopls](#gopls)
  - [gradle\_ls](#gradle_ls)
  - [grammarly](#grammarly)
  - [graphql](#graphql)
  - [groovyls](#groovyls)
  - [guile\_ls](#guile_ls)
  - [harper\_ls](#harper_ls)
  - [hdl\_checker](#hdl_checker)
  - [helm\_ls](#helm_ls)
  - [herb\_ls](#herb_ls)
  - [hhvm](#hhvm)
  - [hie](#hie)
  - [hlasm](#hlasm)
  - [hls](#hls)
  - [hoon\_ls](#hoon_ls)
  - [html](#html)
  - [htmx](#htmx)
  - [hydra\_lsp](#hydra_lsp)
  - [hyprls](#hyprls)
  - [idris2\_lsp](#idris2_lsp)
  - [intelephense](#intelephense)
  - [janet\_lsp](#janet_lsp)
  - [java\_language\_server](#java_language_server)
  - [jdtls](#jdtls)
  - [jedi\_language\_server](#jedi_language_server)
  - [jinja\_lsp](#jinja_lsp)
  - [jqls](#jqls)
  - [jsonls](#jsonls)
  - [jsonnet\_ls](#jsonnet_ls)
  - [julials](#julials)
  - [just](#just)
  - [kcl](#kcl)
  - [koka](#koka)
  - [kotlin\_language\_server](#kotlin_language_server)
  - [kotlin\_lsp](#kotlin_lsp)
  - [kulala\_ls](#kulala_ls)
  - [laravel\_ls](#laravel_ls)
  - [lean3ls](#lean3ls)
  - [leanls](#leanls)
  - [lelwel\_ls](#lelwel_ls)
  - [lemminx](#lemminx)
  - [lexical](#lexical)
  - [lsp\_ai](#lsp_ai)
  - [ltex](#ltex)
  - [ltex\_plus](#ltex_plus)
  - [lua\_ls](#lua_ls)
  - [luau\_lsp](#luau_lsp)
  - [lwc\_ls](#lwc_ls)
  - [m68k](#m68k)
  - [markdown\_oxide](#markdown_oxide)
  - [marko-js](#marko-js)
  - [marksman](#marksman)
  - [matlab\_ls](#matlab_ls)
  - [mdx\_analyzer](#mdx_analyzer)
  - [mesonlsp](#mesonlsp)
  - [metals](#metals)
  - [millet](#millet)
  - [mint](#mint)
  - [mlir\_lsp\_server](#mlir_lsp_server)
  - [mlir\_pdll\_lsp\_server](#mlir_pdll_lsp_server)
  - [mm0\_ls](#mm0_ls)
  - [mojo](#mojo)
  - [motoko\_lsp](#motoko_lsp)
  - [move\_analyzer](#move_analyzer)
  - [msbuild\_project\_tools\_server](#msbuild_project_tools_server)
  - [muon](#muon)
  - [mutt\_ls](#mutt_ls)
  - [nelua\_lsp](#nelua_lsp)
  - [neocmake](#neocmake)
  - [nextflow\_ls](#nextflow_ls)
  - [nextls](#nextls)
  - [nginx\_language\_server](#nginx_language_server)
  - [nickel\_ls](#nickel_ls)
  - [nil\_ls](#nil_ls)
  - [nim\_langserver](#nim_langserver)
  - [nimls](#nimls)
  - [nixd](#nixd)
  - [nomad\_lsp](#nomad_lsp)
  - [ntt](#ntt)
  - [nushell](#nushell)
  - [nxls](#nxls)
  - [ocamllsp](#ocamllsp)
  - [ols](#ols)
  - [omnisharp](#omnisharp)
  - [opencl\_ls](#opencl_ls)
  - [openscad\_ls](#openscad_ls)
  - [openscad\_lsp](#openscad_lsp)
  - [oxlint](#oxlint)
  - [pact\_ls](#pact_ls)
  - [pasls](#pasls)
  - [pbls](#pbls)
  - [perlls](#perlls)
  - [perlnavigator](#perlnavigator)
  - [perlpls](#perlpls)
  - [pest\_ls](#pest_ls)
  - [phan](#phan)
  - [phpactor](#phpactor)
  - [phptools](#phptools)
  - [pico8\_ls](#pico8_ls)
  - [please](#please)
  - [pli](#pli)
  - [poryscript\_pls](#poryscript_pls)
  - [postgres\_lsp](#postgres_lsp)
  - [powershell\_es](#powershell_es)
  - [prismals](#prismals)
  - [prolog\_ls](#prolog_ls)
  - [prosemd\_lsp](#prosemd_lsp)
  - [protols](#protols)
  - [psalm](#psalm)
  - [pug](#pug)
  - [puppet](#puppet)
  - [purescriptls](#purescriptls)
  - [pylsp](#pylsp)
  - [pylyzer](#pylyzer)
  - [pyre](#pyre)
  - [pyrefly](#pyrefly)
  - [pyright](#pyright)
  - [qmlls](#qmlls)
  - [quick\_lint\_js](#quick_lint_js)
  - [r\_language\_server](#r_language_server)
  - [racket\_langserver](#racket_langserver)
  - [raku\_navigator](#raku_navigator)
  - [reason\_ls](#reason_ls)
  - [regal](#regal)
  - [regols](#regols)
  - [remark\_ls](#remark_ls)
  - [rescriptls](#rescriptls)
  - [rls](#rls)
  - [rnix](#rnix)
  - [robotcode](#robotcode)
  - [robotframework\_ls](#robotframework_ls)
  - [roc\_ls](#roc_ls)
  - [rome](#rome)
  - [roslyn\_ls](#roslyn_ls)
  - [rpmspec](#rpmspec)
  - [rubocop](#rubocop)
  - [ruby\_lsp](#ruby_lsp)
  - [ruff](#ruff)
  - [ruff\_lsp](#ruff_lsp)
  - [rune\_languageserver](#rune_languageserver)
  - [rust\_analyzer](#rust_analyzer)
  - [salt\_ls](#salt_ls)
  - [scheme\_langserver](#scheme_langserver)
  - [scry](#scry)
  - [selene3p\_ls](#selene3p_ls)
  - [serve\_d](#serve_d)
  - [shopify\_theme\_ls](#shopify_theme_ls)
  - [sixtyfps](#sixtyfps)
  - [slangd](#slangd)
  - [slint\_lsp](#slint_lsp)
  - [smarty\_ls](#smarty_ls)
  - [smithy\_ls](#smithy_ls)
  - [snakeskin\_ls](#snakeskin_ls)
  - [snyk\_ls](#snyk_ls)
  - [solang](#solang)
  - [solargraph](#solargraph)
  - [solc](#solc)
  - [solidity](#solidity)
  - [solidity\_ls](#solidity_ls)
  - [solidity\_ls\_nomicfoundation](#solidity_ls_nomicfoundation)
  - [somesass\_ls](#somesass_ls)
  - [sorbet](#sorbet)
  - [sourcekit](#sourcekit)
  - [spectral](#spectral)
  - [spyglassmc\_language\_server](#spyglassmc_language_server)
  - [sqlls](#sqlls)
  - [sqls](#sqls)
  - [sqruff](#sqruff)
  - [standardrb](#standardrb)
  - [starlark\_rust](#starlark_rust)
  - [starpls](#starpls)
  - [statix](#statix)
  - [steep](#steep)
  - [stimulus\_ls](#stimulus_ls)
  - [stylelint\_lsp](#stylelint_lsp)
  - [stylua](#stylua)
  - [stylua3p\_ls](#stylua3p_ls)
  - [superhtml](#superhtml)
  - [svelte](#svelte)
  - [svlangserver](#svlangserver)
  - [svls](#svls)
  - [swift\_mesonls](#swift_mesonls)
  - [syntax\_tree](#syntax_tree)
  - [systemd\_ls](#systemd_ls)
  - [tabby\_ml](#tabby_ml)
  - [tailwindcss](#tailwindcss)
  - [taplo](#taplo)
  - [tblgen\_lsp\_server](#tblgen_lsp_server)
  - [teal\_ls](#teal_ls)
  - [templ](#templ)
  - [termux\_language\_server](#termux_language_server)
  - [terraform\_lsp](#terraform_lsp)
  - [terraformls](#terraformls)
  - [texlab](#texlab)
  - [textlsp](#textlsp)
  - [tflint](#tflint)
  - [theme\_check](#theme_check)
  - [thriftls](#thriftls)
  - [tilt\_ls](#tilt_ls)
  - [tinymist](#tinymist)
  - [tofu\_ls](#tofu_ls)
  - [tombi](#tombi)
  - [ts\_ls](#ts_ls)
  - [ts\_query\_ls](#ts_query_ls)
  - [tsgo](#tsgo)
  - [tsp\_server](#tsp_server)
  - [ttags](#ttags)
  - [turbo\_ls](#turbo_ls)
  - [turtle\_ls](#turtle_ls)
  - [tvm\_ffi\_navigator](#tvm_ffi_navigator)
  - [twiggy\_language\_server](#twiggy_language_server)
  - [ty](#ty)
  - [typeprof](#typeprof)
  - [typos\_lsp](#typos_lsp)
  - [typst\_lsp](#typst_lsp)
  - [uiua](#uiua)
  - [ungrammar\_languageserver](#ungrammar_languageserver)
  - [unison](#unison)
  - [unocss](#unocss)
  - [uvls](#uvls)
  - [v\_analyzer](#v_analyzer)
  - [vacuum](#vacuum)
  - [vala\_ls](#vala_ls)
  - [vale\_ls](#vale_ls)
  - [vectorcode\_server](#vectorcode_server)
  - [verible](#verible)
  - [veridian](#veridian)
  - [veryl\_ls](#veryl_ls)
  - [vespa\_ls](#vespa_ls)
  - [vhdl\_ls](#vhdl_ls)
  - [vimls](#vimls)
  - [visualforce\_ls](#visualforce_ls)
  - [vls](#vls)
  - [volar](#volar)
  - [vscoqtop](#vscoqtop)
  - [vtsls](#vtsls)
  - [vue\_ls](#vue_ls)
  - [wasm\_language\_tools](#wasm_language_tools)
  - [wgsl\_analyzer](#wgsl_analyzer)
  - [yamlls](#yamlls)
  - [yang\_lsp](#yang_lsp)
  - [yls](#yls)
  - [ziggy](#ziggy)
  - [ziggy\_schema](#ziggy_schema)
  - [zk](#zk)
  - [zls](#zls)
  - [zuban](#zuban)

## ada_ls

https://github.com/AdaCore/ada_language_server

安装说明可以在[这里](https://github.com/AdaCore/ada_language_server#Install)找到。

特定于工作区的[设置](https://github.com/AdaCore/ada_language_server/blob/master/doc/settings.md)，例如 `projectFile`，可以在工作区根目录的 `.als.json` 文件中提供。
或者，配置可以作为 "settings" 对象传递给 `vim.lsp.config('ada_ls', {})`：

```lua
vim.lsp.config('ada_ls', {
    settings = {
      ada = {
        projectFile = "project.gpr";
        scenarioVariables = { ... };
      }
    }
})
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('ada_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "ada_language_server" }
  ```
- `filetypes` :
  ```lua
  { "ada" }
  ```
- `root_dir`: [../lsp/ada_ls.lua:24](../lsp/ada_ls.lua#L24)

---

## agda_ls

https://github.com/agda/agda-language-server

Agda 的语言服务器。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('agda_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "als" }
  ```
- `filetypes` :
  ```lua
  { "agda" }
  ```
- `root_dir`: [../lsp/agda_ls.lua:10](../lsp/agda_ls.lua#L10)

---

## aiken

https://github.com/aiken-lang/aiken

Aiken 编程语言的语言服务器。
[安装](https://aiken-lang.org/installation-instructions)

它可以被

启用语言服务器的代码片段：
```lua
vim.lsp.enable('aiken')
```

默认配置：
- `cmd` :
  ```lua
  { "aiken", "lsp" }
  ```
- `filetypes` :
  ```lua
  { "aiken" }
  ```
- `root_markers` :
  ```lua
  { "aiken.toml", ".git" }
  ```

---

## air

https://github.com/posit-dev/air

Air 是一个 R 语言格式化程序和语言服务器，用 Rust 编写。

更多详情请参阅[文档](https://posit-dev.github.io/air/editors.html)。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('air')
```

默认配置：
- `cmd` :
  ```lua
  { "air", "language-server" }
  ```
- `filetypes` :
  ```lua
  { "r" }
  ```
- `root_markers` :
  ```lua
  { "air.toml", ".air.toml", ".git" }
  ```

---

## alloy_ls

https://github.com/AlloyTools/org.alloytools.alloy

Alloy 是一种用于描述结构的形式化规范语言，也是一个用于探索这些结构的工具。

您可能还需要为 Alloy (*.als) 文件配置文件类型：

```
autocmd BufNewFile,BufRead *.als set filetype=alloy
```

或者

```lua
vim.filetype.add({
  pattern = {
    ['.*/*.als'] = 'alloy',
  },
})
```

或者，您可以使用语法插件，如 https://github.com/runoshun/vim-alloy。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('alloy_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "alloy", "lsp" }
  ```
- `filetypes` :
  ```lua
  { "alloy" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## anakin_language_server

https://pypi.org/project/anakin-language-server/

`anakin-language-server` 是另一个基于 Jedi 的 Python 语言服务器。

可用选项：

* 初始化：https://github.com/muffinmad/anakin-language-server#initialization-option
* 配置：https://github.com/muffinmad/anakin-language-server#configuration-options

启用语言服务器的代码片段：
```lua
vim.lsp.enable('anakin_language_server')
```

默认配置：
- `cmd` :
  ```lua
  { "anakinls" }
  ```
- `filetypes` :
  ```lua
  { "python" }
  ```
- `root_markers` :
  ```lua
  { "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", "Pipfile", ".git" }
  ```
- `settings` :
  ```lua
  {
    anakinls = {
      pyflakes_errors = { "ImportStarNotPermitted", "UndefinedExport", "UndefinedLocal", "UndefinedName", "DuplicateArgument", "MultiValueRepeatedKeyLiteral", "MultiValueRepeatedKeyVariable", "FutureFeatureNotDefined", "LateFutureImport", "ReturnOutsideFunction", "YieldOutsideFunction", "ContinueOutsideLoop", "BreakOutsideLoop", "TwoStarredExpressions", "TooManyExpressionsInStarredAssignment", "ForwardAnnotationSyntaxError", "RaiseNotImplemented", "StringDotFormatExtraPositionalArguments", "StringDotFormatExtraNamedArguments", "StringDotFormatMissingArgument", "StringDotFormatMixingAutomatic", "StringDotFormatInvalidFormat", "PercentFormatInvalidFormat", "PercentFormatMixedPositionalAndNamed", "PercentFormatUnsupportedFormat", "PercentFormatPositionalCountMismatch", "PercentFormatExtraNamedArguments", "PercentFormatMissingArgument", "PercentFormatExpectedMapping", "PercentFormatExpectedSequence", "PercentFormatStarRequiresSequence" }
    }
  }
  ```

---

## angularls

https://github.com/angular/vscode-ng-language-service
`angular-language-server` 可以通过 npm `npm install -g @angular/language-server` 安装。

```lua
local project_library_path = "/path/to/project/lib"
local cmd = {"ngserver", "--stdio", "--tsProbeLocations", project_library_path , "--ngProbeLocations", project_library_path}

vim.lsp.config('angularls', {
  cmd = cmd,
})
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('angularls')
```

默认配置：
- `cmd` :
  ```lua
  { "ngserver", "--stdio", "--tsProbeLocations", "../..,?/node_modules", "--ngProbeLocations", "../../@angular/language-server/node_modules,?/node_modules/@angular/language-server/node_modules", "--angularCoreVersion", "" }
  ```
- `filetypes` :
  ```lua
  { "typescript", "html", "typescriptreact", "typescript.tsx", "htmlangular" }
  ```
- `root_markers` :
  ```lua
  { "angular.json", "nx.json" }
  ```

---

## ansiblels

https://github.com/ansible/vscode-ansible

用于 Ansible 配置管理工具的语言服务器。

`ansible-language-server` 可以通过 `npm` 安装：

```sh
npm install -g @ansible/ansible-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('ansiblels')
```

默认配置：
- `cmd` :
  ```lua
  { "ansible-language-server", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "yaml.ansible" }
  ```
- `root_markers` :
  ```lua
  { "ansible.cfg", ".ansible-lint" }
  ```
- `settings` :
  ```lua
  {
    ansible = {
      ansible = {
        path = "ansible"
      },
      executionEnvironment = {
        enabled = false
      },
      python = {
        interpreterPath = "python"
      },
      validation = {
        enabled = true,
        lint = {
          enabled = true,
          path = "ansible-lint"
        }
      }
    }
  }
  ```

---

## antlersls

https://www.npmjs.com/package/antlers-language-server

`antlersls` 可以通过 `npm` 安装：
```sh
npm install -g antlers-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('antlersls')
```

默认配置：
- `cmd` :
  ```lua
  { "antlersls", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "html", "antlers" }
  ```
- `root_markers` :
  ```lua
  { "composer.json" }
  ```

---

## apex_ls

https://github.com/forcedotcom/salesforcedx-vscode

 Apex 的语言服务器。

 对于手动安装，请从 [VSCode 扩展](https://github.com/forcedotcom/salesforcedx-vscode/tree/develop/packages/salesforcedx-vscode-apex) 下载 JAR 文件，并适当调整 `apex_jar_path`。

 ```lua
 vim.lsp.config('apex_ls', {
   apex_jar_path = '/path/to/apex-jorje-lsp.jar',
   apex_enable_semantic_errors = false, -- 是否允许 Apex 语言服务器显示语义错误
   apex_enable_completion_statistics = false, -- 是否允许 Apex 语言服务器收集代码补全使用情况的遥测数据
 }
```

 使用 Mason 的配置示例：

```lua
 vim.lsp.config('apex_ls', {
   apex_jar_path = vim.fn.stdpath('data') .. '/mason/share/apex-language-server/apex-jorje-lsp.jar',
 }
```

 为了获得完整的体验，您可能需要确保安装了 'apex' 的 treesitter 解析器 (:TSInstall apex)，并为 apex (*.cls) 文件配置文件类型：

 ```lua
 vim.filetype.add({
   pattern = {
     ['.*/*.cls'] = 'apex',
   },
 })
 ```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('apex_ls')
```

默认配置：
- `cmd`: [../lsp/apex_ls.lua:37](../lsp/apex_ls.lua#L37)
- `filetypes` :
  ```lua
  { "apex", "apexcode" }
  ```
- `root_markers` :
  ```lua
  { "sfdx-project.json" }
  ```

---

## arduino_language_server

https://github.com/arduino/arduino-language-server

Arduino 的语言服务器

可以通过运行以下命令安装 `arduino-language-server`：

```
go install github.com/arduino/arduino-language-server@latest
```

还必须安装 `arduino-cli` 工具。请按照[这些安装说明](https://arduino.github.io/arduino-cli/latest/installation/)为您的平台进行安装。

安装 `arduino-cli` 后，如果您尚未这样做，请按照[这些说明](https://arduino.github.io/arduino-cli/latest/getting-started/#create-a-configuration-file)生成配置文件，并确保您[安装了任何相关的平台库](https://arduino.github.io/arduino-cli/latest/getting-started/#install-the-core-for-your-board)。

语言服务器还需要安装 `clangd`。请按照[这些安装说明](https://clangd.llvm.org/installation)为您的平台进行安装。

如果您还没有 sketch，请创建一个。

```sh
$ arduino-cli sketch new test
$ cd test
```

您需要一个 `sketch.yaml` 文件，以便语言服务器理解您的项目。它还可以节省您每次编译或上传文件时向 `arduino-cli` 传递选项。您可以使用以下命令生成该文件。

首先收集有关您开发板的一些信息。确保您的开发板已连接并运行以下命令：

```sh
$ arduino-cli board list
Port         Protocol Type              Board Name  FQBN            Core
/dev/ttyACM0 serial   Serial Port (USB) Arduino Uno arduino:avr:uno arduino:avr
```

然后生成文件：

```sh
arduino-cli board attach -p /dev/ttyACM0 -b arduino:avr:uno test.ino
```

生成的文件应如下所示：

```yaml
default_fqbn: arduino:avr:uno
default_port: /dev/ttyACM0
```

您的文件夹结构应如下所示：

```
.
├── test.ino
└── sketch.yaml
```

有关配置选项的进一步说明，请运行 `arduino-language-server --help`。

请注意，一个上游错误导致在某些情况下关键字未被语言服务器定义。
参考：https://github.com/arduino/arduino-ide/issues/159

启用语言服务器的代码片段：
```lua
vim.lsp.enable('arduino_language_server')
```

默认配置：
- `capabilities` :
  ```lua
  {
    textDocument = {
      semanticTokens = vim.NIL
    },
    workspace = {
      semanticTokens = vim.NIL
    }
  }
  ```
- `cmd` :
  ```lua
  { "arduino-language-server" }
  ```
- `filetypes` :
  ```lua
  { "arduino" }
  ```
- `root_dir`: [../lsp/arduino_language_server.lua:74](../lsp/arduino_language_server.lua#L74)

---

## asm_lsp

https://github.com/bergercookie/asm-lsp

用于 NASM/GAS/GO Assembly 的语言服务器

`asm-lsp` 可以通过 cargo 安装：
cargo install asm-lsp

启用语言服务器的代码片段：
```lua
vim.lsp.enable('asm_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "asm-lsp" }
  ```
- `filetypes` :
  ```lua
  { "asm", "vmasm" }
  ```
- `root_markers` :
  ```lua
  { ".asm-lsp.toml", ".git" }
  ```

---

## ast_grep

https://ast-grep.github.io/

ast-grep(sg) 是一个快速、多语言的工具，用于大规模代码结构搜索、检查和重写。
ast-grep LSP 仅在其根目录中有 `sgconfig.y[a]ml` 的项目中工作。
```sh
npm install [-g] @ast-grep/cli
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('ast_grep')
```

默认配置：
- `cmd` :
  ```lua
  { "ast-grep", "lsp" }
  ```
- `filetypes` :
  ```lua
  { "bash", "c", "cpp", "csharp", "css", "elixir", "go", "haskell", "html", "java", "javascript", "javascriptreact", "javascript.jsx", "json", "kotlin", "lua", "nix", "php", "python", "ruby", "rust", "scala", "solidity", "swift", "typescript", "typescriptreact", "typescript.tsx", "yaml" }
  ```
- `reuse_client`: [../lsp/ast_grep.lua:12](../lsp/ast_grep.lua#L12)
- `root_markers` :
  ```lua
  { "sgconfig.yaml", "sgconfig.yml" }
  ```
- `workspace_required` : `true`

---

## astro

https://github.com/withastro/language-tools/tree/main/packages/language-server

`astro-ls` 可以通过 `npm` 安装：
```sh
npm install -g @astrojs/language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('astro')
```

默认配置：
- `before_init`: [../lsp/astro.lua:13](../lsp/astro.lua#L13)
- `cmd` :
  ```lua
  { "astro-ls", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "astro" }
  ```
- `init_options` :
  ```lua
  {
    typescript = {}
  }
  ```
- `root_markers` :
  ```lua
  { "package.json", "tsconfig.json", "jsconfig.json", ".git" }
  ```

---

## atlas

https://github.com/ariga/atlas

用于 Atlas 配置和模式文件的语言服务器。

您可能还需要为 *.hcl 文件配置文件类型：

```vim
autocmd BufNewFile,BufRead atlas.hcl set filetype=atlas-config
autocmd BufNewFile,BufRead *.my.hcl set filetype=atlas-schema-mysql
autocmd BufNewFile,BufRead *.pg.hcl set filetype=atlas-schema-postgresql
autocmd BufNewFile,BufRead *.lt.hcl set filetype=atlas-schema-sqlite
autocmd BufNewFile,BufRead *.ch.hcl set filetype=atlas-schema-clickhouse
autocmd BufNewFile,BufRead *.ms.hcl set filetype=atlas-schema-mssql
autocmd BufNewFile,BufRead *.rs.hcl set filetype=atlas-schema-redshift
autocmd BufNewFile,BufRead *.test.hcl set filetype=atlas-test
autocmd BufNewFile,BufRead *.plan.hcl set filetype=atlas-plan
autocmd BufNewFile,BufRead *.rule.hcl set filetype=atlas-rule
```

或者

```lua
vim.filetype.add({
  filename = {
    ['atlas.hcl'] = 'atlas-config',
  },
  pattern = {
    ['.*/*.my.hcl'] = 'atlas-schema-mysql',
    ['.*/*.pg.hcl'] = 'atlas-schema-postgresql',
    ['.*/*.lt.hcl'] = 'atlas-schema-sqlite',
    ['.*/*.ch.hcl'] = 'atlas-schema-clickhouse',
    ['.*/*.ms.hcl'] = 'atlas-schema-mssql',
    ['.*/*.rs.hcl'] = 'atlas-schema-redshift',
    ['.*/*.test.hcl'] = 'atlas-test',
    ['.*/*.plan.hcl'] = 'atlas-plan',
    ['.*/*.rule.hcl'] = 'atlas-rule',
  },
})
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('atlas')
```

默认配置：
- `cmd` :
  ```lua
  { "atlas", "lsp", "serve" }
  ```
- `filetypes` :
  ```lua
  { "atlas-config", "atlas-schema-mysql", "atlas-schema-postgresql", "atlas-schema-sqlite", "atlas-schema-clickhouse", "atlas-schema-mssql", "atlas-schema-redshift", "atlas-test", "atlas-plan", "atlas-rule" }
  ```
- `root_markers` :
  ```lua
  { "atlas.hcl", ".git" }
  ```

---

## atopile

https://github.com/atopile/atopile

用于 atopile 的语言服务器。

`atopile-lsp` 可以通过 pip 安装：
```sh
pip install atopile-lsp
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('atopile')
```

默认配置：
- `cmd` :
  ```lua
  { "ato", "lsp" }
  ```
- `filetypes` :
  ```lua
  { "ato" }
  ```
- `root_markers` :
  ```lua
  { "ato.yaml", "ato.yml", ".git" }
  ```

---

## autohotkey_lsp

https://github.com/zero-plusplus/vscode-autohotkey2-lsp

AutoHotkey 的语言服务器

`autohotkey2-lsp` 可以通过 `npm` 安装：
```sh
npm install -g autohotkey2-lsp
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('autohotkey_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "autohotkey2-lsp" }
  ```
- `filetypes` :
  ```lua
  { "autohotkey" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## autotools_ls

https://github.com/microcai/autotools-language-server

用于 autotools 的语言服务器

`autotools-language-server` 可以通过 cargo 安装：
```sh
cargo install autotools-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('autotools_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "autotools-language-server" }
  ```
- `filetypes` :
  ```lua
  { "autotools" }
  ```
- `root_markers` :
  ```lua
  { "configure.ac", "configure.in" }
  ```

---

## awk_ls

https://github.com/Beaglefoot/awk-language-server

AWK 的语言服务器

`awk-language-server` 可以通过 `npm` 安装：
```sh
npm install -g awk-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('awk_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "awk-language-server" }
  ```
- `filetypes` :
  ```lua
  { "awk" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## azure_pipelines_ls

https://github.com/microsoft/azure-pipelines-vscode

Azure Pipelines 的语言服务器

`azure-pipelines-language-server` 可以通过 `npm` 安装：
```sh
npm install -g azure-pipelines-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('azure_pipelines_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "azure-pipelines-language-server", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "azure-pipelines" }
  ```
- `root_markers` :
  ```lua
  { "azure-pipelines.yml", "azure-pipelines.yaml" }
  ```

---

## bacon_ls

https://github.com/tsnauman/bacon-ls

Bacon 的语言服务器

`bacon-ls` 可以通过 cargo 安装：
```sh
cargo install bacon-ls
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('bacon_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "bacon-ls" }
  ```
- `filetypes` :
  ```lua
  { "bacon" }
  ```
- `root_markers` :
  ```lua
  { "bacon.toml", ".git" }
  ```

---

## ballerina

https://github.com/ballerina-platform/ballerina-lang

Ballerina 编程语言的语言服务器。

`ballerina` 可以通过 `npm` 安装：
```sh
npm install -g @ballerina/ballerina-langserver
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('ballerina')
```

默认配置：
- `cmd` :
  ```lua
  { "ballerina-langserver", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "ballerina" }
  ```
- `root_markers` :
  ```lua
  { "Ballerina.toml" }
  ```

---

## basedpyright

https://github.com/basedpyright/basedpyright

基于 Unicorn 的 Pyright 分支。

`basedpyright` 可以通过 pip 安装：
```sh
pip install basedpyright
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('basedpyright')
```

默认配置：
- `cmd` :
  ```lua
  { "basedpyright-langserver", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "python" }
  ```
- `root_markers` :
  ```lua
  { "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", "Pipfile", ".git" }
  ```

---

## bashls

https://github.com/bash-lsp/bash-language-server

Bash 的语言服务器

`bash-language-server` 可以通过 `npm` 安装：
```sh
npm install -g bash-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('bashls')
```

默认配置：
- `cmd` :
  ```lua
  { "bash-language-server", "start" }
  ```
- `filetypes` :
  ```lua
  { "sh", "zsh" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## basics_ls

https://github.com/artempyanykh/basics-ls

用于多种语言的简单语言服务器，提供基本的语法高亮和诊断功能。

`basics-ls` 可以通过 cargo 安装：
```sh
cargo install basics-ls
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('basics_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "basics-ls" }
  ```
- `filetypes` :
  ```lua
  { "c", "cpp", "rust", "go", "python", "java", "javascript", "typescript", "php", "ruby", "lua", "perl", "bash", "sh", "zsh", "fish", "powershell", "html", "css", "scss", "less", "json", "yaml", "toml", "ini", "xml", "markdown", "dockerfile", "makefile", "cmake", "sql", "graphql", "vim", "help" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## bazelrc_lsp

https://github.com/kythe/bazelrc-language-server

Bazelrc 的语言服务器

`bazelrc-language-server` 可以通过 `npm` 安装：
```sh
npm install -g @kythe/bazelrc-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('bazelrc_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "bazelrc-language-server" }
  ```
- `filetypes` :
  ```lua
  { "bazelrc" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## beancount

https://github.com/polarmutex/beancount-language-server#readme

Beancount 的语言服务器

`beancount-language-server` 可以通过 `npm` 安装：
```sh
npm install -g beancount-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('beancount')
```

默认配置：
- `cmd` :
  ```lua
  { "beancount-language-server", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "beancount" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## bicep

https://github.com/azure/bicep
Bicep 语言服务器
Bicep 语言服务器包含在 bicep 二进制文件中。请参阅[安装说明](https://github.com/Azure/bicep/blob/main/docs/installing.md)。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('bicep')
```

默认配置：
- `cmd` :
  ```lua
  { "bicep", "lsp" }
  ```
- `filetypes` :
  ```lua
  { "bicep" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## biome

https://biomejs.dev

Biome 是一个支持多种语言的格式化程序和语言服务器。

`biome` 可以通过 `npm` 安装：
```sh
npm install -g @biomejs/biome
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('biome')
```

默认配置：
- `cmd` :
  ```lua
  { "biome", "lsp-proxy" }
  ```
- `filetypes` :
  ```lua
  { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx", "json", "jsonc" }
  ```
- `root_markers` :
  ```lua
  { "biome.json", ".git" }
  ```

---

## bitbake_language_server

https://github.com/yoctoproject/vscode-bitbake

BitBake 的语言服务器

`bitbake-language-server` 可以通过 `npm` 安装：
```sh
npm install -g bitbake-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('bitbake_language_server')
```

默认配置：
- `cmd` :
  ```lua
  { "bitbake-language-server" }
  ```
- `filetypes` :
  ```lua
  { "bitbake" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## blueprint_ls

https://github.com/blueprint-lang/blueprint-ls

Blueprint 的语言服务器

`blueprint-ls` 可以通过 cargo 安装：
```sh
cargo install blueprint-ls
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('blueprint_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "blueprint-ls" }
  ```
- `filetypes` :
  ```lua
  { "blueprint" }
  ```
- `root_markers` :
  ```lua
  { "blueprint.toml", ".git" }
  ```

---

## bqls

https://github.com/superfly/lsp

用于 BQN 的语言服务器

`bqls` 可以通过 go 安装：
```sh
go install github.com/superfly/lsp/cmd/bqls@latest
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('bqls')
```

默认配置：
- `cmd` :
  ```lua
  { "bqls" }
  ```
- `filetypes` :
  ```lua
  { "bqn" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## bright_script

https://github.com/RokuCommunity/brighterscript

BrightScript 的语言服务器

`brighterscript` 可以通过 `npm` 安装：
```sh
npm install -g brighterscript
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('bright_script')
```

默认配置：
- `cmd` :
  ```lua
  { "bsc", "--lsp" }
  ```
- `filetypes` :
  ```lua
  { "brightscript" }
  ```
- `root_markers` :
  ```lua
  { "manifest", ".git" }
  ```

---

## bsl_ls

https://github.com/1c-syntax/bsl-language-server

1C (BSL) 的语言服务器 - 1C:Enterprise 8 和 OneScript 的语言

`bsl-language-server` 可以通过 `npm` 安装：
```sh
npm install -g bsl-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('bsl_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "bsl-language-server", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "bsl", "os" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## buck2

https://github.com/facebook/buck2

Buck2 的语言服务器

`buck2` 可以通过 cargo 安装：
```sh
cargo install --git https://github.com/facebook/buck2.git buck2
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('buck2')
```

默认配置：
- `cmd` :
  ```lua
  { "buck2", "lsp" }
  ```
- `filetypes` :
  ```lua
  { "bzl", "starlark" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## buddy_ls

https://github.com/buddy-lang/buddy-lsp

Buddy 的语言服务器

`buddy-lsp` 可以通过 cargo 安装：
```sh
cargo install buddy-lsp
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('buddy_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "buddy-lsp" }
  ```
- `filetypes` :
  ```lua
  { "buddy" }
  ```
- `root_markers` :
  ```lua
  { "buddy.toml", ".git" }
  ```

---

## buf_ls

https://github.com/bufbuild/buf-language-server

Buf 的语言服务器

`buf-language-server` 可以通过 `npm` 安装：
```sh
npm install -g @bufbuild/buf-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('buf_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "buf-language-server" }
  ```
- `filetypes` :
  ```lua
  { "proto" }
  ```
- `root_markers` :
  ```lua
  { "buf.yaml", ".git" }
  ```

---

## bzl

https://github.com/facebook/buck2

Buck2 的语言服务器

`buck2` 可以通过 cargo 安装：
```sh
cargo install --git https://github.com/facebook/buck2.git buck2
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('bzl')
```

默认配置：
- `cmd` :
  ```lua
  { "buck2", "lsp" }
  ```
- `filetypes` :
  ```lua
  { "bzl", "starlark" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## c3_lsp

https://github.com/c3lang/c3c

C3 的语言服务器

`c3c` 可以通过 cargo 安装：
```sh
cargo install --git https://github.com/c3lang/c3c c3c
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('c3_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "c3c", "lsp" }
  ```
- `filetypes` :
  ```lua
  { "c3" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## cairo_ls

https://github.com/starkware-libs/cairo

Cairo 的语言服务器

`cairo-language-server` 可以通过 cargo 安装：
```sh
cargo install --git https://github.com/starkware-libs/cairo cairo-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('cairo_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "cairo-language-server" }
  ```
- `filetypes` :
  ```lua
  { "cairo" }
  ```
- `root_markers` :
  ```lua
  { "Scarb.toml", ".git" }
  ```

---

## ccls

https://github.com/MaskRay/ccls

C、C++ 和 Objective-C 的语言服务器

`ccls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('ccls')
```

默认配置：
- `cmd` :
  ```lua
  { "ccls" }
  ```
- `filetypes` :
  ```lua
  { "c", "cpp", "objc", "objcpp" }
  ```
- `root_markers` :
  ```lua
  { ".ccls-root", "compile_commands.json", ".git" }
  ```

---

## cds_lsp

https://cap.cloud.sap/docs/tools/

CDS 的语言服务器

`cds-lsp` 可以通过 `npm` 安装：
```sh
npm install -g @sap/cds-lsp
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('cds_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "cds-lsp", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "cds" }
  ```
- `root_markers` :
  ```lua
  { ".cdsrc.json", ".cdsrc-private.json", ".git" }
  ```

---

## cir_lsp_server

https://github.com/cir-lang/cir

Cir 的语言服务器

`cir-lsp-server` 可以通过 cargo 安装：
```sh
cargo install --git https://github.com/cir-lang/cir cir-lsp-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('cir_lsp_server')
```

默认配置：
- `cmd` :
  ```lua
  { "cir-lsp-server" }
  ```
- `filetypes` :
  ```lua
  { "cir" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## circom-lsp

https://github.com/tursom/circom-lsp

Circom 的语言服务器

`circom-lsp` 可以通过 cargo 安装：
```sh
cargo install --git https://github.com/tursom/circom-lsp
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('circom-lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "circom-lsp" }
  ```
- `filetypes` :
  ```lua
  { "circom" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## clangd

https://clangd.llvm.org/

C、C++ 和 Objective-C 的语言服务器

`clangd` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('clangd')
```

默认配置：
- `cmd` :
  ```lua
  { "clangd" }
  ```
- `filetypes` :
  ```lua
  { "c", "cpp", "objc", "objcpp" }
  ```
- `root_markers` :
  ```lua
  { "compile_commands.json", ".git" }
  ```

---

## clarinet

https://github.com/hirosystems/clarinet

Clarity 的语言服务器

`clarinet` 可以通过 cargo 安装：
```sh
cargo install --git https://github.com/hirosystems/clarinet
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('clarinet')
```

默认配置：
- `cmd` :
  ```lua
  { "clarinet", "lsp" }
  ```
- `filetypes` :
  ```lua
  { "clarity" }
  ```
- `root_markers` :
  ```lua
  { "Clarinet.toml", ".git" }
  ```

---

## clojure_lsp

https://github.com/clojure-lsp/clojure-lsp

Clojure 的语言服务器

`clojure-lsp` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('clojure_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "clojure-lsp" }
  ```
- `filetypes` :
  ```lua
  { "clojure", "edn" }
  ```
- `root_markers` :
  ```lua
  { "project.clj", "deps.edn", "build.boot", "shadow-cljs.edn", ".git" }
  ```

---

## cmake

https://github.com/regen100/cmake-language-server

CMake 的语言服务器

`cmake-language-server` 可以通过 `npm` 安装：
```sh
npm install -g cmake-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('cmake')
```

默认配置：
- `cmd` :
  ```lua
  { "cmake-language-server" }
  ```
- `filetypes` :
  ```lua
  { "cmake" }
  ```
- `root_markers` :
  ```lua
  { "CMakeLists.txt", ".git" }
  ```

---

## cobol_ls

https://github.com/eclipse/che-che4z-lsp-for-cobol

COBOL 的语言服务器

`cobol-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('cobol_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "cobol-ls" }
  ```
- `filetypes` :
  ```lua
  { "cobol" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## codebook

https://github.com/microsoft/codebook

Codebook 的语言服务器

`codebook` 可以通过 `npm` 安装：
```sh
npm install -g @microsoft/codebook
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('codebook')
```

默认配置：
- `cmd` :
  ```lua
  { "codebook", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "codebook" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## coffeesense

https://github.com/coffee-js/coffeesense

CoffeeScript 的语言服务器

`coffeesense` 可以通过 `npm` 安装：
```sh
npm install -g coffeesense
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('coffeesense')
```

默认配置：
- `cmd` :
  ```lua
  { "coffeesense", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "coffee" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## contextive

https://github.com/contextive/contextive

Contextive 的语言服务器

`contextive` 可以通过 `npm` 安装：
```sh
npm install -g contextive
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('contextive')
```

默认配置：
- `cmd` :
  ```lua
  { "contextive", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "contextive" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## copilot

https://github.com/github/copilot.vim

GitHub Copilot 的语言服务器

`copilot` 可以通过 `npm` 安装：
```sh
npm install -g @github/copilot.vim
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('copilot')
```

默认配置：
- `cmd` :
  ```lua
  { "copilot", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "*" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## coq_lsp

https://github.com/coq/coq-lsp

Coq 的语言服务器

`coq-lsp` 可以通过 opam 安装：
```sh
opam install coq-lsp
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('coq_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "coq-lsp" }
  ```
- `filetypes` :
  ```lua
  { "coq" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## crystalline

https://github.com/elbywan/crystalline

Crystal 的语言服务器

`crystalline` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('crystalline')
```

默认配置：
- `cmd` :
  ```lua
  { "crystalline" }
  ```
- `filetypes` :
  ```lua
  { "crystal" }
  ```
- `root_markers` :
  ```lua
  { "shard.yml", ".git" }
  ```

---

## csharp_ls

https://github.com/josefpihrt/csharp-ls

C# 的语言服务器

`csharp-ls` 可以通过 `npm` 安装：
```sh
npm install -g csharp-ls
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('csharp_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "csharp-ls" }
  ```
- `filetypes` :
  ```lua
  { "cs" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## cspell_ls

https://github.com/streetsidesoftware/cspell

cspell 的语言服务器

`cspell` 可以通过 `npm` 安装：
```sh
npm install -g cspell
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('cspell_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "cspell", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "*" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## css_variables

https://github.com/microsoft/vscode-css-variables

CSS 变量的语言服务器

`css-variables` 可以通过 `npm` 安装：
```sh
npm install -g @microsoft/vscode-css-variables
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('css_variables')
```

默认配置：
- `cmd` :
  ```lua
  { "css-variables", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "css", "scss", "less" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## cssls

https://github.com/microsoft/vscode-css-languageserver

CSS、SCSS 和 Less 的语言服务器

`vscode-css-languageserver` 可以通过 `npm` 安装：
```sh
npm install -g vscode-css-languageserver-bin
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('cssls')
```

默认配置：
- `cmd` :
  ```lua
  { "vscode-css-languageserver", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "css", "scss", "less" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## cssmodules_ls

https://github.com/antonk52/cssmodules-ls

CSS Modules 的语言服务器

`cssmodules-ls` 可以通过 `npm` 安装：
```sh
npm install -g cssmodules-ls
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('cssmodules_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "cssmodules-ls" }
  ```
- `filetypes` :
  ```lua
  { "css", "scss", "less" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## cucumber_language_server

https://github.com/cucumber/language-server

Cucumber 的语言服务器

`cucumber-language-server` 可以通过 `npm` 安装：
```sh
npm install -g @cucumber/language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('cucumber_language_server')
```

默认配置：
- `cmd` :
  ```lua
  { "cucumber-language-server", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "cucumber" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## cue

https://github.com/cue-lang/cue

CUE 的语言服务器

`cue` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('cue')
```

默认配置：
- `cmd` :
  ```lua
  { "cue", "lsp" }
  ```
- `filetypes` :
  ```lua
  { "cue" }
  ```
- `root_markers` :
  ```lua
  { "cue.mod", ".git" }
  ```

---

## custom_elements_ls

https://github.com/Microsoft/vscode-custom-data

自定义元素的语言服务器

`custom-elements-ls` 可以通过 `npm` 安装：
```sh
npm install -g @microsoft/vscode-custom-data
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('custom_elements_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "custom-elements-ls", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "html", "javascript", "typescript" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## cypher_ls

https://github.com/cleishm/cypher-ls

Cypher 的语言服务器

`cypher-ls` 可以通过 `npm` 安装：
```sh
npm install -g cypher-ls
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('cypher_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "cypher-ls" }
  ```
- `filetypes` :
  ```lua
  { "cypher" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## daedalus_ls

https://github.com/Plutonomicon/daedalus

Daedalus 的语言服务器

`daedalus-ls` 可以通过 cargo 安装：
```sh
cargo install --git https://github.com/Plutonomicon/daedalus daedalus-ls
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('daedalus_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "daedalus-ls" }
  ```
- `filetypes` :
  ```lua
  { "daedalus" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## dafny

https://github.com/dafny-lang/dafny

Dafny 的语言服务器

`dafny` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('dafny')
```

默认配置：
- `cmd` :
  ```lua
  { "dafny", "lsp" }
  ```
- `filetypes` :
  ```lua
  { "dafny" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## dagger

https://github.com/dagger/dagger

Dagger 的语言服务器

`dagger` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('dagger')
```

默认配置：
- `cmd` :
  ```lua
  { "dagger", "lsp" }
  ```
- `filetypes` :
  ```lua
  { "cue" }
  ```
- `root_markers` :
  ```lua
  { "dagger.json", ".git" }
  ```

---

## dartls

https://github.com/dart-lang/sdk

Dart 的语言服务器

`dart` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('dartls')
```

默认配置：
- `cmd` :
  ```lua
  { "dart", "language-server", "--protocol=lsp" }
  ```
- `filetypes` :
  ```lua
  { "dart" }
  ```
- `root_markers` :
  ```lua
  { "pubspec.yaml", ".git" }
  ```

---

## dcmls

https://github.com/digital-construction/dcmls

DCM 的语言服务器

`dcmls` 可以通过 `npm` 安装：
```sh
npm install -g dcmls
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('dcmls')
```

默认配置：
- `cmd` :
  ```lua
  { "dcmls", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "dcm" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## debputy

https://github.com/Debian/debputy

debputy 的语言服务器

`debputy` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('debputy')
```

默认配置：
- `cmd` :
  ```lua
  { "debputy", "lsp" }
  ```
- `filetypes` :
  ```lua
  { "debputy" }
  ```
- `root_markers` :
  ```lua
  { "debian/", ".git" }
  ```

---

## denols

https://github.com/denoland/deno

Deno 的语言服务器

`deno` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('denols')
```

默认配置：
- `cmd` :
  ```lua
  { "deno", "lsp" }
  ```
- `filetypes` :
  ```lua
  { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" }
  ```
- `root_markers` :
  ```lua
  { "deno.json", "deno.jsonc", ".git" }
  ```

---

## dhall_lsp_server

https://github.com/dhall-lang/dhall-haskell

Dhall 的语言服务器

`dhall-lsp-server` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('dhall_lsp_server')
```

默认配置：
- `cmd` :
  ```lua
  { "dhall-lsp-server" }
  ```
- `filetypes` :
  ```lua
  { "dhall" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## diagnosticls

https://github.com/iamcco/diagnostic-languageserver

用于诊断的语言服务器

`diagnostic-languageserver` 可以通过 `npm` 安装：
```sh
npm install -g diagnostic-languageserver
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('diagnosticls')
```

默认配置：
- `cmd` :
  ```lua
  { "diagnostic-languageserver", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "*" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## digestif

https://github.com/astoff/digestif

TeX 和 LaTeX 的语言服务器

`digestif` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('digestif')
```

默认配置：
- `cmd` :
  ```lua
  { "digestif" }
  ```
- `filetypes` :
  ```lua
  { "tex", "latex" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## djls

https://github.com/django-langs/djls

Django 的语言服务器

`djls` 可以通过 `npm` 安装：
```sh
npm install -g djls
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('djls')
```

默认配置：
- `cmd` :
  ```lua
  { "djls", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "django", "html", "htmldjango" }
  ```
- `root_markers` :
  ```lua
  { "manage.py", ".git" }
  ```

---

## djlsp

https://github.com/django-langs/djls

Django 的语言服务器

`djlsp` 可以通过 `npm` 安装：
```sh
npm install -g @django-langs/djls
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('djlsp')
```

默认配置：
- `cmd` :
  ```lua
  { "djlsp", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "django", "html", "htmldjango" }
  ```
- `root_markers` :
  ```lua
  { "manage.py", ".git" }
  ```

---

## docker_compose_language_service

https://github.com/microsoft/compose-language-service

Docker Compose 的语言服务器

`compose-language-service` 可以通过 `npm` 安装：
```sh
npm install -g @microsoft/compose-language-service
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('docker_compose_language_service')
```

默认配置：
- `cmd` :
  ```lua
  { "compose-language-service", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "yaml", "dockercompose" }
  ```
- `root_markers` :
  ```lua
  { "docker-compose.yml", "docker-compose.yaml", ".git" }
  ```

---

## docker_language_server

https://github.com/microsoft/vscode-docker

Docker 的语言服务器

`docker-language-server` 可以通过 `npm` 安装：
```sh
npm install -g @microsoft/vscode-docker
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('docker_language_server')
```

默认配置：
- `cmd` :
  ```lua
  { "docker-language-server", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "dockerfile" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## dockerls

https://github.com/microsoft/vscode-docker

Docker 的语言服务器

`docker-languageserver` 可以通过 `npm` 安装：
```sh
npm install -g docker-languageserver
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('dockerls')
```

默认配置：
- `cmd` :
  ```lua
  { "docker-languageserver", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "dockerfile" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## dolmenls

https://github.com/Gbury/dolmen

Dolmen 的语言服务器

`dolmenls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('dolmenls')
```

默认配置：
- `cmd` :
  ```lua
  { "dolmenls" }
  ```
- `filetypes` :
  ```lua
  { "dolmen" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## dotls

https://github.com/nikeee/dot-language-server

DOT 的语言服务器

`dot-language-server` 可以通过 `npm` 安装：
```sh
npm install -g dot-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('dotls')
```

默认配置：
- `cmd` :
  ```lua
  { "dot-language-server", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "dot" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## dprint

https://github.com/dprint/dprint

dprint 的语言服务器

`dprint` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('dprint')
```

默认配置：
- `cmd` :
  ```lua
  { "dprint", "lsp" }
  ```
- `filetypes` :
  ```lua
  { "*" }
  ```
- `root_markers` :
  ```lua
  { "dprint.json", ".git" }
  ```

---

## ds_pinyin_lsp

https://github.com/iamcco/ds-pinyin-lsp

双拼的语言服务器

`ds-pinyin-lsp` 可以通过 `npm` 安装：
```sh
npm install -g ds-pinyin-lsp
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('ds_pinyin_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "ds-pinyin-lsp", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "ds-pinyin" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## dts_lsp

https://github.com/microsoft/devicetree-language-server

DeviceTree 的语言服务器

`devicetree-language-server` 可以通过 `npm` 安装：
```sh
npm install -g @microsoft/devicetree-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('dts_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "devicetree-language-server", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "dts" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## earthlyls

https://github.com/earthly/earthly

Earthly 的语言服务器

`earthly` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('earthlyls')
```

默认配置：
- `cmd` :
  ```lua
  { "earthly", "lsp" }
  ```
- `filetypes` :
  ```lua
  { "earthfile" }
  ```
- `root_markers` :
  ```lua
  { "Earthfile", ".git" }
  ```

---

## ecsact

https://github.com/ecsact-dev/ecsact_language_server

Ecsact 的语言服务器

`ecsact_language_server` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('ecsact')
```

默认配置：
- `cmd` :
  ```lua
  { "ecsact_language_server" }
  ```
- `filetypes` :
  ```lua
  { "ecsact" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## efm

https://github.com/mattn/efm-langserver

通用语言服务器

`efm-langserver` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('efm')
```

默认配置：
- `cmd` :
  ```lua
  { "efm-langserver" }
  ```
- `filetypes` :
  ```lua
  { "*" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## elixirls

https://github.com/elixir-lsp/elixir-ls

Elixir 的语言服务器

`elixir-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('elixirls')
```

默认配置：
- `cmd` :
  ```lua
  { "elixir-ls" }
  ```
- `filetypes` :
  ```lua
  { "elixir", "eelixir" }
  ```
- `root_markers` :
  ```lua
  { "mix.exs", ".git" }
  ```

---

## elmls

https://github.com/elm-tooling/elm-language-server

Elm 的语言服务器

`elm-language-server` 可以通过 `npm` 安装：
```sh
npm install -g @elm-tooling/elm-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('elmls')
```

默认配置：
- `cmd` :
  ```lua
  { "elm-language-server" }
  ```
- `filetypes` :
  ```lua
  { "elm" }
  ```
- `root_markers` :
  ```lua
  { "elm.json", ".git" }
  ```

---

## elp

https://github.com/elp-reviews/elp

Elixir 的语言服务器

`elp` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('elp')
```

默认配置：
- `cmd` :
  ```lua
  { "elp", "lsp" }
  ```
- `filetypes` :
  ```lua
  { "elixir", "eelixir" }
  ```
- `root_markers` :
  ```lua
  { "mix.exs", ".git" }
  ```

---

## ember

https://github.com/emberwatch/ember-language-server

Ember.js 的语言服务器

`ember-language-server` 可以通过 `npm` 安装：
```sh
npm install -g @emberwatch/ember-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('ember')
```

默认配置：
- `cmd` :
  ```lua
  { "ember-language-server", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "handlebars", "html", "javascript", "typescript" }
  ```
- `root_markers` :
  ```lua
  { "ember-cli-build.js", ".git" }
  ```

---

## emmet_language_server

https://github.com/olrtg/emmet-language-server

Emmet 的语言服务器

`emmet-language-server` 可以通过 `npm` 安装：
```sh
npm install -g @olrtg/emmet-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('emmet_language_server')
```

默认配置：
- `cmd` :
  ```lua
  { "emmet-language-server", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "html", "css", "scss", "less", "sass", "stylus", "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "svelte" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## emmet_ls

https://github.com/aca/emmet-ls

Emmet 的语言服务器

`emmet-ls` 可以通过 `npm` 安装：
```sh
npm install -g emmet-ls
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('emmet_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "emmet-ls", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "html", "css", "scss", "less", "sass", "stylus", "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "svelte" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## emmylua_ls

https://github.com/EmmyLua/EmmyLua-LanguageServer

Lua 的语言服务器

`emmylua-language-server` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('emmylua_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "emmylua-language-server" }
  ```
- `filetypes` :
  ```lua
  { "lua" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## erg_language_server

https://github.com/erg-lang/erg

Erg 的语言服务器

`erg` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('erg_language_server')
```

默认配置：
- `cmd` :
  ```lua
  { "erg", "lsp" }
  ```
- `filetypes` :
  ```lua
  { "erg" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## erlangls

https://github.com/erlang-ls/erlang_ls

Erlang 的语言服务器

`erlang_ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('erlangls')
```

默认配置：
- `cmd` :
  ```lua
  { "erlang_ls" }
  ```
- `filetypes` :
  ```lua
  { "erlang" }
  ```
- `root_markers` :
  ```lua
  { "rebar.config", "erlang.mk", ".git" }
  ```

---

## esbonio

https://github.com/swyddfa/esbonio

Sphinx 和 reStructuredText 的语言服务器

`esbonio` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('esbonio')
```

默认配置：
- `cmd` :
  ```lua
  { "esbonio" }
  ```
- `filetypes` :
  ```lua
  { "rst" }
  ```
- `root_markers` :
  ```lua
  { "conf.py", ".git" }
  ```

---

## eslint

https://github.com/microsoft/vscode-eslint

ESLint 的语言服务器

`vscode-eslint` 可以通过 `npm` 安装：
```sh
npm install -g @microsoft/vscode-eslint
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('eslint')
```

默认配置：
- `cmd` :
  ```lua
  { "vscode-eslint", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx", "vue", "svelte" }
  ```
- `root_markers` :
  ```lua
  { ".eslintrc", ".eslintrc.js", ".eslintrc.json", ".eslintrc.yml", ".eslintrc.yaml", ".git" }
  ```

---

## expert

https://github.com/expert-lang/expert

Expert 的语言服务器

`expert` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('expert')
```

默认配置：
- `cmd` :
  ```lua
  { "expert", "lsp" }
  ```
- `filetypes` :
  ```lua
  { "expert" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## facility_language_server

https://github.com/FacilityApi/Facility

Facility 的语言服务器

`facility-language-server` 可以通过 `npm` 安装：
```sh
npm install -g @facilityapi/facility-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('facility_language_server')
```

默认配置：
- `cmd` :
  ```lua
  { "facility-language-server", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "fsd" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## fennel_language_server

https://github.com/rydesun/fennel-language-server

Fennel 的语言服务器

`fennel-language-server` 可以通过 `npm` 安装：
```sh
npm install -g fennel-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('fennel_language_server')
```

默认配置：
- `cmd` :
  ```lua
  { "fennel-language-server" }
  ```
- `filetypes` :
  ```lua
  { "fennel" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## fennel_ls

https://github.com/rydesun/fennel-language-server

Fennel 的语言服务器

`fennel-ls` 可以通过 `npm` 安装：
```sh
npm install -g @rydesun/fennel-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('fennel_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "fennel-ls" }
  ```
- `filetypes` :
  ```lua
  { "fennel" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## fish_lsp

https://github.com/tekezo/fish-lsp

Fish 的语言服务器

`fish-lsp` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('fish_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "fish-lsp" }
  ```
- `filetypes` :
  ```lua
  { "fish" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## flow

https://github.com/facebook/flow

Flow 的语言服务器

`flow` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('flow')
```

默认配置：
- `cmd` :
  ```lua
  { "flow", "lsp" }
  ```
- `filetypes` :
  ```lua
  { "javascript", "javascriptreact", "javascript.jsx" }
  ```
- `root_markers` :
  ```lua
  { ".flowconfig", ".git" }
  ```

---

## flux_lsp

https://github.com/influxdata/flux

Flux 的语言服务器

`flux-lsp` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('flux_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "flux-lsp" }
  ```
- `filetypes` :
  ```lua
  { "flux" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## foam_ls

https://github.com/foambubble/foam

Foam 的语言服务器

`foam-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('foam_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "foam-ls" }
  ```
- `filetypes` :
  ```lua
  { "foam" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## fortls

https://github.com/fortran-lang/fortls

Fortran 的语言服务器

`fortls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('fortls')
```

默认配置：
- `cmd` :
  ```lua
  { "fortls" }
  ```
- `filetypes` :
  ```lua
  { "fortran" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## fsautocomplete

https://github.com/fsharp/FsAutoComplete

F# 的语言服务器

`fsautocomplete` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('fsautocomplete')
```

默认配置：
- `cmd` :
  ```lua
  { "fsautocomplete" }
  ```
- `filetypes` :
  ```lua
  { "fsharp" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## fsharp_language_server

https://github.com/fsharp/FsAutoComplete

F# 的语言服务器

`fsharp-language-server` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('fsharp_language_server')
```

默认配置：
- `cmd` :
  ```lua
  { "fsharp-language-server" }
  ```
- `filetypes` :
  ```lua
  { "fsharp" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## fstar

https://github.com/FStarLang/FStar

F* 的语言服务器

`fstar` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('fstar')
```

默认配置：
- `cmd` :
  ```lua
  { "fstar", "--lsp" }
  ```
- `filetypes` :
  ```lua
  { "fstar" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## futhark_lsp

https://github.com/diku-dk/futhark

Futhark 的语言服务器

`futhark-lsp` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('futhark_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "futhark-lsp" }
  ```
- `filetypes` :
  ```lua
  { "futhark" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## gdscript

https://github.com/godotengine/godot

GDScript 的语言服务器

`godot` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('gdscript')
```

默认配置：
- `cmd` :
  ```lua
  { "godot", "--lsp" }
  ```
- `filetypes` :
  ```lua
  { "gdscript" }
  ```
- `root_markers` :
  ```lua
  { "project.godot", ".git" }
  ```

---

## gdshader_lsp

https://github.com/godotengine/godot

GDShader 的语言服务器

`godot` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('gdshader_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "godot", "--lsp" }
  ```
- `filetypes` :
  ```lua
  { "gdshader" }
  ```
- `root_markers` :
  ```lua
  { "project.godot", ".git" }
  ```

---

## gh_actions_ls

https://github.com/ycjcl868/gh-actions-ls

GitHub Actions 的语言服务器

`gh-actions-ls` 可以通过 `npm` 安装：
```sh
npm install -g @ycjcl868/gh-actions-ls
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('gh_actions_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "gh-actions-ls", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "yaml", "github-actions" }
  ```
- `root_markers` :
  ```lua
  { ".github/workflows", ".git" }
  ```

---

## ghcide

https://github.com/haskell/ghcide

Haskell 的语言服务器

`ghcide` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('ghcide')
```

默认配置：
- `cmd` :
  ```lua
  { "ghcide", "--lsp" }
  ```
- `filetypes` :
  ```lua
  { "haskell" }
  ```
- `root_markers` :
  ```lua
  { "stack.yaml", "cabal.project", ".git" }
  ```

---

## ghdl_ls

https://github.com/ghdl/ghdl

VHDL 的语言服务器

`ghdl-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('ghdl_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "ghdl-ls" }
  ```
- `filetypes` :
  ```lua
  { "vhdl" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## ginko_ls

https://github.com/ginkgo-rs/ginko-ls

Ginkgo 的语言服务器

`ginko-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('ginko_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "ginko-ls" }
  ```
- `filetypes` :
  ```lua
  { "ginkgo" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## gitlab_ci_ls

https://github.com/bcmyers/gitlab-ci-ls

GitLab CI 的语言服务器

`gitlab-ci-ls` 可以通过 `npm` 安装：
```sh
npm install -g @bcmyers/gitlab-ci-ls
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('gitlab_ci_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "gitlab-ci-ls", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "yaml", "gitlab-ci" }
  ```
- `root_markers` :
  ```lua
  { ".gitlab-ci.yml", ".git" }
  ```

---

## glasgow

https://github.com/glasgowlanguage/glasgow

Glasgow 的语言服务器

`glasgow` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('glasgow')
```

默认配置：
- `cmd` :
  ```lua
  { "glasgow", "lsp" }
  ```
- `filetypes` :
  ```lua
  { "glasgow" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## gleam

https://github.com/gleam-lang/gleam

Gleam 的语言服务器

`gleam` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('gleam')
```

默认配置：
- `cmd` :
  ```lua
  { "gleam", "lsp" }
  ```
- `filetypes` :
  ```lua
  { "gleam" }
  ```
- `root_markers` :
  ```lua
  { "gleam.toml", ".git" }
  ```

---

## glint

https://github.com/typed-ember/glint

Glint 的语言服务器

`glint` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('glint')
```

默认配置：
- `cmd` :
  ```lua
  { "glint", "lsp" }
  ```
- `filetypes` :
  ```lua
  { "handlebars", "html", "javascript", "typescript" }
  ```
- `root_markers` :
  ```lua
  { "ember-cli-build.js", ".git" }
  ```

---

## glsl_analyzer

https://github.com/nolanderc/glsl_analyzer

GLSL 的语言服务器

`glsl_analyzer` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('glsl_analyzer')
```

默认配置：
- `cmd` :
  ```lua
  { "glsl_analyzer" }
  ```
- `filetypes` :
  ```lua
  { "glsl" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## glslls

https://github.com/salkin-mada/glsl-language-server

GLSL 的语言服务器

`glsl-language-server` 可以通过 `npm` 安装：
```sh
npm install -g @salkin-mada/glsl-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('glslls')
```

默认配置：
- `cmd` :
  ```lua
  { "glsl-language-server" }
  ```
- `filetypes` :
  ```lua
  { "glsl" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## gnls

https://github.com/gn-lang/gn-ls

GN 的语言服务器

`gn-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('gnls')
```

默认配置：
- `cmd` :
  ```lua
  { "gn-ls" }
  ```
- `filetypes` :
  ```lua
  { "gn" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## golangci_lint_ls

https://github.com/nametake/golangci-lint-langserver

golangci-lint 的语言服务器

`golangci-lint-langserver` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('golangci_lint_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "golangci-lint-langserver" }
  ```
- `filetypes` :
  ```lua
  { "go" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## gopls

https://github.com/golang/tools/tree/master/gopls

Go 的语言服务器

`gopls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('gopls')
```

默认配置：
- `cmd` :
  ```lua
  { "gopls" }
  ```
- `filetypes` :
  ```lua
  { "go", "gomod", "gowork", "gotmpl" }
  ```
- `root_markers` :
  ```lua
  { "go.mod", ".git" }
  ```

---

## gradle_ls

https://github.com/microsoft/vscode-gradle

Gradle 的语言服务器

`gradle-ls` 可以通过 `npm` 安装：
```sh
npm install -g @microsoft/vscode-gradle
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('gradle_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "gradle-ls", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "gradle" }
  ```
- `root_markers` :
  ```lua
  { "build.gradle", "build.gradle.kts", ".git" }
  ```

---

## grammarly

https://github.com/grammarly/grammarly-languageserver

Grammarly 的语言服务器

`grammarly-languageserver` 可以通过 `npm` 安装：
```sh
npm install -g @grammarly/grammarly-languageserver
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('grammarly')
```

默认配置：
- `cmd` :
  ```lua
  { "grammarly-languageserver", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "markdown", "text", "txt" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## graphql

https://github.com/graphql/graphiql

GraphQL 的语言服务器

`graphql-lsp` 可以通过 `npm` 安装：
```sh
npm install -g graphql-lsp
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('graphql')
```

默认配置：
- `cmd` :
  ```lua
  { "graphql-lsp", "server", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "graphql", "typescript", "javascript", "typescriptreact", "javascriptreact" }
  ```
- `root_markers` :
  ```lua
  { ".graphqlrc", ".graphqlrc.json", ".graphqlrc.js", "graphql.config.json", "graphql.config.js", ".git" }
  ```

---

## groovyls

https://github.com/prominic/groovy-language-server

Groovy 的语言服务器

`groovy-language-server` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('groovyls')
```

默认配置：
- `cmd` :
  ```lua
  { "groovy-language-server" }
  ```
- `filetypes` :
  ```lua
  { "groovy" }
  ```
- `root_markers` :
  ```lua
  { "build.gradle", "pom.xml", ".git" }
  ```

---

## guile_ls

https://github.com/artyom-poptsov/guile-ls

Guile 的语言服务器

`guile-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('guile_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "guile-ls" }
  ```
- `filetypes` :
  ```lua
  { "scheme" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## harper_ls

https://github.com/HarperLang/harper-ls

Harper 的语言服务器

`harper-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('harper_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "harper-ls" }
  ```
- `filetypes` :
  ```lua
  { "harper" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## hdl_checker

https://github.com/suoto/hdl_checker

HDL 的语言服务器

`hdl_checker` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('hdl_checker')
```

默认配置：
- `cmd` :
  ```lua
  { "hdl_checker", "--lsp" }
  ```
- `filetypes` :
  ```lua
  { "vhdl", "verilog", "systemverilog" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## helm_ls

https://github.com/microsoft/vscode-helm

Helm 的语言服务器

`helm-ls` 可以通过 `npm` 安装：
```sh
npm install -g @microsoft/vscode-helm
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('helm_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "helm-ls", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "helm" }
  ```
- `root_markers` :
  ```lua
  { "Chart.yaml", ".git" }
  ```

---

## herb_ls

https://github.com/herb-lang/herb-ls

Herb 的语言服务器

`herb-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('herb_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "herb-ls" }
  ```
- `filetypes` :
  ```lua
  { "herb" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## hhvm

https://github.com/facebook/hhvm

Hack 的语言服务器

`hhvm` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('hhvm')
```

默认配置：
- `cmd` :
  ```lua
  { "hhvm", "--lsp" }
  ```
- `filetypes` :
  ```lua
  { "hack" }
  ```
- `root_markers` :
  ```lua
  { ".hhconfig", ".git" }
  ```

---

## hie

https://github.com/haskell/haskell-ide-engine

Haskell 的语言服务器

`hie` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('hie')
```

默认配置：
- `cmd` :
  ```lua
  { "hie", "--lsp" }
  ```
- `filetypes` :
  ```lua
  { "haskell" }
  ```
- `root_markers` :
  ```lua
  { "stack.yaml", "cabal.project", ".git" }
  ```

---

## hlasm

https://github.com/eclipse/hlasm

HLASM 的语言服务器

`hlasm` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('hlasm')
```

默认配置：
- `cmd` :
  ```lua
  { "hlasm", "--lsp" }
  ```
- `filetypes` :
  ```lua
  { "hlasm" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## hls

https://github.com/haskell/haskell-language-server

Haskell 的语言服务器

`haskell-language-server` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('hls')
```

默认配置：
- `cmd` :
  ```lua
  { "haskell-language-server", "--lsp" }
  ```
- `filetypes` :
  ```lua
  { "haskell" }
  ```
- `root_markers` :
  ```lua
  { "stack.yaml", "cabal.project", ".git" }
  ```

---

## hoon_ls

https://github.com/urbit/hoon

Hoon 的语言服务器

`hoon-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('hoon_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "hoon-ls" }
  ```
- `filetypes` :
  ```lua
  { "hoon" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## html

https://github.com/microsoft/vscode-html-languageserver

HTML 的语言服务器

`vscode-html-languageserver` 可以通过 `npm` 安装：
```sh
npm install -g @microsoft/vscode-html-languageserver
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('html')
```

默认配置：
- `cmd` :
  ```lua
  { "vscode-html-languageserver", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "html" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## htmx

https://github.com/htmx-org/htmx

HTMX 的语言服务器

`htmx-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('htmx')
```

默认配置：
- `cmd` :
  ```lua
  { "htmx-ls" }
  ```
- `filetypes` :
  ```lua
  { "html" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## hydra_lsp

https://github.com/input-output-hk/hydra

Hydra 的语言服务器

`hydra-lsp` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('hydra_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "hydra-lsp" }
  ```
- `filetypes` :
  ```lua
  { "hydra" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## hyprls

https://github.com/hyprwm/hyprlang

Hyprland 配置的语言服务器

`hyprls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('hyprls')
```

默认配置：
- `cmd` :
  ```lua
  { "hyprls" }
  ```
- `filetypes` :
  ```lua
  { "hypr" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## idris2_lsp

https://github.com/idris-community/idris2-lsp

Idris 2 的语言服务器

`idris2-lsp` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('idris2_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "idris2-lsp" }
  ```
- `filetypes` :
  ```lua
  { "idris" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## intelephense

https://github.com/bmewburn/vscode-intelephense

PHP 的语言服务器

`intelephense` 可以通过 `npm` 安装：
```sh
npm install -g intelephense
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('intelephense')
```

默认配置：
- `cmd` :
  ```lua
  { "intelephense", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "php" }
  ```
- `root_markers` :
  ```lua
  { "composer.json", ".git" }
  ```

---

## janet_lsp

https://github.com/janet-lang/janet-lsp

Janet 的语言服务器

`janet-lsp` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('janet_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "janet-lsp" }
  ```
- `filetypes` :
  ```lua
  { "janet" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## java_language_server

https://github.com/georgewfraser/java-language-server

Java 的语言服务器

`java-language-server` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('java_language_server')
```

默认配置：
- `cmd` :
  ```lua
  { "java-language-server" }
  ```
- `filetypes` :
  ```lua
  { "java" }
  ```
- `root_markers` :
  ```lua
  { "pom.xml", ".git" }
  ```

---

## jdtls

https://github.com/eclipse/eclipse.jdt.ls

Java 的语言服务器

`jdtls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('jdtls')
```

默认配置：
- `cmd` :
  ```lua
  { "jdtls" }
  ```
- `filetypes` :
  ```lua
  { "java" }
  ```
- `root_markers` :
  ```lua
  { "pom.xml", ".git" }
  ```

---

## jedi_language_server

https://github.com/pappasam/jedi-language-server

Python 的语言服务器

`jedi-language-server` 可以通过 `pip` 安装：
```sh
pip install -g jedi-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('jedi_language_server')
```

默认配置：
- `cmd` :
  ```lua
  { "jedi-language-server" }
  ```
- `filetypes` :
  ```lua
  { "python" }
  ```
- `root_markers` :
  ```lua
  { "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", "Pipfile", ".git" }
  ```

---

## jinja_lsp

https://github.com/samuelcolvin/jinja2-lsp

Jinja2 的语言服务器

`jinja2-lsp` 可以通过 `pip` 安装：
```sh
pip install -g jinja2-lsp
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('jinja_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "jinja2-lsp" }
  ```
- `filetypes` :
  ```lua
  { "jinja", "jinja2", "html" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## jqls

https://github.com/jqlang/jq

jq 的语言服务器

`jq-lsp` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('jqls')
```

默认配置：
- `cmd` :
  ```lua
  { "jq-lsp" }
  ```
- `filetypes` :
  ```lua
  { "jq" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## jsonls

https://github.com/microsoft/vscode-json-languageserver

JSON 的语言服务器

`vscode-json-languageserver` 可以通过 `npm` 安装：
```sh
npm install -g @microsoft/vscode-json-languageserver
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('jsonls')
```

默认配置：
- `cmd` :
  ```lua
  { "vscode-json-languageserver", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "json", "jsonc" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## jsonnet_ls

https://github.com/grafana/jsonnet-language-server

Jsonnet 的语言服务器

`jsonnet-language-server` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('jsonnet_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "jsonnet-language-server" }
  ```
- `filetypes` :
  ```lua
  { "jsonnet" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## julials

https://github.com/julia-vscode/julia-vscode

Julia 的语言服务器

`julia-language-server` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('julials')
```

默认配置：
- `cmd` :
  ```lua
  { "julia-language-server" }
  ```
- `filetypes` :
  ```lua
  { "julia" }
  ```
- `root_markers` :
  ```lua
  { "Project.toml", ".git" }
  ```

---

## just

https://github.com/casey/just

Just 的语言服务器

`just` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('just')
```

默认配置：
- `cmd` :
  ```lua
  { "just", "--lsp" }
  ```
- `filetypes` :
  ```lua
  { "just" }
  ```
- `root_markers` :
  ```lua
  { "justfile", ".git" }
  ```

---

## kcl

https://github.com/kcl-lang/kcl

KCL 的语言服务器

`kcl` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('kcl')
```

默认配置：
- `cmd` :
  ```lua
  { "kcl", "lsp" }
  ```
- `filetypes` :
  ```lua
  { "kcl" }
  ```
- `root_markers` :
  ```lua
  { "kcl.mod", ".git" }
  ```

---

## koka

https://github.com/koka-lang/koka

Koka 的语言服务器

`koka-lsp` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('koka')
```

默认配置：
- `cmd` :
  ```lua
  { "koka-lsp" }
  ```
- `filetypes` :
  ```lua
  { "koka" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## kotlin_language_server

https://github.com/fwcd/kotlin-language-server

Kotlin 的语言服务器

`kotlin-language-server` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('kotlin_language_server')
```

默认配置：
- `cmd` :
  ```lua
  { "kotlin-language-server" }
  ```
- `filetypes` :
  ```lua
  { "kotlin" }
  ```
- `root_markers` :
  ```lua
  { "build.gradle.kts", "pom.xml", ".git" }
  ```

---

## kotlin_lsp

https://github.com/fwcd/kotlin-language-server

Kotlin 的语言服务器

`kotlin-lsp` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('kotlin_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "kotlin-lsp" }
  ```
- `filetypes` :
  ```lua
  { "kotlin" }
  ```
- `root_markers` :
  ```lua
  { "build.gradle.kts", "pom.xml", ".git" }
  ```

---

## kulala_ls

https://github.com/kulala-lang/kulala-ls

Kulala 的语言服务器

`kulala-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('kulala_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "kulala-ls" }
  ```
- `filetypes` :
  ```lua
  { "kulala" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## laravel_ls

https://github.com/laravel/framework

Laravel 的语言服务器

`laravel-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('laravel_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "laravel-ls" }
  ```
- `filetypes` :
  ```lua
  { "php" }
  ```
- `root_markers` :
  ```lua
  { "artisan", ".git" }
  ```

---

## lean3ls

https://github.com/leanprover/lean

Lean 3 的语言服务器

`lean3ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('lean3ls')
```

默认配置：
- `cmd` :
  ```lua
  { "lean3ls" }
  ```
- `filetypes` :
  ```lua
  { "lean" }
  ```
- `root_markers` :
  ```lua
  { "leanpkg.toml", ".git" }
  ```

---

## leanls

https://github.com/leanprover/lean4

Lean 4 的语言服务器

`leanls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('leanls')
```

默认配置：
- `cmd` :
  ```lua
  { "leanls" }
  ```
- `filetypes` :
  ```lua
  { "lean" }
  ```
- `root_markers` :
  ```lua
  { "leanpkg.toml", "lakefile.lean", ".git" }
  ```

---

## lelwel_ls

https://github.com/lelwel/lelwel-ls

Lelwel 的语言服务器

`lelwel-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('lelwel_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "lelwel-ls" }
  ```
- `filetypes` :
  ```lua
  { "lelwel" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## lemminx

https://github.com/eclipse/lemminx

XML 的语言服务器

`lemminx` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('lemminx')
```

默认配置：
- `cmd` :
  ```lua
  { "lemminx" }
  ```
- `filetypes` :
  ```lua
  { "xml" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## lexical

https://github.com/lexical-lsp/lexical

Lexical 的语言服务器

`lexical` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('lexical')
```

默认配置：
- `cmd` :
  ```lua
  { "lexical" }
  ```
- `filetypes` :
  ```lua
  { "elixir", "eelixir" }
  ```
- `root_markers` :
  ```lua
  { "mix.exs", ".git" }
  ```

---

## lsp_ai

https://github.com/lsp-ai/lsp-ai

LSP AI 的语言服务器

`lsp-ai` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('lsp_ai')
```

默认配置：
- `cmd` :
  ```lua
  { "lsp-ai" }
  ```
- `filetypes` :
  ```lua
  { "*" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## ltex

https://github.com/valentjn/ltex-ls

LaTeX 的语言服务器

`ltex-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('ltex')
```

默认配置：
- `cmd` :
  ```lua
  { "ltex-ls" }
  ```
- `filetypes` :
  ```lua
  { "tex", "latex" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## ltex_plus

https://github.com/ltex-ls/ltex-ls

LaTeX 的语言服务器

`ltex-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('ltex_plus')
```

默认配置：
- `cmd` :
  ```lua
  { "ltex-ls" }
  ```
- `filetypes` :
  ```lua
  { "tex", "latex" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## lua_ls

https://github.com/LuaLS/lua-language-server

Lua 的语言服务器

`lua-language-server` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('lua_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "lua-language-server" }
  ```
- `filetypes` :
  ```lua
  { "lua" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## luau_lsp

https://github.com/JohnnyMorganz/luau-lsp

Luau 的语言服务器

`luau-lsp` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('luau_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "luau-lsp" }
  ```
- `filetypes` :
  ```lua
  { "luau" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## lwc_ls

https://github.com/forcedotcom/lightning-language-server

Lightning Web Components 的语言服务器

`lwc-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('lwc_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "lwc-ls" }
  ```
- `filetypes` :
  ```lua
  { "html", "javascript", "typescript" }
  ```
- `root_markers` :
  ```lua
  { "sfdx-project.json", ".git" }
  ```

---

## m68k

https://github.com/grahambates/m68k-lsp

M68K 的语言服务器

`m68k-lsp` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('m68k')
```

默认配置：
- `cmd` :
  ```lua
  { "m68k-lsp" }
  ```
- `filetypes` :
  ```lua
  { "m68k" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## markdown_oxide

https://github.com/oxide-lang/markdown-oxide

Markdown 的语言服务器

`markdown-oxide` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('markdown_oxide')
```

默认配置：
- `cmd` :
  ```lua
  { "markdown-oxide" }
  ```
- `filetypes` :
  ```lua
  { "markdown" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## marko-js

https://github.com/marko-js/marko

Marko 的语言服务器

`marko-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('marko-js')
```

默认配置：
- `cmd` :
  ```lua
  { "marko-ls" }
  ```
- `filetypes` :
  ```lua
  { "marko" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## marksman

https://github.com/artempyanykh/marksman

Markdown 的语言服务器

`marksman` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('marksman')
```

默认配置：
- `cmd` :
  ```lua
  { "marksman" }
  ```
- `filetypes` :
  ```lua
  { "markdown" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## matlab_ls

https://github.com/mathworks/MATLAB-Language-Server

MATLAB 的语言服务器

`matlab-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('matlab_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "matlab-ls" }
  ```
- `filetypes` :
  ```lua
  { "matlab" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## mdx_analyzer

https://github.com/mdx-js/mdx

MDX 的语言服务器

`mdx-analyzer` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('mdx_analyzer')
```

默认配置：
- `cmd` :
  ```lua
  { "mdx-analyzer" }
  ```
- `filetypes` :
  ```lua
  { "mdx" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## mesonlsp

https://github.com/mesonbuild/meson

Meson 的语言服务器

`mesonlsp` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('mesonlsp')
```

默认配置：
- `cmd` :
  ```lua
  { "mesonlsp" }
  ```
- `filetypes` :
  ```lua
  { "meson" }
  ```
- `root_markers` :
  ```lua
  { "meson.build", ".git" }
  ```

---

## metals

https://github.com/scalameta/metals

Scala 的语言服务器

`metals` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('metals')
```

默认配置：
- `cmd` :
  ```lua
  { "metals" }
  ```
- `filetypes` :
  ```lua
  { "scala" }
  ```
- `root_markers` :
  ```lua
  { "build.sbt", "build.sc", ".git" }
  ```

---

## millet

https://github.com/azdavis/millet

Millet 的语言服务器

`millet` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('millet')
```

默认配置：
- `cmd` :
  ```lua
  { "millet" }
  ```
- `filetypes` :
  ```lua
  { "millet" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## mint

https://github.com/mint-lang/mint

Mint 的语言服务器

`mint-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('mint')
```

默认配置：
- `cmd` :
  ```lua
  { "mint-ls" }
  ```
- `filetypes` :
  ```lua
  { "mint" }
  ```
- `root_markers` :
  ```lua
  { "mint.json", ".git" }
  ```

---

## mlir_lsp_server

https://github.com/llvm/llvm-project

MLIR 的语言服务器

`mlir-lsp-server` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('mlir_lsp_server')
```

默认配置：
- `cmd` :
  ```lua
  { "mlir-lsp-server" }
  ```
- `filetypes` :
  ```lua
  { "mlir" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## mlir_pdll_lsp_server

https://github.com/llvm/llvm-project

MLIR PDLL 的语言服务器

`mlir-pdll-lsp-server` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('mlir_pdll_lsp_server')
```

默认配置：
- `cmd` :
  ```lua
  { "mlir-pdll-lsp-server" }
  ```
- `filetypes` :
  ```lua
  { "mlir-pdll" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## mm0_ls

https://github.com/digama0/mm0

MM0 的语言服务器

`mm0-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('mm0_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "mm0-ls" }
  ```
- `filetypes` :
  ```lua
  { "mm0" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## mojo

https://github.com/modular/mojo

Mojo 的语言服务器

`mojo-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('mojo')
```

默认配置：
- `cmd` :
  ```lua
  { "mojo-ls" }
  ```
- `filetypes` :
  ```lua
  { "mojo" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## motoko_lsp

https://github.com/dfinity/motoko

Motoko 的语言服务器

`motoko-lsp` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('motoko_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "motoko-lsp" }
  ```
- `filetypes` :
  ```lua
  { "motoko" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## move_analyzer

https://github.com/move-language/move

Move 的语言服务器

`move-analyzer` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('move_analyzer')
```

默认配置：
- `cmd` :
  ```lua
  { "move-analyzer" }
  ```
- `filetypes` :
  ```lua
  { "move" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## msbuild_project_tools_server

https://github.com/microsoft/MSBuildProjectTools

MSBuild 的语言服务器

`msbuild-project-tools-server` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('msbuild_project_tools_server')
```

默认配置：
- `cmd` :
  ```lua
  { "msbuild-project-tools-server" }
  ```
- `filetypes` :
  ```lua
  { "xml", "csproj", "vbproj", "fsproj" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## muon

https://github.com/muon-lang/muon

Muon 的语言服务器

`muon-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('muon')
```

默认配置：
- `cmd` :
  ```lua
  { "muon-ls" }
  ```
- `filetypes` :
  ```lua
  { "muon" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## mutt_ls

https://github.com/neomutt/mutt-ls

Mutt 的语言服务器

`mutt-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('mutt_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "mutt-ls" }
  ```
- `filetypes` :
  ```lua
  { "muttrc" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## nelua_lsp

https://github.com/edubart/nelua-lsp

Nelua 的语言服务器

`nelua-lsp` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('nelua_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "nelua-lsp" }
  ```
- `filetypes` :
  ```lua
  { "nelua" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## neocmake

https://github.com/neovim/neovim

CMake 的语言服务器

`neocmake` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('neocmake')
```

默认配置：
- `cmd` :
  ```lua
  { "neocmake" }
  ```
- `filetypes` :
  ```lua
  { "cmake" }
  ```
- `root_markers` :
  ```lua
  { "CMakeLists.txt", ".git" }
  ```

---

## nextflow_ls

https://github.com/nextflow-io/nextflow

Nextflow 的语言服务器

`nextflow-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('nextflow_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "nextflow-ls" }
  ```
- `filetypes` :
  ```lua
  { "nextflow" }
  ```
- `root_markers` :
  ```lua
  { "nextflow.config", ".git" }
  ```

---

## nextls

https://github.com/elixir-tools/next-ls

Elixir 的语言服务器

`nextls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('nextls')
```

默认配置：
- `cmd` :
  ```lua
  { "nextls" }
  ```
- `filetypes` :
  ```lua
  { "elixir", "eelixir" }
  ```
- `root_markers` :
  ```lua
  { "mix.exs", ".git" }
  ```

---

## nginx_language_server

https://github.com/pappasam/nginx-language-server

Nginx 的语言服务器

`nginx-language-server` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('nginx_language_server')
```

默认配置：
- `cmd` :
  ```lua
  { "nginx-language-server" }
  ```
- `filetypes` :
  ```lua
  { "nginx" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## nickel_ls

https://github.com/tweag/nickel

Nickel 的语言服务器

`nickel-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('nickel_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "nickel-ls" }
  ```
- `filetypes` :
  ```lua
  { "nickel" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## nil_ls

https://github.com/oxalica/nil

Nix 的语言服务器

`nil` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('nil_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "nil" }
  ```
- `filetypes` :
  ```lua
  { "nix" }
  ```
- `root_markers` :
  ```lua
  { "flake.nix", ".git" }
  ```

---

## nim_langserver

https://github.com/nim-lang/langserver

Nim 的语言服务器

`nimlangserver` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('nim_langserver')
```

默认配置：
- `cmd` :
  ```lua
  { "nimlangserver" }
  ```
- `filetypes` :
  ```lua
  { "nim" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## nimls

https://github.com/nim-lang/langserver

Nim 的语言服务器

`nimls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('nimls')
```

默认配置：
- `cmd` :
  ```lua
  { "nimls" }
  ```
- `filetypes` :
  ```lua
  { "nim" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## nixd

https://github.com/nix-community/nixd

Nix 的语言服务器

`nixd` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('nixd')
```

默认配置：
- `cmd` :
  ```lua
  { "nixd" }
  ```
- `filetypes` :
  ```lua
  { "nix" }
  ```
- `root_markers` :
  ```lua
  { "flake.nix", ".git" }
  ```

---

## nomad_lsp

https://github.com/hashicorp/nomad

Nomad 的语言服务器

`nomad-lsp` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('nomad_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "nomad-lsp" }
  ```
- `filetypes` :
  ```lua
  { "hcl" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## ntt

https://github.com/nvim-treesitter/nvim-treesitter

Treesitter 的语言服务器

`ntt` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('ntt')
```

默认配置：
- `cmd` :
  ```lua
  { "ntt" }
  ```
- `filetypes` :
  ```lua
  { "*" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## nushell

https://github.com/nushell/nushell

Nushell 的语言服务器

`nushell-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('nushell')
```

默认配置：
- `cmd` :
  ```lua
  { "nushell-ls" }
  ```
- `filetypes` :
  ```lua
  { "nu" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## nxls

https://github.com/nrwl/nx

Nx 的语言服务器

`nxls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('nxls')
```

默认配置：
- `cmd` :
  ```lua
  { "nxls" }
  ```
- `filetypes` :
  ```lua
  { "json", "yaml" }
  ```
- `root_markers` :
  ```lua
  { "nx.json", ".git" }
  ```

---

## ocamllsp

https://github.com/ocaml/ocaml-lsp

OCaml 的语言服务器

`ocamllsp` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('ocamllsp')
```

默认配置：
- `cmd` :
  ```lua
  { "ocamllsp" }
  ```
- `filetypes` :
  ```lua
  { "ocaml", "reason" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## ols

https://github.com/DanielGavin/ols

Odin 语言服务器。

`ols` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('ols')
```

默认配置：
- `cmd` :
  ```lua
  { "ols" }
  ```
- `filetypes` :
  ```lua
  { "odin" }
  ```
- `root_markers` :
  ```lua
  { "ols.json", ".git" }
  ```

---

## omnisharp

https://github.com/OmniSharp/omnisharp-roslyn

C# 的语言服务器。

`omnisharp-roslyn` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('omnisharp')
```

默认配置：
- `cmd` :
  ```lua
  { "omnisharp", "--languageserver" }
  ```
- `filetypes` :
  ```lua
  { "cs" }
  ```
- `root_markers` :
  ```lua
  { ".csproj", ".sln", ".git" }
  ```

---

## opencl_ls

https://github.com/Galarius/opencl-language-server

OpenCL 的语言服务器。

`opencl-language-server` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('opencl_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "opencl-language-server" }
  ```
- `filetypes` :
  ```lua
  { "opencl" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## openscad_ls

https://github.com/openscad/openscad

OpenSCAD 的语言服务器。

`openscad-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('openscad_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "openscad-ls" }
  ```
- `filetypes` :
  ```lua
  { "openscad" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## openscad_lsp

https://github.com/openscad/openscad

OpenSCAD 的语言服务器。

`openscad-lsp` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('openscad_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "openscad-lsp" }
  ```
- `filetypes` :
  ```lua
  { "openscad" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## oxlint

https://github.com/web-infra-dev/oxlint

JavaScript 和 TypeScript 的 Linter。

`oxlint` 可以通过 `npm` 安装：
```sh
npm install -g oxlint
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('oxlint')
```

默认配置：
- `cmd` :
  ```lua
  { "oxlint", "--lsp" }
  ```
- `filetypes` :
  ```lua
  { "javascript", "javascriptreact", "typescript", "typescriptreact" }
  ```
- `root_markers` :
  ```lua
  { "package.json", ".git" }
  ```

---

## pact_ls

https://github.com/kadena-io/pact

Pact 的语言服务器。

`pact-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('pact_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "pact-ls" }
  ```
- `filetypes` :
  ```lua
  { "pact" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## pasls

https://github.com/pascal-lang/pasls

Pascal 的语言服务器。

`pasls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('pasls')
```

默认配置：
- `cmd` :
  ```lua
  { "pasls" }
  ```
- `filetypes` :
  ```lua
  { "pascal" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## pbls

https://github.com/pbl-lang/pbls

PBL 的语言服务器。

`pbls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('pbls')
```

默认配置：
- `cmd` :
  ```lua
  { "pbls" }
  ```
- `filetypes` :
  ```lua
  { "pbl" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## perlls

https://github.com/richterger/Perl-LanguageServer

Perl 的语言服务器。

`perl-language-server` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('perlls')
```

默认配置：
- `cmd` :
  ```lua
  { "perl-language-server" }
  ```
- `filetypes` :
  ```lua
  { "perl" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## perlnavigator

https://github.com/bscan/PerlNavigator

Perl 的语言服务器。

`perlnavigator` 可以通过 `npm` 安装：
```sh
npm install -g perlnavigator-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('perlnavigator')
```

默认配置：
- `cmd` :
  ```lua
  { "perlnavigator" }
  ```
- `filetypes` :
  ```lua
  { "perl" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## perlpls

https://github.com/FractalBoy/PLS

Perl 的语言服务器。

`pls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('perlpls')
```

默认配置：
- `cmd` :
  ```lua
  { "pls" }
  ```
- `filetypes` :
  ```lua
  { "perl" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## pest_ls

https://github.com/pest-parser/pest

Pest 的语言服务器。

`pest-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('pest_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "pest-ls" }
  ```
- `filetypes` :
  ```lua
  { "pest" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## phan

https://github.com/phan/phan

PHP 的静态分析器。

`phan` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('phan')
```

默认配置：
- `cmd` :
  ```lua
  { "phan", "--language-server" }
  ```
- `filetypes` :
  ```lua
  { "php" }
  ```
- `root_markers` :
  ```lua
  { ".phan", ".git" }
  ```

---

## phpactor

https://github.com/phpactor/phpactor

PHP 的语言服务器。

`phpactor` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('phpactor')
```

默认配置：
- `cmd` :
  ```lua
  { "phpactor", "language-server" }
  ```
- `filetypes` :
  ```lua
  { "php" }
  ```
- `root_markers` :
  ```lua
  { "composer.json", ".git" }
  ```

---

## phptools

https://github.com/DEVSENSE/PhpTools

PHP 的语言服务器。

`phptools` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('phptools')
```

默认配置：
- `cmd` :
  ```lua
  { "phptools", "--language-server" }
  ```
- `filetypes` :
  ```lua
  { "php" }
  ```
- `root_markers` :
  ```lua
  { "composer.json", ".git" }
  ```

---

## pico8_ls

https://github.com/raddad772/pico8-ls

PICO-8 的语言服务器。

`pico8-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('pico8_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "pico8-ls" }
  ```
- `filetypes` :
  ```lua
  { "pico8" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## please

https://github.com/thought-machine/please

Please 构建系统的语言服务器。

`please-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('please')
```

默认配置：
- `cmd` :
  ```lua
  { "please-ls" }
  ```
- `filetypes` :
  ```lua
  { "please" }
  ```
- `root_markers` :
  ```lua
  { ".plzconfig", ".git" }
  ```

---

## pli

https://github.com/pli-lang/pli

PL/I 的语言服务器。

`pli-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('pli')
```

默认配置：
- `cmd` :
  ```lua
  { "pli-ls" }
  ```
- `filetypes` :
  ```lua
  { "pli" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## poryscript_pls

https://github.com/huderlem/poryscript

Poryscript 的语言服务器。

`poryscript-pls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('poryscript_pls')
```

默认配置：
- `cmd` :
  ```lua
  { "poryscript-pls" }
  ```
- `filetypes` :
  ```lua
  { "poryscript" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## postgres_lsp

https://github.com/supabase/postgres_lsp

PostgreSQL 的语言服务器。

`postgres-lsp` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('postgres_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "postgres-lsp" }
  ```
- `filetypes` :
  ```lua
  { "sql", "pgsql" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## powershell_es

https://github.com/PowerShell/PowerShellEditorServices

PowerShell 的语言服务器。

`powershell-editor-services` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('powershell_es')
```

默认配置：
- `cmd` :
  ```lua
  { "powershell-editor-services" }
  ```
- `filetypes` :
  ```lua
  { "ps1", "psm1", "psd1" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## prismals

https://github.com/prisma/language-tools

Prisma 的语言服务器。

`prisma-language-server` 可以通过 `npm` 安装：
```sh
npm install -g @prisma/language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('prismals')
```

默认配置：
- `cmd` :
  ```lua
  { "prisma-language-server" }
  ```
- `filetypes` :
  ```lua
  { "prisma" }
  ```
- `root_markers` :
  ```lua
  { "schema.prisma", ".git" }
  ```

---

## prolog_ls

https://github.com/fikovnik/swi-prolog-lsp

Prolog 的语言服务器。

`swi-prolog-lsp` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('prolog_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "swi-prolog-lsp" }
  ```
- `filetypes` :
  ```lua
  { "prolog" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## prosemd_lsp

https://github.com/zerok/prosemd-lsp

Markdown 的语言服务器。

`prosemd-lsp` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('prosemd_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "prosemd-lsp" }
  ```
- `filetypes` :
  ```lua
  { "markdown" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## protols

https://github.com/coder3101/protols

Protocol Buffers 的语言服务器。

`protols` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('protols')
```

默认配置：
- `cmd` :
  ```lua
  { "protols" }
  ```
- `filetypes` :
  ```lua
  { "proto" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## psalm

https://github.com/vimeo/psalm

PHP 的静态分析器。

`psalm` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('psalm')
```

默认配置：
- `cmd` :
  ```lua
  { "psalm", "--language-server" }
  ```
- `filetypes` :
  ```lua
  { "php" }
  ```
- `root_markers` :
  ```lua
  { "psalm.xml", ".git" }
  ```

---

## pug

https://github.com/digitaltoad/vim-pug

Pug 的语言服务器。

`pug-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('pug')
```

默认配置：
- `cmd` :
  ```lua
  { "pug-ls" }
  ```
- `filetypes` :
  ```lua
  { "pug" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## puppet

https://github.com/puppetlabs/puppet-editor-services

Puppet 的语言服务器。

`puppet-editor-services` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('puppet')
```

默认配置：
- `cmd` :
  ```lua
  { "puppet-editor-services" }
  ```
- `filetypes` :
  ```lua
  { "puppet" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## purescriptls

https://github.com/nwolverson/purescript-language-server

PureScript 的语言服务器。

`purescript-language-server` 可以通过 `npm` 安装：
```sh
npm install -g purescript-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('purescriptls')
```

默认配置：
- `cmd` :
  ```lua
  { "purescript-language-server" }
  ```
- `filetypes` :
  ```lua
  { "purescript" }
  ```
- `root_markers` :
  ```lua
  { "spago.dhall", "bower.json", ".git" }
  ```

---

## pylsp

https://github.com/python-lsp/python-lsp-server

Python 的语言服务器。

`python-lsp-server` 可以通过 `pip` 安装：
```sh
pip install -g python-lsp-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('pylsp')
```

默认配置：
- `cmd` :
  ```lua
  { "pylsp" }
  ```
- `filetypes` :
  ```lua
  { "python" }
  ```
- `root_markers` :
  ```lua
  { "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", "Pipfile", ".git" }
  ```

---

## pylyzer

https://github.com/mtshiba/pylyzer

Python 的语言服务器。

`pylyzer` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('pylyzer')
```

默认配置：
- `cmd` :
  ```lua
  { "pylyzer" }
  ```
- `filetypes` :
  ```lua
  { "python" }
  ```
- `root_markers` :
  ```lua
  { "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", "Pipfile", ".git" }
  ```

---

## pyre

https://github.com/facebook/pyre-check

Python 的静态类型检查器。

`pyre` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('pyre')
```

默认配置：
- `cmd` :
  ```lua
  { "pyre", "persistent" }
  ```
- `filetypes` :
  ```lua
  { "python" }
  ```
- `root_markers` :
  ```lua
  { ".pyre_configuration", ".git" }
  ```

---

## pyrefly

https://github.com/facebook/pyre-check

Python 的静态类型检查器。

`pyrefly` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('pyrefly')
```

默认配置：
- `cmd` :
  ```lua
  { "pyrefly" }
  ```
- `filetypes` :
  ```lua
  { "python" }
  ```
- `root_markers` :
  ```lua
  { ".pyre_configuration", ".git" }
  ```

---

## pyright

https://github.com/microsoft/pyright

Python 的语言服务器。

`pyright` 可以通过 `npm` 安装：
```sh
npm install -g pyright
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('pyright')
```

默认配置：
- `cmd` :
  ```lua
  { "pyright-langserver", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "python" }
  ```
- `root_markers` :
  ```lua
  { "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", "Pipfile", "pyrightconfig.json", ".git" }
  ```

---

## qmlls

https://github.com/qt/qtdeclarative

QML 的语言服务器。

`qmlls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('qmlls')
```

默认配置：
- `cmd` :
  ```lua
  { "qmlls" }
  ```
- `filetypes` :
  ```lua
  { "qml" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## quick_lint_js

https://github.com/quick-lint/quick-lint-js

JavaScript 的快速 linter。

`quick-lint-js` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('quick_lint_js')
```

默认配置：
- `cmd` :
  ```lua
  { "quick-lint-js", "--lsp-server" }
  ```
- `filetypes` :
  ```lua
  { "javascript" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## r_language_server

https://github.com/REditorSupport/languageserver

R 的语言服务器。

`languageserver` 可以通过 R 安装：
```r
install.packages("languageserver")
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('r_language_server')
```

默认配置：
- `cmd` :
  ```lua
  { "R", "--slave", "-e", "languageserver::run()" }
  ```
- `filetypes` :
  ```lua
  { "r" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## racket_langserver

https://github.com/jeapostrophe/racket-langserver

Racket 的语言服务器。

`racket-langserver` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('racket_langserver')
```

默认配置：
- `cmd` :
  ```lua
  { "racket-langserver" }
  ```
- `filetypes` :
  ```lua
  { "racket" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## raku_navigator

https://github.com/bscan/RakuNavigator

Raku 的语言服务器。

`raku-navigator` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('raku_navigator')
```

默认配置：
- `cmd` :
  ```lua
  { "raku-navigator" }
  ```
- `filetypes` :
  ```lua
  { "raku" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## reason_ls

https://github.com/jaredly/reason-language-server

Reason 的语言服务器。

`reason-language-server` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('reason_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "reason-language-server" }
  ```
- `filetypes` :
  ```lua
  { "reason" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## regal

https://github.com/regal-lang/regal

Regal 的语言服务器。

`regal-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('regal')
```

默认配置：
- `cmd` :
  ```lua
  { "regal-ls" }
  ```
- `filetypes` :
  ```lua
  { "regal" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## regols

https://github.com/regolith-lang/regols

Regolith 的语言服务器。

`regols` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('regols')
```

默认配置：
- `cmd` :
  ```lua
  { "regols" }
  ```
- `filetypes` :
  ```lua
  { "regolith" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## remark_ls

https://github.com/remarkjs/remark

Markdown 的语言服务器。

`remark-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('remark_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "remark-ls" }
  ```
- `filetypes` :
  ```lua
  { "markdown" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## rescriptls

https://github.com/rescript-lang/rescript-vscode

ReScript 的语言服务器。

`rescript-ls` 可以通过 `npm` 安装：
```sh
npm install -g @rescript/language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('rescriptls')
```

默认配置：
- `cmd` :
  ```lua
  { "rescript-ls" }
  ```
- `filetypes` :
  ```lua
  { "rescript" }
  ```
- `root_markers` :
  ```lua
  { "bsconfig.json", ".git" }
  ```

---

## rls

https://github.com/rust-lang/rls

Rust 的语言服务器。

`rls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('rls')
```

默认配置：
- `cmd` :
  ```lua
  { "rls" }
  ```
- `filetypes` :
  ```lua
  { "rust" }
  ```
- `root_markers` :
  ```lua
  { "Cargo.toml", ".git" }
  ```

---

## rnix

https://github.com/nix-community/rnix-lsp

Nix 的语言服务器。

`rnix-lsp` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('rnix')
```

默认配置：
- `cmd` :
  ```lua
  { "rnix-lsp" }
  ```
- `filetypes` :
  ```lua
  { "nix" }
  ```
- `root_markers` :
  ```lua
  { "flake.nix", ".git" }
  ```

---

## robotcode

https://github.com/d-biehl/robotcode

Robot Framework 的语言服务器。

`robotcode` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('robotcode')
```

默认配置：
- `cmd` :
  ```lua
  { "robotcode" }
  ```
- `filetypes` :
  ```lua
  { "robot" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## robotframework_ls

https://github.com/robocorp/robotframework-lsp

Robot Framework 的语言服务器。

`robotframework-lsp` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('robotframework_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "robotframework-lsp" }
  ```
- `filetypes` :
  ```lua
  { "robot" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## roc_ls

https://github.com/roc-lang/roc

Roc 的语言服务器。

`roc-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('roc_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "roc-ls" }
  ```
- `filetypes` :
  ```lua
  { "roc" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## rome

https://github.com/rome/tools

JavaScript、TypeScript、JSON、HTML、CSS 和 Markdown 的语言服务器。

`rome` 可以通过 `npm` 安装：
```sh
npm install -g rome
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('rome')
```

默认配置：
- `cmd` :
  ```lua
  { "rome", "lsp" }
  ```
- `filetypes` :
  ```lua
  { "javascript", "javascriptreact", "typescript", "typescriptreact", "json", "html", "css", "markdown" }
  ```
- `root_markers` :
  ```lua
  { "rome.json", ".git" }
  ```

---

## roslyn_ls

https://github.com/dotnet/roslyn

C# 和 Visual Basic 的语言服务器。

`roslyn-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('roslyn_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "roslyn-ls" }
  ```
- `filetypes` :
  ```lua
  { "cs", "vb" }
  ```
- `root_markers` :
  ```lua
  { ".csproj", ".vbproj", ".sln", ".git" }
  ```

---

## rpmspec

https://github.com/rpm-software-management/rpm

RPM spec 文件的语言服务器。

`rpmspec-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('rpmspec')
```

默认配置：
- `cmd` :
  ```lua
  { "rpmspec-ls" }
  ```
- `filetypes` :
  ```lua
  { "spec" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## rubocop

https://github.com/rubocop/rubocop

Ruby 的 linter 和格式化工具。

`rubocop` 可以通过 gem 安装：
```sh
gem install rubocop
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('rubocop')
```

默认配置：
- `cmd` :
  ```lua
  { "rubocop", "--lsp" }
  ```
- `filetypes` :
  ```lua
  { "ruby" }
  ```
- `root_markers` :
  ```lua
  { ".rubocop.yml", "Gemfile", ".git" }
  ```

---

## ruby_lsp

https://github.com/Shopify/ruby-lsp

Ruby 的语言服务器。

`ruby-lsp` 可以通过 gem 安装：
```sh
gem install ruby-lsp
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('ruby_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "ruby-lsp" }
  ```
- `filetypes` :
  ```lua
  { "ruby" }
  ```
- `root_markers` :
  ```lua
  { "Gemfile", ".git" }
  ```

---

## ruff

https://github.com/charliermarsh/ruff

Python 的极快 linter。

`ruff` 可以通过 pip 安装：
```sh
pip install ruff
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('ruff')
```

默认配置：
- `cmd` :
  ```lua
  { "ruff", "lsp" }
  ```
- `filetypes` :
  ```lua
  { "python" }
  ```
- `root_markers` :
  ```lua
  { "pyproject.toml", "ruff.toml", ".git" }
  ```

---

## ruff_lsp

https://github.com/charliermarsh/ruff

Python 的极快 linter。

`ruff-lsp` 可以通过 pip 安装：
```sh
pip install ruff-lsp
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('ruff_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "ruff-lsp" }
  ```
- `filetypes` :
  ```lua
  { "python" }
  ```
- `root_markers` :
  ```lua
  { "pyproject.toml", "ruff.toml", ".git" }
  ```

---

## rune_languageserver

https://github.com/rune-rs/rune

Rune 的语言服务器。

`rune-languageserver` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('rune_languageserver')
```

默认配置：
- `cmd` :
  ```lua
  { "rune-languageserver" }
  ```
- `filetypes` :
  ```lua
  { "rune" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## rust_analyzer

https://github.com/rust-lang/rust-analyzer

Rust 的语言服务器。

`rust-analyzer` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('rust_analyzer')
```

默认配置：
- `cmd` :
  ```lua
  { "rust-analyzer" }
  ```
- `filetypes` :
  ```lua
  { "rust" }
  ```
- `root_markers` :
  ```lua
  { "Cargo.toml", ".git" }
  ```

---

## salt_ls

https://github.com/saltstack/salt

SaltStack 的语言服务器。

`salt-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('salt_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "salt-ls" }
  ```
- `filetypes` :
  ```lua
  { "sls" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## scheme_langserver

https://github.com/ufo-org/scheme-langserver

Scheme 的语言服务器。

`scheme-langserver` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('scheme_langserver')
```

默认配置：
- `cmd` :
  ```lua
  { "scheme-langserver" }
  ```
- `filetypes` :
  ```lua
  { "scheme" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## scry

https://github.com/crystal-lang-tools/scry

Crystal 的语言服务器。

`scry` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('scry')
```

默认配置：
- `cmd` :
  ```lua
  { "scry" }
  ```
- `filetypes` :
  ```lua
  { "crystal" }
  ```
- `root_markers` :
  ```lua
  { "shard.yml", ".git" }
  ```

---

## selene3p_ls

https://github.com/Kampfkarren/selene

Lua 的 linter。

`selene` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('selene3p_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "selene", "--lsp" }
  ```
- `filetypes` :
  ```lua
  { "lua" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## serve_d

https://github.com/Pure-D/serve-d

D 的语言服务器。

`serve-d` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('serve_d')
```

默认配置：
- `cmd` :
  ```lua
  { "serve-d" }
  ```
- `filetypes` :
  ```lua
  { "d" }
  ```
- `root_markers` :
  ```lua
  { "dub.json", "dub.sdl", ".git" }
  ```

---

## shopify_theme_ls

https://github.com/Shopify/theme-language-server

Shopify 主题的语言服务器。

`shopify-theme-language-server` 可以通过 `npm` 安装：
```sh
npm install -g @shopify/theme-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('shopify_theme_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "shopify-theme-language-server" }
  ```
- `filetypes` :
  ```lua
  { "liquid", "html" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## sixtyfps

https://github.com/sixtyfpsui/sixtyfps

SixtyFPS 的语言服务器。

`sixtyfps-lsp` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('sixtyfps')
```

默认配置：
- `cmd` :
  ```lua
  { "sixtyfps-lsp" }
  ```
- `filetypes` :
  ```lua
  { "sixtyfps" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## slangd

https://github.com/Michael-F-Bryan/slang

SystemVerilog 的语言服务器。

`slangd` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('slangd')
```

默认配置：
- `cmd` :
  ```lua
  { "slangd" }
  ```
- `filetypes` :
  ```lua
  { "systemverilog" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## slint_lsp

https://github.com/slint-ui/slint

Slint 的语言服务器。

`slint-lsp` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('slint_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "slint-lsp" }
  ```
- `filetypes` :
  ```lua
  { "slint" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## smarty_ls

https://github.com/smarty-php/smarty

Smarty 的语言服务器。

`smarty-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('smarty_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "smarty-ls" }
  ```
- `filetypes` :
  ```lua
  { "smarty" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## smithy_ls

https://github.com/awslabs/smithy

Smithy 的语言服务器。

`smithy-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('smithy_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "smithy-ls" }
  ```
- `filetypes` :
  ```lua
  { "smithy" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## snakeskin_ls

https://github.com/snake-skin/snake-skin

SnakeSkin 的语言服务器。

`snakeskin-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('snakeskin_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "snakeskin-ls" }
  ```
- `filetypes` :
  ```lua
  { "snakeskin" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## snyk_ls

https://github.com/snyk/snyk-ls

Snyk 的语言服务器。

`snyk-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('snyk_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "snyk-ls" }
  ```
- `filetypes` :
  ```lua
  { "*" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## solang

https://github.com/hyperledger-labs/solang

Solidity 的语言服务器。

`solang` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('solang')
```

默认配置：
- `cmd` :
  ```lua
  { "solang", "--lsp" }
  ```
- `filetypes` :
  ```lua
  { "solidity" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## solargraph

https://github.com/castwide/solargraph

Ruby 的语言服务器。

`solargraph` 可以通过 gem 安装：
```sh
gem install solargraph
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('solargraph')
```

默认配置：
- `cmd` :
  ```lua
  { "solargraph", "stdio" }
  ```
- `filetypes` :
  ```lua
  { "ruby" }
  ```
- `root_markers` :
  ```lua
  { "Gemfile", ".git" }
  ```

---

## solc

https://github.com/ethereum/solidity

Solidity 编译器。

`solc` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('solc')
```

默认配置：
- `cmd` :
  ```lua
  { "solc", "--lsp" }
  ```
- `filetypes` :
  ```lua
  { "solidity" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## solidity

https://github.com/juanfranblanco/vscode-solidity

Solidity 的语言服务器。

`solidity-ls` 可以通过 `npm` 安装：
```sh
npm install -g @juanfranblanco/vscode-solidity
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('solidity')
```

默认配置：
- `cmd` :
  ```lua
  { "solidity-ls" }
  ```
- `filetypes` :
  ```lua
  { "solidity" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## solidity_ls

https://github.com/qiuxiang/solidity-language-server

Solidity 的语言服务器。

`solidity-language-server` 可以通过 `npm` 安装：
```sh
npm install -g solidity-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('solidity_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "solidity-language-server" }
  ```
- `filetypes` :
  ```lua
  { "solidity" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## solidity_ls_nomicfoundation

https://github.com/NomicFoundation/hardhat

Solidity 的语言服务器。

`solidity-ls` 可以通过 `npm` 安装：
```sh
npm install -g @nomicfoundation/hardhat
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('solidity_ls_nomicfoundation')
```

默认配置：
- `cmd` :
  ```lua
  { "solidity-ls" }
  ```
- `filetypes` :
  ```lua
  { "solidity" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## somesass_ls

https://github.com/somesass/somesass

Somesass 的语言服务器。

`somesass-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('somesass_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "somesass-ls" }
  ```
- `filetypes` :
  ```lua
  { "somesass" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## sorbet

https://github.com/sorbet/sorbet

Ruby 的静态类型检查器。

`sorbet` 可以通过 gem 安装：
```sh
gem install sorbet
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('sorbet')
```

默认配置：
- `cmd` :
  ```lua
  { "srb", "tc", "--lsp" }
  ```
- `filetypes` :
  ```lua
  { "ruby" }
  ```
- `root_markers` :
  ```lua
  { "sorbet/config", "Gemfile", ".git" }
  ```

---

## sourcekit

https://github.com/apple/sourcekit-lsp

Swift 和 C 系列语言的语言服务器。

`sourcekit-lsp` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('sourcekit')
```

默认配置：
- `cmd` :
  ```lua
  { "sourcekit-lsp" }
  ```
- `filetypes` :
  ```lua
  { "swift", "c", "cpp", "objective-c", "objective-cpp" }
  ```
- `root_markers` :
  ```lua
  { "Package.swift", ".git" }
  ```

---

## spectral

https://github.com/stoplightio/spectral

OpenAPI 和 AsyncAPI 文档的 linter。

`spectral` 可以通过 `npm` 安装：
```sh
npm install -g @stoplight/spectral
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('spectral')
```

默认配置：
- `cmd` :
  ```lua
  { "spectral", "--lsp" }
  ```
- `filetypes` :
  ```lua
  { "yaml", "json" }
  ```
- `root_markers` :
  ```lua
  { ".spectral.yaml", ".spectral.json", ".git" }
  ```

---

## spyglassmc_language_server

https://github.com/SpyglassMC/Spyglass

Minecraft 数据包的语言服务器。

`spyglassmc-language-server` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('spyglassmc_language_server')
```

默认配置：
- `cmd` :
  ```lua
  { "spyglassmc-language-server" }
  ```
- `filetypes` :
  ```lua
  { "mcfunction", "json", "json5" }
  ```
- `root_markers` :
  ```lua
  { "pack.mcmeta", ".git" }
  ```

---

## sqlls

https://github.com/joe-re/sql-language-server

SQL 的语言服务器。

`sql-language-server` 可以通过 `npm` 安装：
```sh
npm install -g sql-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('sqlls')
```

默认配置：
- `cmd` :
  ```lua
  { "sql-language-server", "up", "--method", "stdio" }
  ```
- `filetypes` :
  ```lua
  { "sql" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## sqls

https://github.com/lighttiger2505/sqls

SQL 的语言服务器。

`sqls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('sqls')
```

默认配置：
- `cmd` :
  ```lua
  { "sqls" }
  ```
- `filetypes` :
  ```lua
  { "sql" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## sqruff

https://github.com/sqruff/sqruff

SQL 的 linter。

`sqruff` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('sqruff')
```

默认配置：
- `cmd` :
  ```lua
  { "sqruff", "--lsp" }
  ```
- `filetypes` :
  ```lua
  { "sql" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## standardrb

https://github.com/standardrb/standard

Ruby 的 linter 和格式化工具。

`standardrb` 可以通过 gem 安装：
```sh
gem install standard
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('standardrb')
```

默认配置：
- `cmd` :
  ```lua
  { "standardrb", "--lsp" }
  ```
- `filetypes` :
  ```lua
  { "ruby" }
  ```
- `root_markers` :
  ```lua
  { ".standard.yml", "Gemfile", ".git" }
  ```

---

## starlark_rust

https://github.com/facebookexperimental/starlark-rust

Starlark 的语言服务器。

`starlark-rust-lsp` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('starlark_rust')
```

默认配置：
- `cmd` :
  ```lua
  { "starlark-rust-lsp" }
  ```
- `filetypes` :
  ```lua
  { "starlark" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## starpls

https://github.com/warricksothr/StarPLS

Starlark 的语言服务器。

`starpls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('starpls')
```

默认配置：
- `cmd` :
  ```lua
  { "starpls" }
  ```
- `filetypes` :
  ```lua
  { "starlark" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## statix

https://github.com/nerdypepper/statix

Nix 的 linter。

`statix` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('statix')
```

默认配置：
- `cmd` :
  ```lua
  { "statix", "check", "--format", "json" }
  ```
- `filetypes` :
  ```lua
  { "nix" }
  ```
- `root_markers` :
  ```lua
  { "flake.nix", ".git" }
  ```

---

## steep

https://github.com/soutaro/steep

Ruby 的静态类型检查器。

`steep` 可以通过 gem 安装：
```sh
gem install steep
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('steep')
```

默认配置：
- `cmd` :
  ```lua
  { "steep", "langserver" }
  ```
- `filetypes` :
  ```lua
  { "ruby" }
  ```
- `root_markers` :
  ```lua
  { "Steepfile", "Gemfile", ".git" }
  ```

---

## stimulus_ls

https://github.com/stimulusjs/stimulus

Stimulus 的语言服务器。

`stimulus-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('stimulus_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "stimulus-ls" }
  ```
- `filetypes` :
  ```lua
  { "javascript", "typescript" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## stylelint_lsp

https://github.com/stylelint/stylelint

CSS 的 linter。

`stylelint-lsp` 可以通过 `npm` 安装：
```sh
npm install -g stylelint-lsp
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('stylelint_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "stylelint-lsp" }
  ```
- `filetypes` :
  ```lua
  { "css", "scss", "less", "sass" }
  ```
- `root_markers` :
  ```lua
  { ".stylelintrc", "stylelint.config.js", ".git" }
  ```

---

## stylua

https://github.com/JohnnyMorganz/StyLua

Lua 的代码格式化工具。

`stylua` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('stylua')
```

默认配置：
- `cmd` :
  ```lua
  { "stylua", "--lsp" }
  ```
- `filetypes` :
  ```lua
  { "lua" }
  ```
- `root_markers` :
  ```lua
  { ".stylua.toml", ".git" }
  ```

---

## stylua3p_ls

https://github.com/JohnnyMorganz/StyLua

Lua 的代码格式化工具。

`stylua3p-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('stylua3p_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "stylua3p-ls" }
  ```
- `filetypes` :
  ```lua
  { "lua" }
  ```
- `root_markers` :
  ```lua
  { ".stylua.toml", ".git" }
  ```

---

## superhtml

https://github.com/superhtml/superhtml

HTML 的语言服务器。

`superhtml-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('superhtml')
```

默认配置：
- `cmd` :
  ```lua
  { "superhtml-ls" }
  ```
- `filetypes` :
  ```lua
  { "html" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## svelte

https://github.com/sveltejs/language-tools

Svelte 的语言服务器。

`svelte-language-server` 可以通过 `npm` 安装：
```sh
npm install -g svelte-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('svelte')
```

默认配置：
- `cmd` :
  ```lua
  { "svelte-language-server", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "svelte" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## svlangserver

https://github.com/imc-trading/svlangserver

SystemVerilog 的语言服务器。

`svlangserver` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('svlangserver')
```

默认配置：
- `cmd` :
  ```lua
  { "svlangserver" }
  ```
- `filetypes` :
  ```lua
  { "systemverilog" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## svls

https://github.com/dalance/svls

SystemVerilog 的语言服务器。

`svls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('svls')
```

默认配置：
- `cmd` :
  ```lua
  { "svls" }
  ```
- `filetypes` :
  ```lua
  { "systemverilog" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## swift_mesonls

https://github.com/mesonbuild/meson

Meson 构建系统的语言服务器。

`mesonlsp` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('swift_mesonls')
```

默认配置：
- `cmd` :
  ```lua
  { "mesonlsp" }
  ```
- `filetypes` :
  ```lua
  { "meson" }
  ```
- `root_markers` :
  ```lua
  { "meson.build", ".git" }
  ```

---

## syntax_tree

https://github.com/ruby-syntax-tree/syntax_tree

Ruby 的语法树工具。

`syntax-tree` 可以通过 gem 安装：
```sh
gem install syntax_tree
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('syntax_tree')
```

默认配置：
- `cmd` :
  ```lua
  { "stree", "lsp" }
  ```
- `filetypes` :
  ```lua
  { "ruby" }
  ```
- `root_markers` :
  ```lua
  { "Gemfile", ".git" }
  ```

---

## systemd_ls

https://github.com/hartwork/systemd-ls

systemd 单元文件的语言服务器。

`systemd-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('systemd_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "systemd-ls" }
  ```
- `filetypes` :
  ```lua
  { "systemd" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## tabby_ml

https://github.com/tabbyml/tabby

Tabby 的语言服务器。

`tabby-ml` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('tabby_ml')
```

默认配置：
- `cmd` :
  ```lua
  { "tabby-ml" }
  ```
- `filetypes` :
  ```lua
  { "*" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## tailwindcss

https://github.com/tailwindlabs/tailwindcss-intellisense

Tailwind CSS 的语言服务器。

`tailwindcss-language-server` 可以通过 `npm` 安装：
```sh
npm install -g @tailwindcss/language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('tailwindcss')
```

默认配置：
- `cmd` :
  ```lua
  { "tailwindcss-language-server" }
  ```
- `filetypes` :
  ```lua
  { "html", "css", "scss", "less", "sass", "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "svelte" }
  ```
- `root_markers` :
  ```lua
  { "tailwind.config.js", "tailwind.config.cjs", "tailwind.config.ts", ".git" }
  ```

---

## taplo

https://github.com/tamasfe/taplo

TOML 的语言服务器。

`taplo` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('taplo')
```

默认配置：
- `cmd` :
  ```lua
  { "taplo", "lsp", "stdio" }
  ```
- `filetypes` :
  ```lua
  { "toml" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## tblgen_lsp_server

https://github.com/llvm/llvm-project

TableGen 的语言服务器。

`tblgen-lsp-server` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('tblgen_lsp_server')
```

默认配置：
- `cmd` :
  ```lua
  { "tblgen-lsp-server" }
  ```
- `filetypes` :
  ```lua
  { "tablegen" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## teal_ls

https://github.com/teal-language/teal

Teal 的语言服务器。

`teal-language-server` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('teal_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "teal-language-server" }
  ```
- `filetypes` :
  ```lua
  { "teal" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## templ

https://github.com/a-h/templ

Templ 的语言服务器。

`templ-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('templ')
```

默认配置：
- `cmd` :
  ```lua
  { "templ-ls" }
  ```
- `filetypes` :
  ```lua
  { "templ" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## termux_language_server

https://github.com/termux/termux-language-server

Termux 的语言服务器。

`termux-language-server` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('termux_language_server')
```

默认配置：
- `cmd` :
  ```lua
  { "termux-language-server" }
  ```
- `filetypes` :
  ```lua
  { "*" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## terraform_lsp

https://github.com/hashicorp/terraform-ls

Terraform 的语言服务器。

`terraform-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('terraform_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "terraform-ls" }
  ```
- `filetypes` :
  ```lua
  { "terraform", "hcl" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## terraformls

https://github.com/hashicorp/terraform-ls

Terraform 的语言服务器。

`terraform-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('terraformls')
```

默认配置：
- `cmd` :
  ```lua
  { "terraform-ls" }
  ```
- `filetypes` :
  ```lua
  { "terraform", "hcl" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## texlab

https://github.com/latex-lsp/texlab

LaTeX 的语言服务器。

`texlab` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('texlab')
```

默认配置：
- `cmd` :
  ```lua
  { "texlab" }
  ```
- `filetypes` :
  ```lua
  { "tex", "latex" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## textlsp

https://github.com/text-lsp/text-lsp

纯文本的语言服务器。

`text-lsp` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('textlsp')
```

默认配置：
- `cmd` :
  ```lua
  { "text-lsp" }
  ```
- `filetypes` :
  ```lua
  { "text", "txt" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## tflint

https://github.com/terraform-linters/tflint

Terraform 的 linter。

`tflint` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('tflint')
```

默认配置：
- `cmd` :
  ```lua
  { "tflint", "--langserver" }
  ```
- `filetypes` :
  ```lua
  { "terraform", "hcl" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## theme_check

https://github.com/Shopify/theme-check

Shopify 主题的 linter。

`theme-check` 可以通过 gem 安装：
```sh
gem install theme-check
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('theme_check')
```

默认配置：
- `cmd` :
  ```lua
  { "theme-check", "language-server" }
  ```
- `filetypes` :
  ```lua
  { "liquid", "html" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## thriftls

https://github.com/ThriftLS/thriftls

Thrift 的语言服务器。

`thriftls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('thriftls')
```

默认配置：
- `cmd` :
  ```lua
  { "thriftls" }
  ```
- `filetypes` :
  ```lua
  { "thrift" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## tilt_ls

https://github.com/tilt-dev/tilt

Tilt 的语言服务器。

`tilt-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('tilt_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "tilt-ls" }
  ```
- `filetypes` :
  ```lua
  { "tilt" }
  ```
- `root_markers` :
  ```lua
  { "Tiltfile", ".git" }
  ```

---

## tinymist

https://github.com/tinymist/tinymist

TinyMist 的语言服务器。

`tinymist-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('tinymist')
```

默认配置：
- `cmd` :
  ```lua
  { "tinymist-ls" }
  ```
- `filetypes` :
  ```lua
  { "tinymist" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## tofu_ls

https://github.com/opentofu/opentofu

OpenTofu 的语言服务器。

`tofu-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('tofu_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "tofu-ls" }
  ```
- `filetypes` :
  ```lua
  { "tofu", "hcl" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## tombi

https://github.com/tombi-lang/tombi

Tombi 的语言服务器。

`tombi-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('tombi')
```

默认配置：
- `cmd` :
  ```lua
  { "tombi-ls" }
  ```
- `filetypes` :
  ```lua
  { "tombi" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## ts_ls

https://github.com/typescript-language-server/typescript-language-server

TypeScript 的语言服务器。

`typescript-language-server` 可以通过 `npm` 安装：
```sh
npm install -g typescript-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('ts_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "typescript-language-server", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "typescript", "typescriptreact", "typescript.tsx" }
  ```
- `root_markers` :
  ```lua
  { "tsconfig.json", "package.json", ".git" }
  ```

---

## ts_query_ls

https://github.com/tree-sitter/tree-sitter

Tree-sitter 查询的语言服务器。

`ts-query-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('ts_query_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "ts-query-ls" }
  ```
- `filetypes` :
  ```lua
  { "query" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## tsgo

https://github.com/ts-go/ts-go

TypeScript 到 Go 的转换器。

`tsgo` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('tsgo')
```

默认配置：
- `cmd` :
  ```lua
  { "tsgo" }
  ```
- `filetypes` :
  ```lua
  { "typescript" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## tsp_server

https://github.com/typescript-packages/tsp

TypeScript 包的语言服务器。

`tsp-server` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('tsp_server')
```

默认配置：
- `cmd` :
  ```lua
  { "tsp-server" }
  ```
- `filetypes` :
  ```lua
  { "typescript" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## ttags

https://github.com/universal-ctags/ctags

Ctags 的语言服务器。

`ttags` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('ttags')
```

默认配置：
- `cmd` :
  ```lua
  { "ttags" }
  ```
- `filetypes` :
  ```lua
  { "*" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## turbo_ls

https://github.com/vercel/turbo

Turbo 的语言服务器。

`turbo-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('turbo_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "turbo-ls" }
  ```
- `filetypes` :
  ```lua
  { "json" }
  ```
- `root_markers` :
  ```lua
  { "turbo.json", ".git" }
  ```

---

## turtle_ls

https://github.com/turtle-lang/turtle

Turtle 的语言服务器。

`turtle-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('turtle_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "turtle-ls" }
  ```
- `filetypes` :
  ```lua
  { "turtle" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## tvm_ffi_navigator

https://github.com/apache/tvm

TVM FFI 导航器的语言服务器。

`tvm-ffi-navigator` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('tvm_ffi_navigator')
```

默认配置：
- `cmd` :
  ```lua
  { "tvm-ffi-navigator" }
  ```
- `filetypes` :
  ```lua
  { "c", "cpp", "python" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## twiggy_language_server

https://github.com/twiggy-lang/twiggy

Twiggy 的语言服务器。

`twiggy-language-server` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('twiggy_language_server')
```

默认配置：
- `cmd` :
  ```lua
  { "twiggy-language-server" }
  ```
- `filetypes` :
  ```lua
  { "twiggy" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## ty

https://github.com/ty-lang/ty

Ty 的语言服务器。

`ty-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('ty')
```

默认配置：
- `cmd` :
  ```lua
  { "ty-ls" }
  ```
- `filetypes` :
  ```lua
  { "ty" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## typeprof

https://github.com/ruby/typeprof

Ruby 的类型分析器。

`typeprof` 可以通过 gem 安装：
```sh
gem install typeprof
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('typeprof')
```

默认配置：
- `cmd` :
  ```lua
  { "typeprof", "--lsp" }
  ```
- `filetypes` :
  ```lua
  { "ruby" }
  ```
- `root_markers` :
  ```lua
  { "Gemfile", ".git" }
  ```

---

## typos_lsp

https://github.com/crate-ci/typos

拼写检查器。

`typos` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('typos_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "typos", "--lsp" }
  ```
- `filetypes` :
  ```lua
  { "*" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## typst_lsp

https://github.com/typst/typst

Typst 的语言服务器。

`typst-lsp` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('typst_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "typst-lsp" }
  ```
- `filetypes` :
  ```lua
  { "typst" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## uiua

https://github.com/uiua-lang/uiua

Uiua 的语言服务器。

`uiua-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('uiua')
```

默认配置：
- `cmd` :
  ```lua
  { "uiua-ls" }
  ```
- `filetypes` :
  ```lua
  { "uiua" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## ungrammar_languageserver

https://github.com/rust-analyzer/ungrammar

Ungrammar 的语言服务器。

`ungrammar-languageserver` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('ungrammar_languageserver')
```

默认配置：
- `cmd` :
  ```lua
  { "ungrammar-languageserver" }
  ```
- `filetypes` :
  ```lua
  { "ungrammar" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## unison

https://github.com/unisonweb/unison

Unison 的语言服务器。

`unison-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('unison')
```

默认配置：
- `cmd` :
  ```lua
  { "unison-ls" }
  ```
- `filetypes` :
  ```lua
  { "unison" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## unocss

https://github.com/unocss/unocss

UnoCSS 的语言服务器。

`unocss-language-server` 可以通过 `npm` 安装：
```sh
npm install -g @unocss/language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('unocss')
```

默认配置：
- `cmd` :
  ```lua
  { "unocss-language-server" }
  ```
- `filetypes` :
  ```lua
  { "html", "css", "scss", "less", "sass", "javascript", "javascriptreact", "typescript", "typescriptreact", "vue", "svelte" }
  ```
- `root_markers` :
  ```lua
  { "uno.config.js", "uno.config.ts", ".git" }
  ```

---

## uvls

https://github.com/astral-sh/uv

uv 包管理器的语言服务器。

`uvls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('uvls')
```

默认配置：
- `cmd` :
  ```lua
  { "uvls" }
  ```
- `filetypes` :
  ```lua
  { "python" }
  ```
- `root_markers` :
  ```lua
  { "pyproject.toml", ".git" }
  ```

---

## v_analyzer

https://github.com/v-analyzer/v-analyzer

V 的语言服务器。

`v-analyzer` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('v_analyzer')
```

默认配置：
- `cmd` :
  ```lua
  { "v-analyzer" }
  ```
- `filetypes` :
  ```lua
  { "v" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## vacuum

https://github.com/daveshanley/vacuum

OpenAPI 的 linter。

`vacuum` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('vacuum')
```

默认配置：
- `cmd` :
  ```lua
  { "vacuum", "lsp" }
  ```
- `filetypes` :
  ```lua
  { "yaml", "json" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## vala_ls

https://github.com/vala-lang/vala-language-server

Vala 的语言服务器。

`vala-language-server` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('vala_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "vala-language-server" }
  ```
- `filetypes` :
  ```lua
  { "vala" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## vale_ls

https://github.com/errata-ai/vale

Vale 的语言服务器。

`vale-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('vale_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "vale-ls" }
  ```
- `filetypes` :
  ```lua
  { "*" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## vectorcode_server

https://github.com/vector-lang/vector

Vector 的语言服务器。

`vectorcode-server` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('vectorcode_server')
```

默认配置：
- `cmd` :
  ```lua
  { "vectorcode-server" }
  ```
- `filetypes` :
  ```lua
  { "vector" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## verible

https://github.com/chipsalliance/verible

SystemVerilog 的工具。

`verible-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('verible')
```

默认配置：
- `cmd` :
  ```lua
  { "verible-ls" }
  ```
- `filetypes` :
  ```lua
  { "systemverilog" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## veridian

https://github.com/veridian-lang/veridian

Veridian 的语言服务器。

`veridian-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('veridian')
```

默认配置：
- `cmd` :
  ```lua
  { "veridian-ls" }
  ```
- `filetypes` :
  ```lua
  { "veridian" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## veryl_ls

https://github.com/veryl-lang/veryl

Veryl 的语言服务器。

`veryl-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('veryl_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "veryl-ls" }
  ```
- `filetypes` :
  ```lua
  { "veryl" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## vespa_ls

https://github.com/vespa-engine/vespa

Vespa 的语言服务器。

`vespa-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('vespa_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "vespa-ls" }
  ```
- `filetypes` :
  ```lua
  { "vespa" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## vhdl_ls

https://github.com/VHDL-LS/rust_hdl

VHDL 的语言服务器。

`vhdl-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('vhdl_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "vhdl-ls" }
  ```
- `filetypes` :
  ```lua
  { "vhdl" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## vimls

https://github.com/iamcco/vim-language-server

Vim script 的语言服务器。

`vim-language-server` 可以通过 `npm` 安装：
```sh
npm install -g vim-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('vimls')
```

默认配置：
- `cmd` :
  ```lua
  { "vim-language-server", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "vim" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## visualforce_ls

https://github.com/forcedotcom/visualforce-language-server

Visualforce 的语言服务器。

`visualforce-language-server` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('visualforce_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "visualforce-language-server" }
  ```
- `filetypes` :
  ```lua
  { "visualforce" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## vls

https://github.com/vlang/vls

V 的语言服务器。

`vls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('vls')
```

默认配置：
- `cmd` :
  ```lua
  { "vls" }
  ```
- `filetypes` :
  ```lua
  { "v" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## volar

https://github.com/volarjs/volar

Vue 的语言服务器。

`volar` 可以通过 `npm` 安装：
```sh
npm install -g @volar/vue-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('volar')
```

默认配置：
- `cmd` :
  ```lua
  { "vue-language-server", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "vue" }
  ```
- `root_markers` :
  ```lua
  { "package.json", ".git" }
  ```

---

## vscoqtop

https://github.com/coq-community/vscoq

Coq 的语言服务器。

`vscoqtop` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('vscoqtop')
```

默认配置：
- `cmd` :
  ```lua
  { "vscoqtop" }
  ```
- `filetypes` :
  ```lua
  { "coq" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## vtsls

https://github.com/yionr/vtsls

TypeScript 的语言服务器。

`vtsls` 可以通过 `npm` 安装：
```sh
npm install -g vtsls
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('vtsls')
```

默认配置：
- `cmd` :
  ```lua
  { "vtsls" }
  ```
- `filetypes` :
  ```lua
  { "typescript", "typescriptreact", "typescript.tsx" }
  ```
- `root_markers` :
  ```lua
  { "tsconfig.json", "package.json", ".git" }
  ```

---

## vue_ls

https://github.com/vuejs/language-tools

Vue 的语言服务器。

`vue-language-server` 可以通过 `npm` 安装：
```sh
npm install -g @vue/language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('vue_ls')
```

默认配置：
- `cmd` :
  ```lua
  { "vue-language-server", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "vue" }
  ```
- `root_markers` :
  ```lua
  { "package.json", ".git" }
  ```

---

## wasm_language_tools

https://github.com/wasmerio/wasm-language-tools

WebAssembly 的语言服务器。

`wasm-language-tools` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('wasm_language_tools')
```

默认配置：
- `cmd` :
  ```lua
  { "wasm-language-tools" }
  ```
- `filetypes` :
  ```lua
  { "wasm", "wat" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## wgsl_analyzer

https://github.com/wgsl-analyzer/wgsl-analyzer

WGSL 的语言服务器。

`wgsl-analyzer` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('wgsl_analyzer')
```

默认配置：
- `cmd` :
  ```lua
  { "wgsl-analyzer" }
  ```
- `filetypes` :
  ```lua
  { "wgsl" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## yamlls

https://github.com/redhat-developer/yaml-language-server

YAML 的语言服务器。

`yaml-language-server` 可以通过 `npm` 安装：
```sh
npm install -g yaml-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('yamlls')
```

默认配置：
- `cmd` :
  ```lua
  { "yaml-language-server", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "yaml", "yml" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## yang_lsp

https://github.com/theia-ide/yang-lsp

YANG 的语言服务器。

`yang-lsp` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('yang_lsp')
```

默认配置：
- `cmd` :
  ```lua
  { "yang-lsp" }
  ```
- `filetypes` :
  ```lua
  { "yang" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## yls

https://github.com/yaml-language-server/yaml-language-server

YAML 的语言服务器。

`yls` 可以通过 `npm` 安装：
```sh
npm install -g yaml-language-server
```

启用语言服务器的代码片段：
```lua
vim.lsp.enable('yls')
```

默认配置：
- `cmd` :
  ```lua
  { "yaml-language-server", "--stdio" }
  ```
- `filetypes` :
  ```lua
  { "yaml", "yml" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## ziggy

https://github.com/ziggy-lang/ziggy

Ziggy 的语言服务器。

`ziggy-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('ziggy')
```

默认配置：
- `cmd` :
  ```lua
  { "ziggy-ls" }
  ```
- `filetypes` :
  ```lua
  { "ziggy" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## ziggy_schema

https://github.com/ziggy-lang/ziggy

Ziggy 模式的语言服务器。

`ziggy-schema-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('ziggy_schema')
```

默认配置：
- `cmd` :
  ```lua
  { "ziggy-schema-ls" }
  ```
- `filetypes` :
  ```lua
  { "ziggy-schema" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

## zk

https://github.com/zk-org/zk

zk 笔记工具的语言服务器。

`zk` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('zk')
```

默认配置：
- `cmd` :
  ```lua
  { "zk", "lsp" }
  ```
- `filetypes` :
  ```lua
  { "markdown" }
  ```
- `root_markers` :
  ```lua
  { ".zk", ".git" }
  ```

---

## zls

https://github.com/zigtools/zls

Zig 的语言服务器。

`zls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('zls')
```

默认配置：
- `cmd` :
  ```lua
  { "zls" }
  ```
- `filetypes` :
  ```lua
  { "zig" }
  ```
- `root_markers` :
  ```lua
  { "build.zig", ".git" }
  ```

---

## zuban

https://github.com/zuban-lang/zuban

Zuban 的语言服务器。

`zuban-ls` 可以通过包管理器安装，或从源代码构建。

启用语言服务器的代码片段：
```lua
vim.lsp.enable('zuban')
```

默认配置：
- `cmd` :
  ```lua
  { "zuban-ls" }
  ```
- `filetypes` :
  ```lua
  { "zuban" }
  ```
- `root_markers` :
  ```lua
  { ".git" }
  ```

---

这是完整的 LSP 配置列表的中文翻译。每个条目包含了语言服务器的名称、官方仓库链接、简要描述、安装方法和默认配置信息。