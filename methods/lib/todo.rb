def todo_list(chore)
  fail "This string is empty." if chore.empty?
  if chore.include? "#TODO"
    return true
  else
    return false
  end
end

