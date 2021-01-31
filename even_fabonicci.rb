# https://projecteuler.net/problem=2
class ProjectEulerTwo
    def initialize(max)
        @num_1 = 0
        @i = 1
        @sum = 0
        @num_2 = 1
        @max = max
    end

    def even_fibonacci
        while @i <= @max 

            @i = @num_1 + @num_2

            @sum += @i if @i % 2 == 0

            @num_1 = @num_2

            @num_2 = @i
        end
        @sum
    end
end

result = ProjectEulerTwo.new(4_000_000)
p result.even_fibonacci