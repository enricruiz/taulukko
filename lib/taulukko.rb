class Taulukko
    attr_accessor :headings
    attr_accessor :spacing

    def initialize
        @rows = []
        @widths = []
        @spacing = 2
    end

    def add array
        update_widths array
        @rows << array
    end
    alias :<< :add
    
    def render
        buffer = ''

        unless @headings.nil?
            update_widths @headings
            buffer += render_row @headings
            buffer += "\n"
            buffer += render_separator
            buffer += "\n" unless @rows.empty?
        end

        @rows.each_with_index do |row, index|
            buffer += render_row row
            buffer += "\n" unless (index == @rows.size - 1)
        end

        buffer
    end
    alias :to_s :render

    def render_row row
        buffer = ''

        row.each_with_index do |cell, index|
            if index != row.size - 1
                buffer += cell.to_s.ljust(@widths[index] + @spacing)
            elsif
                buffer += cell.to_s
            end
        end

        buffer
    end

    def render_separator
        buffer = ''
        
        @widths.each_with_index do |size, index|
            if index != @widths.size - 1
                buffer += "".ljust(size, '-').ljust(size + @spacing)
            elsif
                buffer += "".ljust(size, '-') 
            end
        end

        buffer
    end

    def update_widths array
        array.each_with_index do |cell, index|
            size = cell.to_s.size

            if @widths[index].nil?
                @widths[index] = size
            elsif @widths[index] < size
                @widths[index] = size
            end
        end
    end
end

