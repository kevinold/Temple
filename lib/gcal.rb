require 'open-uri'
require 'nokogiri'
require 'pp'

class Gcal
    def get
        events = Array.new
        reader = Nokogiri::XML(open("http://www.google.com/calendar/feeds/m2mhi9aoueuujgalci739t8iqc%40group.calendar.google.com/private-b6e1fd08128e7120611022cad150e6d1/full?singleevents=true&orderby=starttime&start-min=#{DateTime.now}&start-max=#{DateTime.now + 30}"))

        reader.remove_namespaces!

        reader.xpath("//feed/entry").each do |e|
            title_node = e.at_xpath("./title").text
            when_node = e.at_xpath("./when")

            events.push({:title => title_node,
                         :start => when_node ? when_node.attribute('startTime').text : "No time",
                         :end => when_node ? when_node.attribute('endTime').text : "No time"
                        })
        end
        events
    end

end
