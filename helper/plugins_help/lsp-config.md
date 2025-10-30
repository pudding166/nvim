以下是 `lspconfig-all` 文档的中文翻译：

---

下方列出了由 nvim-lspconfig 提供的 LSP 配置。

                                      输入 |gO| 查看目录。

==============================================================================
LSP 配置

------------------------------------------------------------------------------
ada_ls

https://github.com/AdaCore/ada_language_server

安装说明可以在[这里](https://github.com/AdaCore/ada_language_server#Install)找到。

工作区特定的[设置](https://github.com/AdaCore/ada_language_server/blob/master/doc/settings.md)，例如 `projectFile`，可以在工作区根目录下的 `.als.json` 文件中提供。
或者，配置可以作为 "settings" 对象传递给 `vim.lsp.config('ada_ls', {})`：
>lua
  vim.lsp.config('ada_ls', {
      settings = {
        ada = {
          projectFile = "project.gpr";
          scenarioVariables = { ... };
        }
      }
  })

启用语言服务器的代码片段：>lua
  vim.lsp.enable('ada_ls')


默认配置：
- cmd: >lua
  { "ada_language_server" }
- filetypes: >lua
  { "ada" }
- root_dir (使用 "gF" 查看): ../lsp/ada_ls.lua:24
<

------------------------------------------------------------------------------
agda_ls

https://github.com/agda/agda-language-server

Agda 的语言服务器。

启用语言服务器的代码片段：>lua
  vim.lsp.enable('agda_ls')


默认配置：
- cmd: >lua
  { "als" }
- filetypes: >lua
  { "agda" }
- root_dir (使用 "gF" 查看): ../lsp/agda_ls.lua:10
<

------------------------------------------------------------------------------
aiken

https://github.com/aiken-lang/aiken

Aiken 编程语言的语言服务器。
[安装说明](https://aiken-lang.org/installation-instructions)

它可以...

启用语言服务器的代码片段：>lua
  vim.lsp.enable('aiken')


默认配置：
- cmd: >lua
  { "aiken", "lsp" }
- filetypes: >lua
  { "aiken" }
- root_markers: >lua
  { "aiken.toml", ".git" }
<

------------------------------------------------------------------------------
air

https://github.com/posit-dev/air

Air 是一个用 Rust 编写的 R 语言格式化器和语言服务器。

更多详情请参阅[文档](https://posit-dev.github.io/air/editors.html)。

启用语言服务器的代码片段：>lua
  vim.lsp.enable('air')


默认配置：
- cmd: >lua
  { "air", "language-server" }
- filetypes: >lua
  { "r" }
- root_markers: >lua
  { "air.toml", ".air.toml", ".git" }
<

------------------------------------------------------------------------------
alloy_ls

https://github.com/AlloyTools/org.alloytools.alloy

Alloy 是一种用于描述结构的形式化规范语言，也是一个用于探索这些结构的工具。

您可能还需要为 Alloy (*.als) 文件配置文件类型：
>
  autocmd BufNewFile,BufRead *.als set filetype=alloy

或者
>lua
  vim.filetype.add({
    pattern = {
      ['.*/*.als'] = 'alloy',
    },
  })

或者，您可以使用语法插件，如 https://github.com/runoshun/vim-alloy。

启用语言服务器的代码片段：>lua
  vim.lsp.enable('alloy_ls')


默认配置：
- cmd: >lua
  { "alloy", "lsp" }
- filetypes: >lua
  { "alloy" }
- root_markers: >lua
  { ".git" }
<

------------------------------------------------------------------------------
anakin_language_server

https://pypi.org/project/anakin-language-server/

`anakin-language-server` 是另一个 Jedi Python 语言服务器。

可用选项：

* 初始化：https://github.com/muffinmad/anakin-language-server#initialization-option
* 配置：https://github.com/muffinmad/anakin-language-server#configuration-options

启用语言服务器的代码片段：>lua
  vim.lsp.enable('anakin_language_server')


默认配置：
- cmd: >lua
  { "anakinls" }
- filetypes: >lua
  { "python" }
- root_markers: >lua
  { "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", "Pipfile", ".git" }
- settings: >lua
  {
    anakinls = {
      pyflakes_errors = { "ImportStarNotPermitted", "UndefinedExport", "UndefinedLocal", "UndefinedName", "DuplicateArgument", "MultiValueRepeatedKeyLiteral", "MultiValueRepeatedKeyVariable", "FutureFeatureNotDefined", "LateFutureImport", "ReturnOutsideFunction", "YieldOutsideFunction", "ContinueOutsideLoop", "BreakOutsideLoop", "TwoStarredExpressions", "TooManyExpressionsInStarredAssignment", "ForwardAnnotationSyntaxError", "RaiseNotImplemented", "StringDotFormatExtraPositionalArguments", "StringDotFormatExtraNamedArguments", "StringDotFormatMissingArgument", "StringDotFormatMixingAutomatic", "StringDotFormatInvalidFormat", "PercentFormatInvalidFormat", "PercentFormatMixedPositionalAndNamed", "PercentFormatUnsupportedFormat", "PercentFormatPositionalCountMismatch", "PercentFormatExtraNamedArguments", "PercentFormatMissingArgument", "PercentFormatExpectedMapping", "PercentFormatExpectedSequence", "PercentFormatStarRequiresSequence" }
    }
  }
<

------------------------------------------------------------------------------
angularls

https://github.com/angular/vscode-ng-language-service
`angular-language-server` 可以通过 npm 安装 `npm install -g @angular/language-server`。
>lua
  local project_library_path = "/path/to/project/lib"
  local cmd = {"ngserver", "--stdio", "--tsProbeLocations", project_library_path , "--ngProbeLocations", project_library_path}

  vim.lsp.config('angularls', {
    cmd = cmd,
  })

启用语言服务器的代码片段：>lua
  vim.lsp.enable('angularls')


默认配置：
- cmd: >lua
  { "ngserver", "--stdio", "--tsProbeLocations", "../..,?/node_modules", "--ngProbeLocations", "../../@angular/language-server/node_modules,?/node_modules/@angular/language-server/node_modules", "--angularCoreVersion", "" }
- filetypes: >lua
  { "typescript", "html", "typescriptreact", "typescript.tsx", "htmlangular" }
- root_markers: >lua
  { "angular.json", "nx.json" }
<

------------------------------------------------------------------------------
ansiblels

https://github.com/ansible/vscode-ansible

Ansible 配置管理工具的语言服务器。

`ansible-language-server` 可以通过 `npm` 安装：
>sh
  npm install -g @ansible/ansible-language-server

启用语言服务器的代码片段：>lua
  vim.lsp.enable('ansiblels')


默认配置：
- cmd: >lua
  { "ansible-language-server", "--stdio" }
- filetypes: >lua
  { "yaml.ansible" }
- root_markers: >lua
  { "ansible.cfg", ".ansible-lint" }
- settings: >lua
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
<

------------------------------------------------------------------------------
antlersls

https://www.npmjs.com/package/antlers-language-server

`antlersls` 可以通过 `npm` 安装 >sh
  npm install -g antlers-language-server

启用语言服务器的代码片段：>lua
  vim.lsp.enable('antlersls')


默认配置：
- cmd: >lua
  { "antlersls", "--stdio" }
- filetypes: >lua
  { "html", "antlers" }
- root_markers: >lua
  { "composer.json" }
<

------------------------------------------------------------------------------
apex_ls

https://github.com/forcedotcom/salesforcedx-vscode

 Apex 的语言服务器。

 对于手动安装，从 [VSCode 扩展](https://github.com/forcedotcom/salesforcedx-vscode/tree/develop/packages/salesforcedx-vscode-apex) 下载 JAR 文件，并适当调整 `apex_jar_path`。

 ```lua
 vim.lsp.config('apex_ls', {
   apex_jar_path = '/path/to/apex-jorje-lsp.jar',
   apex_enable_semantic_errors = false, -- 是否允许 Apex 语言服务器报告语义错误
   apex_enable_completion_statistics = false, -- 是否允许 Apex 语言服务器收集代码补全使用情况的遥测数据
 }
```

 使用 Mason 的配置示例：
>lua
   vim.lsp.config('apex_ls', {
     apex_jar_path = vim.fn.stdpath('data') .. '/mason/share/apex-language-server/apex-jorje-lsp.jar',
   }

 为了获得完整体验，您可能需要确保已安装 'apex' 的 treesitter 解析器 (:TSInstall apex)，并为 apex (*.cls) 文件配置文件类型：

 ```lua
 vim.filetype.add({
   pattern = {
     ['.*/*.cls'] = 'apex',
   },
 })
 ```

启用语言服务器的代码片段：>lua
  vim.lsp.enable('apex_ls')


默认配置：
- cmd (使用 "gF" 查看): ../lsp/apex_ls.lua:37
- filetypes: >lua
  { "apex", "apexcode" }
- root_markers: >lua
  { "sfdx-project.json" }
<

------------------------------------------------------------------------------
arduino_language_server

https://github.com/arduino/arduino-language-server

Arduino 的语言服务器

可以通过运行以下命令安装 `arduino-language-server`：
>
  go install github.com/arduino/arduino-language-server@latest

还必须安装 `arduino-cli` 工具。请按照[这些安装说明](https://arduino.github.io/arduino-cli/latest/installation/)为您的平台安装。

安装 `arduino-cli` 后，如果您还没有这样做，请按照[这些说明](https://arduino.github.io/arduino-cli/latest/getting-started/#create-a-configuration-file)生成配置文件，并确保您[安装了任何相关的平台库](https://arduino.github.io/arduino-cli/latest/getting-started/#install-the-core-for-your-board)。

语言服务器还需要安装 `clangd`。请按照[这些安装说明](https://clangd.llvm.org/installation)为您的平台安装。

如果您还没有 sketch，请创建一个。
>sh
  $ arduino-cli sketch new test
  $ cd test

您需要一个 `sketch.yaml` 文件，以便语言服务器理解您的项目。它还可以节省您每次编译或上传文件时向 `arduino-cli` 传递选项。您可以使用以下命令生成该文件。

首先收集有关您板子的一些信息。确保您的板子已连接并运行以下命令：
>sh
  $ arduino-cli board list
  Port         Protocol Type              Board Name  FQBN            Core
  /dev/ttyACM0 serial   Serial Port (USB) Arduino Uno arduino:avr:uno arduino:avr

然后生成文件：
>sh
  arduino-cli board attach -p /dev/ttyACM0 -b arduino:avr:uno test.ino

生成的文件应如下所示：
>yaml
  default_fqbn: arduino:avr:uno
  default_port: /dev/ttyACM0

您的文件夹结构应如下所示：
>
  .
  ├── test.ino
  └── sketch.yaml

有关配置选项的进一步说明，请运行 `arduino-language-server --help`。

注意：一个上游错误使得在某些情况下关键字被语言服务器定义为未定义。
参考：https://github.com/arduino/arduino-ide/issues/159

启用语言服务器的代码片段：>lua
  vim.lsp.enable('arduino_language_server')


默认配置：
- capabilities: >lua
  {
    textDocument = {
      semanticTokens = vim.NIL
    },
    workspace = {
      semanticTokens = vim.NIL
    }
  }
- cmd: >lua
  { "arduino-language-server" }
- filetypes: >lua
  { "arduino" }
- root_dir (使用 "gF" 查看): ../lsp/arduino_language_server.lua:74
<

------------------------------------------------------------------------------
asm_lsp

https://github.com/bergercookie/asm-lsp

NASM/GAS/GO Assembly 的语言服务器

`asm-lsp` 可以通过 cargo 安装：
cargo install asm-lsp

启用语言服务器的代码片段：>lua
  vim.lsp.enable('asm_lsp')


默认配置：
- cmd: >lua
  { "asm-lsp" }
- filetypes: >lua
  { "asm", "vmasm" }
- root_markers: >lua
  { ".asm-lsp.toml", ".git" }
<

------------------------------------------------------------------------------
ast_grep

https://ast-grep.github.io/

ast-grep(sg) 是一个快速、多语言的工具，用于大规模代码结构搜索、检查和重写。
ast-grep LSP 仅在其根目录下有 `sgconfig.y[a]ml` 的项目中工作 >sh
  npm install [-g] @ast-grep/cli

启用语言服务器的代码片段：>lua
  vim.lsp.enable('ast_grep')


默认配置：
- cmd: >lua
  { "ast-grep", "lsp" }
- filetypes: >lua
  { "bash", "c", "cpp", "csharp", "css", "elixir", "go", "haskell", "html", "java", "javascript", "javascriptreact", "javascript.jsx", "json", "kotlin", "lua", "nix", "php", "python", "ruby", "rust", "scala", "solidity", "swift", "typescript", "typescriptreact", "typescript.tsx", "yaml" }
- reuse_client (使用 "gF" 查看): ../lsp/ast_grep.lua:12
- root_markers: >lua
  { "sgconfig.yaml", "sgconfig.yml" }
- `workspace_required` : `true`
<

------------------------------------------------------------------------------
astro

https://github.com/withastro/language-tools/tree/main/packages/language-server

`astro-ls` 可以通过 `npm` 安装 >sh
  npm install -g @astrojs/language-server

启用语言服务器的代码片段：>lua
  vim.lsp.enable('astro')


默认配置：
- before_init (使用 "gF" 查看): ../lsp/astro.lua:13
- cmd: >lua
  { "astro-ls", "--stdio" }
- filetypes: >lua
  { "astro" }
- init_options: >lua
  {
    typescript = {}
  }
- root_markers: >lua
  { "package.json", "tsconfig.json", "jsconfig.json", ".git" }
<

------------------------------------------------------------------------------
atlas

https://github.com/ariga/atlas

Atlas 配置和模式文件的语言服务器。

您可能还需要为 *.hcl 文件配置文件类型：
>vim
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

或者
>lua
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

可选地，告诉 treesitter 将 Atlas 文件类型视为 HCL 以获得更好的语法高亮：
>lua
  vim.treesitter.language.register('hcl', 'atlas-config')
  vim.treesitter.language.register('hcl', 'atlas-schema-mysql')
  vim.treesitter.language.register('hcl', 'atlas-schema-postgresql')
  vim.treesitter.language.register('hcl', 'atlas-schema-sqlite')
  vim.treesitter.language.register('hcl', 'atlas-schema-clickhouse')
  vim.treesitter.language.register('hcl', 'atlas-schema-mssql')
  vim.treesitter.language.register('hcl', 'atlas-schema-redshift')
  vim.treesitter.language.register('hcl', 'atlas-test')
  vim.treesitter.language.register('hcl', 'atlas-plan')
  vim.treesitter.language.register('hcl', 'atlas-rule')

启用语言服务器的代码片段：>lua
  vim.lsp.enable('atlas')


默认配置：
- cmd: >lua
  { "atlas", "tool", "lsp", "--stdio" }
- filetypes: >lua
  { "atlas-*" }
- root_markers: >lua
  { "atlas.hcl" }
<

------------------------------------------------------------------------------
atopile

https://atopile.io/

atopile 编程语言的语言服务器。

它随 atopile 编译器一起提供，安装说明见：[安装 atopile](https://docs.atopile.io/atopile/guides/install)

启用语言服务器的代码片段：>lua
  vim.lsp.enable('atopile')


默认配置：
- cmd: >lua
  { "ato", "lsp", "start" }
- filetypes: >lua
  { "ato" }
- root_markers: >lua
  { "ato.yaml", ".ato", ".git" }
<

------------------------------------------------------------------------------
autohotkey_lsp

https://github.com/thqby/vscode-autohotkey2-lsp

AutoHotkey v2.0 LSP 实现

注意：AutoHotkey 仅限 Windows。

启用语言服务器的代码片段：>lua
  vim.lsp.enable('autohotkey_lsp')


默认配置：
- cmd: >lua
  { "autohotkey_lsp", "--stdio" }
- filetypes: >lua
  { "autohotkey" }
- flags: >lua
  {
    debounce_text_changes = 500
  }
- init_options: >lua
  {
    ActionWhenV1IsDetected = "Continue",
    AutoLibInclude = "All",
    CommentTags = "^;;\\s*(?<tag>.+)",
    CompleteFunctionParens = false,
    Diagnostics = {
      ClassStaticMemberCheck = true,
      ParamsCheck = true
    },
    FormatOptions = {
      array_style = "expand",
      brace_style = "One True Brace",
      break_chained_methods = false,
      ignore_comment = false,
      indent_string = "\t",
      max_preserve_newlines = 2,
      object_style = "none",
      preserve_newlines = true,
      space_after_double_colon = true,
      space_before_conditional = true,
      space_in_empty_paren = false,
      space_in_other = true,
      space_in_paren = false,
      wrap_line_length = 0
    },
    InterpreterPath = "",
    SymbolFoldinFromOpenBrace = false,
    locale = "en-us"
  }
- root_markers: >lua
  { "package.json" }
<

------------------------------------------------------------------------------
autotools_ls

https://github.com/Freed-Wu/autotools-language-server

`autotools-language-server` 可以通过 `pip` 安装 >sh
  pip install autotools-language-server

使用 Python 中的 tree sitter 为 autoconf、automake 和 make 提供的语言服务器。

启用语言服务器的代码片段：>lua
  vim.lsp.enable('autotools_ls')


默认配置：
- cmd: >lua
  { "autotools-language-server" }
- filetypes: >lua
  { "config", "automake", "make" }
- root_dir (使用 "gF" 查看): ../lsp/autotools_ls.lua:17
<

------------------------------------------------------------------------------
awk_ls

https://github.com/Beaglefoot/awk-language-server/

`awk-language-server` 可以通过 `npm` 安装 >sh
  npm install -g awk-language-server

启用语言服务器的代码片段：>lua
  vim.lsp.enable('awk_ls')


默认配置：
- cmd: >lua
  { "awk-language-server" }
- filetypes: >lua
  { "awk" }
<

------------------------------------------------------------------------------
azure_pipelines_ls

https://github.com/microsoft/azure-pipelines-language-server

Azure Pipelines 语言服务器。

`azure-pipelines-ls` 可以通过 `npm` 安装：
>sh
  npm install -g azure-pipelines-language-server

默认情况下，`azure-pipelines-ls` 仅适用于名为 `azure-pipelines.yml` 的文件，这可以通过提供额外的设置来更改，如下所示 >lua
  vim.lsp.config('azure_pipelines_ls', {
    ... -- 其他配置
    settings = {
        yaml = {
            schemas = {
                ["https://raw.githubusercontent.com/microsoft/azure-pipelines-vscode/master/service-schema.json"] = {
                    "/azure-pipeline*.y*l",
                    "/*.azure*",
                    "Azure-Pipelines/**/*.y*l",
                    "Pipelines/*.y*l",
                },
            },
        },
    },
  })
Azure Pipelines LSP 是 `yaml-language-server` 的一个分支，因此可以传递与 `yaml-language-server` 相同的设置给它。

启用语言服务器的代码片段：>lua
  vim.lsp.enable('azure_pipelines_ls')


默认配置：
- cmd: >lua
  { "azure-pipelines-language-server", "--stdio" }
- filetypes: >lua
  { "yaml" }
- root_markers: >lua
  { "azure-pipelines.yml" }
- settings: >lua
  {}
<

------------------------------------------------------------------------------
bacon_ls

https://github.com/crisidev/bacon-ls

[bacon](https://dystroy.org/bacon/) 的语言服务器协议包装器。
它为使用 Bacon 导出位置文件的 Rust 工作区提供 textDocument/diagnostic 和 workspace/diagnostic 功能。

它要求系统上使用 [mason.nvim](https://github.com/williamboman/mason.nvim) 或手动安装 `bacon` 和 `bacon-ls`
>sh
  $ cargo install --locked bacon bacon-ls

可以使用 `init_options` 字典更改设置：util
>lua
  init_options = {
      -- Bacon 导出文件名 (默认: .bacon-locations)。
      locationsFile = ".bacon-locations",
      -- 尝试在每次文件保存时更新诊断 (默认: true)。
      updateOnSave = true,
      -- 保存后等待多少毫秒再更新诊断 (默认: 1000)。
      updateOnSaveWaitMillis = 1000,
      -- 尝试在每次文件更改时更新诊断 (默认: true)。
      updateOnChange = true,
      -- 尝试验证 bacon 首选项是否正确设置以与 bacon-ls 配合工作 (默认: true)。
      validateBaconPreferences = true,
      -- 如果未找到 bacon 首选项文件，则创建一个新的首选项文件，其中包含 bacon-ls 作业定义 (默认: true)。
      createBaconPreferencesFile = true,
      -- 在后台为 bacon-ls 作业运行 bacon (默认: true)
      runBaconInBackground = true,
      -- 传递给在后台运行的 bacon 的命令行参数 (默认 "--headless -j bacon-ls")
      runBaconInBackgroundCommandArguments = "--headless -j bacon-ls",
      -- 在后台诊断检查之间等待多少毫秒以同步所有打开的文件 (默认: 2000)。
      synchronizeAllOpenFilesWaitMillis = 2000,
  }

启用语言服务器的代码片段：>lua
  vim.lsp.enable('bacon_ls')


默认配置：
- cmd: >lua
  { "bacon-ls" }
- filetypes: >lua
  { "rust" }
- init_options: >lua
  {}
- root_markers: >lua
  { ".bacon-locations", "Cargo.toml" }
<

------------------------------------------------------------------------------
ballerina

Ballerina 语言服务器

Ballerina 语言的 CLI 工具自带其语言服务器实现。
必须在系统 PATH 中安装并可用 `bal` 命令行工具。

启用语言服务器的代码片段：>lua
  vim.lsp.enable('ballerina')


默认配置：
- cmd: >lua
  { "bal", "start-language-server" }
- filetypes: >lua
  { "ballerina" }
- root_markers: >lua
  { "Ballerina.toml" }
<

------------------------------------------------------------------------------
basedpyright

https://detachhead.github.io/basedpyright

`basedpyright`，一个 Python 的静态类型检查器和语言服务器

启用语言服务器的代码片段：>lua
  vim.lsp.enable('basedpyright')


默认配置：
- cmd: >lua
  { "basedpyright-langserver", "--stdio" }
- filetypes: >lua
  { "python" }
- on_attach (使用 "gF" 查看): ../lsp/basedpyright.lua:24
- root_markers: >lua
  { "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", "Pipfile", "pyrightconfig.json", ".git" }
- settings: >lua
  {
    basedpyright = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "openFilesOnly",
        useLibraryCodeForTypes = true
      }
    }
  }
<

------------------------------------------------------------------------------
bashls

https://github.com/bash-lsp/bash-language-server

`bash-language-server` 可以通过 `npm` 安装 >sh
  npm i -g bash-language-server

使用 TypeScript 和 tree sitter 编写的 Bash 语言服务器。

启用语言服务器的代码片段：>lua
  vim.lsp.enable('bashls')


默认配置：
- cmd: >lua
  { "bash-language-server", "start" }
- filetypes: >lua
  { "bash", "sh" }
- root_markers: >lua
  { ".git" }
- settings: >lua
  {
    bashIde = {
      globPattern = "*@(.sh|.inc|.bash|.command)"
    }
  }
<

------------------------------------------------------------------------------
basics_ls

https://github.com/antonk52/basics-language-server/

缓冲区、路径和代码片段补全
>sh
  npm install -g basics-language-server

启用语言服务器的代码片段：>lua
  vim.lsp.enable('basics_ls')


默认配置：
- cmd: >lua
  { "basics-language-server" }
- settings: >lua
  {
    buffer = {
      enable = true,
      minCompletionLength = 4
    },
    path = {
      enable = true
    },
    snippet = {
      enable = false,
      sources = {}
    }
  }
<

------------------------------------------------------------------------------
bazelrc_lsp

https://github.com/salesforce-misc/bazelrc-lsp

`bazelrc-lsp` 是 `.bazelrc` 配置文件的 LSP。

`.bazelrc` 文件类型不会自动检测，您可以手动注册（见下文）或覆盖 filetypes：
>lua
  vim.filetype.add {
    pattern = {
      ['.*.bazelrc'] = 'bazelrc',
    },
  }

启用语言服务器的代码片段：>lua
  vim.lsp.enable('bazelrc_lsp')


默认配置：
- cmd: >lua
  { "bazelrc-lsp", "lsp" }
- filetypes: >lua
  { "bazelrc" }
- root_markers: >lua
  { "WORKSPACE", "WORKSPACE.bazel", "MODULE.bazel" }
<

------------------------------------------------------------------------------
beancount

https://github.com/polarmutex/beancount-language-server#installation

配置选项请参阅 https://github.com/polarmutex/beancount-language-server#configuration

启用语言服务器的代码片段：>lua
  vim.lsp.enable('beancount')


默认配置：
- cmd: >lua
  { "beancount-language-server", "--stdio" }
- filetypes: >lua
  { "beancount", "bean" }
- init_options: >lua
  {}
- root_markers: >lua
  { ".git" }
<

------------------------------------------------------------------------------
bicep

https://github.com/azure/bicep
Bicep 语言服务器

可以通过从 [Bicep GitHub 发布版](https://github.com/Azure/bicep/releases) 下载并解压 bicep-langserver.zip 来安装 Bicep 语言服务器。

Bicep 语言服务器需要安装 [dotnet-sdk](https://dotnet.microsoft.com/download)。

Neovim 没有内置对 bicep 文件类型的支持，而这是 lspconfig 自动启动语言服务器所必需的。

可以通过自动命令添加文件类型检测 >lua
  vim.cmd [[ autocmd BufNewFile,BufRead *.bicep set filetype=bicep ]]

**默认情况下，bicep 语言服务器没有设置 `cmd`。** 这是因为 nvim-lspconfig 不对您的路径做任何假设。您必须在 init.vim 或 init.lua 中添加以下内容，将 `cmd` 设置为解压后的运行脚本或二进制文件的绝对路径（不扩展 $HOME 和 ~）。
>lua
  local bicep_lsp_bin = "/path/to/bicep-langserver/Bicep.LangServer.dll"
  vim.lsp.config('bicep', {
      cmd = { "dotnet", bicep_lsp_bin };
      ...
  })

要下载最新版本并放置到 /usr/local/bin/bicep-langserver >bash
  (cd $(mktemp -d) \
      && curl -fLO https://github.com/Azure/bicep/releases/latest/download/bicep-langserver.zip \
      && rm -rf /usr/local/bin/bicep-langserver \
      && unzip -d /usr/local/bin/bicep-langserver bicep-langserver.zip)

启用语言服务器的代码片段：>lua
  vim.lsp.enable('bicep')


默认配置：
- filetypes: >lua
  { "bicep", "bicep-params" }
- init_options: >lua
  {}
- root_markers: >lua
  { ".git" }
<

------------------------------------------------------------------------------
biome

https://biomejs.dev

Web 工具链。[Rome 的继任者](https://biomejs.dev/blog/annoucing-biome)。
>sh
  npm install [-g] @biomejs/biome

### Monorepo 支持

`biome` 默认支持 monorepos。它将自动找到与您正在处理的包对应的 `biome.json`，如[文档](https://biomejs.dev/guides/big-projects/#monorepo)中所述。这无需生成多个 `biome` 实例即可工作，节省内存。

启用语言服务器的代码片段：>lua
  vim.lsp.enable('biome')


默认配置：
- cmd (使用 "gF" 查看): ../lsp/biome.lua:17
- filetypes: >lua
  { "astro", "css", "graphql", "html", "javascript", "javascriptreact", "json", "jsonc", "svelte", "typescript", "typescript.tsx", "typescriptreact", "vue" }
- root_dir (使用 "gF" 查看): ../lsp/biome.lua:17
- `workspace_required` : `true`
<

------------------------------------------------------------------------------
bitbake_language_server

https://github.com/Freed-Wu/bitbake-language-server

`bitbake-language-server` 可以通过 `pip` 安装 >sh
  pip install bitbake-language-server

Bitbake 的语言服务器。

启用语言服务器的代码片段：>lua
  vim.lsp.enable('bitbake_language_server')


默认配置：
- cmd: >lua
  { "bitbake-language-server" }
- filetypes: >lua
  { "bitbake" }
- root_markers: >lua
  { ".git" }
<

------------------------------------------------------------------------------
blueprint_ls

https://gitlab.gnome.org/jwestman/blueprint-compiler

`blueprint-compiler` 可以通过系统包管理器安装。

Blueprint 标记语言的语言服务器，用 Python 编写，是 blueprint-compiler 的一部分。

启用语言服务器的代码片段：>lua
  vim.lsp.enable('blueprint_ls')


默认配置：
- cmd: >lua
  { "blueprint-compiler", "lsp" }
- cmd_env: >lua
  {
    GLOB_PATTERN = "*@(.blp)"
  }
- filetypes: >lua
  { "blueprint" }
- root_markers: >lua
  { ".git" }
<

------------------------------------------------------------------------------
bqls

https://github.com/kitagry/bqls

`bqls` BigQuery 语言服务器可以通过运行以下命令安装：
>sh
  $ go install github.com/kitagry/bqls@latest

启用语言服务器的代码片段：>lua
  vim.lsp.enable('bqls')


默认配置：
- cmd: >lua
  { "bqls" }
- filetypes: >lua
  { "sql" }
- root_markers: >lua
  { ".git" }
- settings: >lua
  {}
<

------------------------------------------------------------------------------
bright_script

https://github.com/RokuCommunity/brighterscript

`brightscript` 可以通过 `npm` 安装 >sh
  npm install -g brighterscript

启用语言服务器的代码片段：>lua