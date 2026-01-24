return {
  'seblj/roslyn.nvim',
  ---@module 'roslyn.config'
  ---@type RoslynNvimConfig
  opts = {
    cmd = {
      'dotnet',
      '/home/marco/Downloads/Microsoft.CodeAnalysis.LanguageServer.linux-x64.5.3.0-2-test.25610.8/content/LanguageServer/linux-x64/Microsoft.CodeAnalysis.LanguageServer.dll',
      '--logLevel', -- this property is required by the server
      'Information',
      '--extensionLogDirectory', -- this property is required by the server
      '/tmp/roslyn_ls/logs',
      '--stdio',
    },
    filetypes = { 'cs' },
    settings = {
      ['csharp|background_analysis'] = {
        dotnet_analyzer_diagnostics_scope = 'fullSolution',
        dotnet_compiler_diagnostics_scope = 'fullSolution',
      },
      ['csharp|code_lens'] = {
        dotnet_enable_references_code_lens = true,
      },
      ['csharp|completion'] = {
        dotnet_provide_regex_completions = true,
        dotnet_show_completion_items_from_unimported_namespaces = true,
        dotnet_show_name_completion_suggestions = true,
      },
      ['csharp|inlay_hints'] = {
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
      ['csharp|symbol_search'] = {
        dotnet_search_reference_assemblies = true,
      },
    },
  },
}
