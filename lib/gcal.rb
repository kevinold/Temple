require 'open-uri'
require 'hpricot'

class Gcal
    def get
        url = 'http://www.google.com/calendar/feeds/m2mhi9aoueuujgalci739t8iqc%40group.calendar.google.com/private-b6e1fd08128e7120611022cad150e6d1/basic'

        xml = Hpricot.XML(open(url).read)
        xml.search('entry').each do |e|
            puts e.search('/title').inner_html
            puts e.search('/summary').inner_html
        end
    end

end
