local lspconfig = require("lspconfig")

lsps = {
  "clojure_lsp", -- brew install clojure-lsp/brew/clojure-lsp-native
}

for _, v in pairs(lsps) do
  lspconfig[v].setup({})
end
