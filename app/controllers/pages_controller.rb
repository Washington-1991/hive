class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home]

  def home
  end

  def dashboard
  end

  def profile
  end

  def aboutus
  end

  def progress
    def index
      @chart_data = {
        labels: %w[January February March April May June July],
        datasets: [{
          label: 'My First dataset',
          backgroundColor: 'transparent',
          borderColor: '#3B82F6',
          data: [37, 83, 78, 54, 12, 5, 99]
        }]
      }

      @chart_options = {
        scales: {
          yAxes: [{
            ticks: {
              beginAtZero: true
            }
          }]
        }
      }
    end
  end

end
