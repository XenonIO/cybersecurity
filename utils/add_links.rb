#!/usr/bin/env ruby

def gdpr_links(base)
  f = File.open("#{base}.md")
  body = f.read
  b1 = body.gsub(/Recital (\d+)[\(\)0-9a-z]*/i, "[Recital \\1](https://gdpr-info.eu/recitals/no-\\1/)")
  b = b1.gsub(/Article (\d+)[\(\)0-9a-z]*/i, "[Article \\1](https://gdpr-info.eu/art-\\1-gdpr/)")
  File.open("#{base}-linked.md", "w") { |q| q.write(b) }
end

gdpr_links("PLAN")
gdpr_links("PRACTICES")

