# coding: utf-8

if ARGV[0] == "all"
  path = "**/*"
else
  path = ARGV[0] || "*"
end

count = 0
Dir.glob( path ).each do |file|
  open(file) do |f|
    begin
      puts "\e[42m\e[1m  File :【 #{f.to_path} 】 \e[0m"
      hack_line = ""
      f.each do |line|
        line.gsub!(/style=.*position:.*absolute/)    { |word| "\e[31m\e[1m#{word}\e[0m" }
        line.gsub!(/www.paragonzpodrozy.pl/)         { |word| "\e[31m\e[1m#{word}\e[0m" }
        line.gsub!(/best4buyou.in/)                  { |word| "\e[31m\e[1m#{word}\e[0m" }
        line.gsub!(/www.artecitta.it/)               { |word| "\e[31m\e[1m#{word}\e[0m" }
        line.gsub!(%r{ldmFs})                        { |word| "\e[41m\e[1m#{word}\e[0m" }  # @eval の中の一部にあったコード
        line.gsub!(%r{preg_replace.*/.{,2}e})        { |word| "\e[41m\e[1m#{word}\e[0m" }
        line.gsub!(/strrev/)                         { |word| "\e[41m\e[1m#{word}\e[0m" }
        line.gsub!(/ZXZhbC/)                         { |word| "\e[41m\e[1m#{word}\e[0m" }
        if line.match(/\e\[.*?m/)
          hack_line += line + "\n"
        end
      end
      puts hack_line + "\n\n"
    rescue => e
      puts e.message
    end
  end
  count += 1
end
puts "\n\n ファイル数：#{count} 個\n"
