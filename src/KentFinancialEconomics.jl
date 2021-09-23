module KentFinancialEconomics

using HTTP
using CSV
using JSON
using DataFrames
using TimeSeries
using InfoZIP

export fundamentals, events, metadata, stockprices

include("data_sources/quandl.jl")

end
