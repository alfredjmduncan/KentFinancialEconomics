using KentFinancialEconomics
using Documenter

DocMeta.setdocmeta!(KentFinancialEconomics, :DocTestSetup, :(using KentFinancialEconomics); recursive=true)

makedocs(;
    modules=[KentFinancialEconomics],
    authors="alfredjmduncan <alfie.j.duncan@gmail.com> and contributors",
    repo="https://github.com/alfredjmduncan/KentFinancialEconomics.jl/blob/{commit}{path}#{line}",
    sitename="KentFinancialEconomics.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://alfredjmduncan.github.io/KentFinancialEconomics.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/alfredjmduncan/KentFinancialEconomics.jl",
)
