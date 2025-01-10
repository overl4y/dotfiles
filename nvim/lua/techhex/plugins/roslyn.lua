return {
    "seblj/roslyn.nvim",
    config = function ()
        require('roslyn').setup({
            opts = {
                args = {
                    '--logLevel=Information',
                    '--extensionLogDirectory=' .. vim.fs.dirname(vim.lsp.get_log_path()),
                    '--razorSourceGenerator=' .. vim.fs.joinpath(
                    vim.fn.stdpath 'data' --[[@as string]],
                    'mason',
                    'packages',
                    'roslyn',
                    'libexec',
                    'Microsoft.CodeAnalysis.Razor.Compiler.dll'
                    ),
                    '--razorDesignTimePath=' .. vim.fs.joinpath(
                    vim.fn.stdpath 'data' --[[@as string]],
                    'mason',
                    'packages',
                    'rzls',
                    'libexec',
                    'Targets',
                    'Microsoft.NET.Sdk.Razor.DesignTime.targets'
                    ),
                },
                config = {
                    settings = {
                        ["csharp|inlay_hints"] = {
                            csharp_enable_inlay_hints_for_implicit_object_creation = true,
                            csharp_enable_inlay_hints_for_implicit_variable_types = true,
                            csharp_enable_inlay_hints_for_lambda_parameter_types = true,
                            csharp_enable_inlay_hints_for_types = true,
                            dotnet_enable_inlay_hints_for_indexer_parameters = true,
                            dotnet_enable_inlay_hints_for_literal_parameters = true,
                            dotnet_enable_inlay_hints_for_object_creation_parameters = true,
                            dotnet_enable_inlay_hints_for_other_parameters = true,
                            dotnet_enable_inlay_hints_for_parameters = true,
                            dotnet_suppress_inlay_hints_for_parameters_that_differ_only_by_suffix = true,
                            dotnet_suppress_inlay_hints_for_parameters_that_match_argument_name = true,
                            dotnet_suppress_inlay_hints_for_parameters_that_match_method_intent = true,
                        },
                        ["csharp|code_lens"] = {
                            dotnet_enable_references_code_lens = true,
                        },
                    },
                }
            }
        })
    end
}