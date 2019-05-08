class NameIndex
  def self.create_index(names)
    kana_hash = {"ア" => [], "カ" => [], "サ" => [], "タ" => [], "ナ" => [], "ハ" => [], 
      "マ" => [], "ヤ"  => [], "ラ" => [], "ワ" => []}
    names.each do |name|
      case name[0]
      when /[ア-オ]/
        kana_hash["ア"] << name
      when /[カ-コ]/
        kana_hash["カ"] << name
      when /[サ-ソ]/
        kana_hash["サ"] << name
      when /[タ-ト]/
        kana_hash["タ"] << name
      when /[ナ-ノ]/
        kana_hash["ナ"] << name
      when /[ハ-ホ]/
        kana_hash["ハ"] << name
      when /[マ-モ]/
        kana_hash["マ"] << name
      when /[ヤ-ヨ]/
        kana_hash["ヤ"] << name
      when /[ラ-ロ]/
        kana_hash["ラ"] << name
      when /[ワ-ン]/
        kana_hash["ワ"] << name
      end
    end
    kana_hash.select{|k, v| v.size > 0 }.each_value(&:sort!).to_a
  end
end