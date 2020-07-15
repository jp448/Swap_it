class Tag < ApplicationRecord
  has_and_belongs_to_many :items

  def self.formatLink(selected_tags, tag)
    if selected_tags.include? tag
      selected_tags.delete(tag)
    else
      selected_tags.append(tag)
    end
    selected_tags.join(',')
  end
end
