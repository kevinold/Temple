module TempleCalendar
require 'open-uri'
require 'hpricot'

    def self.get_cal
        url = 'http://www.google.com/calendar/feeds/m2mhi9aoueuujgalci739t8iqc%40group.calendar.google.com/private-b6e1fd08128e7120611022cad150e6d1/basic'

        xml = Hpricot.XML(open(url).read)
        xml.search('entry/title').each do |e|
            puts e.inner_html
        end
    end

end
