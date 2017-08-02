module PortfoliosHelper
   def image_gen(height, width)
     "http://via.placeholder.com/#{height}x#{width}"
   end
   
   def portfolio_img img, type
     if img.model.mainImage? || img.model.thumbImage?
       img
       elsif type == 'thumb'
        image_gen('350', '200')
       elsif type == 'main'
        image_gen('650', '400')
     end
   end
end

