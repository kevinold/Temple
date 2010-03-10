require 'open-uri'
require 'nokogiri'
require 'pp'

class Gcal
    def get
        reader = Nokogiri::XML(open('http://www.google.com/calendar/feeds/m2mhi9aoueuujgalci739t8iqc%40group.calendar.google.com/private-b6e1fd08128e7120611022cad150e6d1/full'))

        reader.remove_namespaces!

        reader.xpath("//feed/entry").each do |e|
            when_node = e.at_xpath("./when")
            if when_node
                puts when_node.attribute('startTime').text
            else
                puts "No time"
            end
        end

    end

end
