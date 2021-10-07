# KentFinancialEconomics

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://alfredjmduncan.github.io/KentFinancialEconomics.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://alfredjmduncan.github.io/KentFinancialEconomics.jl/dev)
[![Build Status](https://travis-ci.com/alfredjmduncan/KentFinancialEconomics.jl.svg?branch=master)](https://travis-ci.com/alfredjmduncan/KentFinancialEconomics.jl)
[![Coverage](https://codecov.io/gh/alfredjmduncan/KentFinancialEconomics.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/alfredjmduncan/KentFinancialEconomics.jl)


## Example usage

```julia
api_key = "-31swyRz8v4SoNL_zyYc"
events(api_key)

```

where `api_key` is your own api key issued by [Nasdaq data link](https://data.nasdaq.com/),
with a subscription to the [Sharadar Core US Equities Bundle](https://data.nasdaq.com/databases/SFA/data).

This code will return something like the following:

```julia
3442732×3 DataFrame
     Row │ ticker  date        eventcodes
         │ String  Date        SubString…
─────────┼────────────────────────────────
       1 │ AAON    2021-10-04  52
       2 │ AAON    2021-10-04  91
       3 │ ACC     2021-10-04  71
       4 │ ACC     2021-10-04  91
       5 │ ACNB    2021-10-04  81
```

## Available queries

### Stock prices

The first line below returns stock price data for US listed stocks over the past year.
The second call returns stock price data for [Yum! Brands](https://www.yum.com/wps/portal/yumbrands/Yumbrands) (KFC, Pizza Hut, Taco Bell) stocks since the 1 July 2006.
```julia
stockprices(api_key)

using Dates
stockprices(api_key;ticker="YUM",start_date=Dates.Date(2006,07,01))
```

Avoid calling `stockprices(api_key)` unless you have a lot of RAM.

### Fund prices

Similar to stock prices, but returns price index information for funds.
The second call below returns index data for the S&P500 from 15 March 2001.

```julia
fundprices(api_key)

using Dates
fundprices(api_key;ticker="^GSPC",start_date=Dates.Date(2001,03,15))
```

### Fundamentals

Returns financial statement information for US listed firms.
```julia
fundamentals(api_key)
```

### Events
Returns [SEC Form 8-K events](https://www.sec.gov/fast-answers/answersform8khtm.html).
```julia
events(api_key)
```

### Metadata
Returns listing information, company full name, industry and other information for
US listed companies.
```julia
metadata(api_key)
```
