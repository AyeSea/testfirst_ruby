def ftoc(temp_far)
	temp_cel = (temp_far - 32) * (5.0/9.0)
end

def ctof(temp_cel)
	temp_far = (temp_cel * (9.0/5.0)) + 32
end