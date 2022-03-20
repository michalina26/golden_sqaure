## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

_Include the name of the method, its parameters, return value, and side effects._

``` ruby
class TrackList
  def initialize
    @tracks = []    
  end

  def print_tracks
  #prints todo list
  end

  def add_track(track)
  #adds to todo list
  end

 


# * 
# * 
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

``` ruby
# 1 

tracks = TrackList.new

# => []

# 2

print_tracks

# => prints out the track list

# 3

add_track


# => adds a track to the track list

# 4

# => 2

# 5

# => 2

```
_Encode each example as a test. You can add to the above list as you go._ 

## 4. Implement the Behaviour 

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._