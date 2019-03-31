class BookDecorator < ApplicationDecorator
  delegate_all

  def number(page)
    (page.to_i - 1) * 10
  end

  def stars
    h.content_tag(:div, nil) do
      round_rates_average.times do
        h.concat(star)
      end
      (10 - round_rates_average).times do
        h.concat(empty_star)
      end
    end
  end

  private

  def star
    h.content_tag(:span, nil, class: 'glyphicon glyphicon-star')
  end

  def empty_star
    h.content_tag(:span, nil, class: 'glyphicon glyphicon-star-empty')
  end

  def rates_average
    object.rates.average(:number) || NullObjects::RatesAverage.new
  end

  def round_rates_average
    rates_average.round
  end
end
