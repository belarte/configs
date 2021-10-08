local lspconfig = require("lspconfig")

lsps = {
  "clojure_lsp", -- brew install clojure-lsp/brew/clojure-lsp-native
}


for _, lsp in pairs(lsps) do
  conf = {}

  if type(lsp) == "table" then
    for custom_lsp, custom_conf in pairs(lsp) do
      lsp = custom_lsp
      conf = custom_conf
    end
  end

  lspconfig[lsp].setup(conf)
end
