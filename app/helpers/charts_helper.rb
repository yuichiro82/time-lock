# frozen_string_literal: true

module ChartsHelper
  def chart
    data = @chart
    library_options = {
      scales: {
        xAxes: [{
          gridLines: { drawOnChartArea: true }
        }],
        yAxes: [{
          ticks: { reverse: true }
        }]
      }
    }
    column_chart data,
               xtitle: 'Date', ytitle: 'act_time',
               min: 0,
               discrete: true,
               library: library_options
  end
end
