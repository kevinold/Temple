require 'open-uri'
require 'hpricot'

class Gcal
    def get
        url = 'http://www.google.com/calendar/feeds/m2mhi9aoueuujgalci739t8iqc%40group.calendar.google.com/private-b6e1fd08128e7120611022cad150e6d1/basic'

        recurring = /recurring/i
        dat = /When: (.*)(?=&)/i
        events = []

        xml = Hpricot.XML(open(url).read)
        xml.search('entry').each do |e|
            title = e.search('/title').inner_html
            summary = e.search('/summary').inner_html
            next if summary =~ recurring
            
            #puts e.search('/summary').inner_html
            
            summary =~ dat
            date_and_time = $1
            puts title +  " : " + date_and_time
            #data = Regexp.last_match
            #puts title + " : " + data[0]

        end
    end

end
