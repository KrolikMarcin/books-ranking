class BookDecorator < ApplicationDecorator
  delegate_all

  def number(page)
    (page.to_i - 1) * 10
  end

  def stars
    h.content_tag(:div, nil) do
      round_like_average.times do
        h.concat(star)
      end
      (10 - round_like_average).times do
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

  def like_average
    object.rates.average(:number) || NullObjects::LikeAverage.new
  end

  def round_like_average
    like_average.round
  end
end
