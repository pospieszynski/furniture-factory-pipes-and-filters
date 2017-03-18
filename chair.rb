class Chair
	attr_accessor :cutted, :feet_assembled, :backrest_assembled, :stabilizer_assembled, :packed, :id
	
	@@last_id = 0;
	
	def initialize
		@id = @@last_id + 1
		@@last_id = @id
		@cutted = false
		@feet_assembled = false
		@backrest_assembled = false
		@stabilizer_assembled = false
		@packed = false
	end
end
