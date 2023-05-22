from abc import ABC, abstractmethod

class House(ABC):
    def __init__(self):
        self.foundation = None
        self.walls = None
        self.roof = None
        
   def __str__(self):
        return f"House with {self.foundation}, {self.walls} walls and {self.roof} roof"
        
class HouseBuilder:
    def __init__(self):
        self.house = House()

    def build_foundation(self, material):
        self.house.foundation = material

    def build_walls(self, material):
        self.house.walls = material

    def build_roof(self, material):
        self.house.roof = material

    def get_house(self):
        return self.house

builder = HouseBuilder()
builder.build_foundation("Concrete")
builder.build_walls("Brick")
builder.build_roof("titles")
house = builder.get_house()
print(house)
