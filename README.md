# YordanPhysics2D

A Ruby library for 2D vector operations and physics calculations.

## Overview

**Vector2** is a 2D vector class that provides comprehensive vector arithmetic operations. It supports both vector-to-vector operations and scalar operations, with both immutable (returning new instances) and mutable (in-place modification) methods.

## Features

- **Arithmetic Operations**: Addition, subtraction, multiplication, and division
- **Scalar Operations**: Apply scalar values to vector components
- **Collection Support**: Apply vector operations to multiple vectors at once
- **Immutable & Mutable Methods**: Choose between creating new vectors or modifying in-place

## Usage

### Basic Vector Operations

```ruby
require './PhysicsTypes/vector2'

v1 = Vector2.new(3, 4)
v2 = Vector2.new(1, 2)

# Immutable operations (return new Vector2)
sum = v1 + v2          # Vector2(4, 6)
diff = v1 - v2         # Vector2(2, 2)
product = v1 * v2      # Vector2(3, 8)
quotient = v1 / v2     # Vector2(3, 2)

puts v1                 # Vector2(3, 4)
puts v1.to_s            # Vector2(3, 4)
```

### Mutable Operations

```ruby
v = Vector2.new(5, 10)

# Modify vector in-place
v.add_with_scalar(2)           # v is now (7, 12)
v.multiply_with_scalar(2)      # v is now (14, 24)
v.subtract_with_scalar(4)      # v is now (10, 20)
v.divide_with_scalar(2)        # v is now (5, 10)
```

### Vector Collection Operations

```ruby
v = Vector2.new(10, 10)
vectors = [Vector2.new(1, 1), Vector2.new(2, 2)]

v.add(vectors)                 # Add all vectors in collection to v
v.subtract(vectors)            # Subtract all vectors from v
v.multiply(vectors)            # Multiply v by all vectors
v.divide(vectors)              # Divide v by all vectors
```

## Installation

1. Clone the repository
2. Include the Vector2 class in your Ruby project

## License

MIT

