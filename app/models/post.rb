class Post < ApplicationRecord
    validates :title, :image_url, :content, presence: true
    before_save :remove_word

    def remove_word
        self.content = self.content.remove('Hola')
        #self.content = self.content.split.reduce([]) {|memo, value1| memo.push (value) if value != 'Hola'}.join(" ")
        #self.content = self.content.gsub("Hola", "¡No esta permitida esa palabra!")
    end
end
